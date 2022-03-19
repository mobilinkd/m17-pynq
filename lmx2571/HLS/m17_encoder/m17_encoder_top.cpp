// Copyright 2022 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "m17_encoder_top.h"
#include "m17_encoder.h"

using namespace mobilinkd::m17;

enum FrameState {
	WaitForFirstBlock = 0,
	SendPreamble,				// now have 40ms
	WaitForSecondBlock,			// 20ms
	MakeLinkSetup,
	SendLinkSetupSyncWord1,
	SendLinkSetupSyncWord2,
	SendLinkSetup,				// now have 60ms
	WaitForBlock1,
	WaitForBlock2,
	MakeFrame,					// now have 100ms slack time
	SendFrameSyncWord1,
	SendFrameSyncWord2,
	SendFrame,					// Go to WaitForBlock1
	SendEOT1,
	SendEOT2,
};

LinkSetupFrame::encoded_call_t to_encoded_call_t(m17_callsign_type const& call)
{
	LinkSetupFrame::encoded_call_t result;
	result.range(47,40) = call[5];
	result.range(39,32) = call[4];
	result.range(31,24) = call[3];
	result.range(23,16) = call[2];
	result.range(15, 8) = call[1];
	result.range( 7, 0) = call[0];
	return result;
}

void m17_encoder_top(
		input_type& input,
		output_type& output,
		m17_callsign_type& DST,
		m17_callsign_type& SRC,
		m17_frameType_type& frame_type,
		m17_frameSubtype_type& frame_subtype,
		m17_encryptionType_type& encryption_type,
		m17_encryptionSubtype_type& encryption_subtype,
		m17_can_type& can)
{
#pragma HLS INTERFACE axis depth=16 port=input
#pragma HLS INTERFACE axis depth=144 port=output
#pragma HLS INTERFACE s_axilite port=DST bundle=m17
#pragma HLS INTERFACE s_axilite port=SRC bundle=m17
#pragma HLS INTERFACE s_axilite port=frame_type bundle=m17
#pragma HLS INTERFACE s_axilite port=frame_subtype bundle=m17
#pragma HLS INTERFACE s_axilite port=encryption_type bundle=m17
#pragma HLS INTERFACE s_axilite port=encryption_subtype bundle=m17
#pragma HLS INTERFACE s_axilite port=can bundle=m17
#pragma HLS INTERFACE s_axilite port=return

	using namespace mobilinkd::m17;

	using pi = PolynomialInterleaver;

	static LinkSetupFrameType lsf_type;
	static EncodedLICHSegments lich;
	static StreamFrameFactory factory;
	static uint16_t frame_number;
	static ap_uint<3> lich_number;
	static uint64_t block_1;
	static uint64_t block_2;
	static uint8_t byte_counter = 0;
	static int bit_counter = 0;
	static bool eot;
	static ap_uint<368> frame_bits;

	odata_type odata;

	static FrameState state = FrameState::WaitForFirstBlock;

#pragma HLS DATAFLOW

	main_state_machine: switch (state) {
	case FrameState::WaitForFirstBlock:
	{
		idata_type idata;
		if (input.empty()) break;
		input >> idata;
		if (idata.last) {
			byte_counter = 0;
		} else {
			block_1 <<= 8;
			block_1 |= idata.data;
			if (byte_counter == 7) {
				state = FrameState::SendPreamble;
				byte_counter = 0;
				eot = false;
			} else {
				byte_counter += 1;
			}
		}
		break;
	}
	case FrameState::SendPreamble:
	{
		if (byte_counter == 48) {
			state = FrameState::WaitForSecondBlock;
			byte_counter = 0;
		} else {
			odata.data = 0x77;
			odata.last = 0;
			odata.keep = 1;
			odata.strb = 1;
			output << odata;
			byte_counter += 1;
		}
		break;
	}

	case FrameState::WaitForSecondBlock:
	{
		idata_type idata;
		if (input.empty()) break;
		input >> idata;
		if (idata.last) {
			byte_counter = 0;
			state = FrameState::MakeLinkSetup;
			eot = true;
		}
		block_2 <<= 8;
		block_2 |= idata.data;
		if (byte_counter == 7) {
			state = FrameState::MakeLinkSetup;
			byte_counter = 0;
		} else {
			byte_counter += 1;
		}
		break;
	}
	case FrameState::MakeLinkSetup:
	{
		// Ignore encryption for now.
		if (frame_type) {
			lsf_type.update(StreamSubtype(int(frame_subtype)), can);
		} else {
			lsf_type.update(PacketSubtype(int(frame_subtype)), can);
		}
		LinkSetupFrame lsf(to_encoded_call_t(DST), to_encoded_call_t(SRC), lsf_type);
		lich = LICHSegments(lsf);
		lich_number = 0;
		frame_number = 0;
		frame_bits = randomize(pi::interleave(lsf.puncture(lsf.encode())));
		state = FrameState::SendLinkSetupSyncWord1;
		break;
	}
	case FrameState::SendLinkSetupSyncWord1:
	{
		odata.data = 0x55;
		odata.last = 0;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		state = FrameState::SendLinkSetupSyncWord2;
		break;
	}
	case FrameState::SendLinkSetupSyncWord2:
	{
		bit_counter = 368;
		odata.data = 0xF7;
		odata.last = 0;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		state = FrameState::SendLinkSetup;
		break;
	}
	case FrameState::SendLinkSetup:
	{
		odata.data = frame_bits.range(frame_bits.width - 1, frame_bits.width - 8);
		odata.last = 0;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		frame_bits <<= 8;
		bit_counter -= 8;
		if (bit_counter == 0) {
			byte_counter = 0;
			state = FrameState::MakeFrame;
		}
		break;
	}
	case FrameState::WaitForBlock1:
	{
		idata_type idata;
		if (input.empty()) break;
		input >> idata;
		if (idata.keep) {
			block_1 <<= 8;
			block_1 |= idata.data;
		}
		if (idata.last) {
#ifndef __SYNTHESIS__
			std::cout << "tlast (1) at byte_counter = " << int(byte_counter) << std::endl;
			std::cout << block_1 << std::endl;
#endif
			byte_counter = 0;
			eot = true;
			state = FrameState::MakeFrame;
		} else {
			if (byte_counter == 7) {
				state = FrameState::WaitForBlock2;
				byte_counter = 0;
			} else {
				byte_counter += 1;
			}
		}
		break;
	}
	case FrameState::WaitForBlock2:
	{
		idata_type idata;
		if (input.empty()) break;
		input >> idata;
		if (idata.keep) {
			block_2 <<= 8;
			block_2 |= idata.data;
		}
		if (idata.last) {
#ifndef __SYNTHESIS__
			std::cout << "tlast (2) at byte_counter = " << int(byte_counter) << std::endl;
			std::cout << block_2 << std::endl;
#endif
			byte_counter = 0;
			eot = true;
			state = FrameState::MakeFrame;
		} else {
			if (byte_counter == 7) {
				state = FrameState::MakeFrame;
				byte_counter = 0;
			} else {
				byte_counter += 1;
			}
		}
		break;
	}
	case FrameState::MakeFrame:
	{
		if (eot) frame_number |= 0x8000;
		StreamFrame::frame_type frame = factory.get_frame(lich_number, frame_number++, block_1, block_2);
		if (lich_number == 5) {
			lich_number = 0;
		} else {
			lich_number += 1;
		}
		frame_bits = randomize(pi::interleave(frame));
		state = FrameState::SendFrameSyncWord1;
		break;
	}
	case FrameState::SendFrameSyncWord1:
	{
		odata.data = 0xFF;
		odata.last = 0;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		state = FrameState::SendFrameSyncWord2;
		break;
	}
	case FrameState::SendFrameSyncWord2:
	{
		odata.data = 0x5D;
		odata.last = 0;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		state = FrameState::SendFrame;
		bit_counter = 368;
		break;
	}
	case FrameState::SendFrame:
	{
		odata.data = frame_bits.range(frame_bits.width - 1, frame_bits.width - 8);
		odata.last = 0;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		frame_bits <<= 8;
		bit_counter -= 8;
		if (bit_counter == 0) {
			state = eot ? FrameState::SendEOT1 : FrameState::WaitForBlock1;
			block_1 = 0;
			block_2 = 0;
		}
		break;
	}
	case FrameState::SendEOT1:
	{
		odata.data = 0x55;
		odata.last = 0;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		state = FrameState::SendEOT2;
		break;
	}
	case FrameState::SendEOT2:
	{
		odata.data = 0xFD;
		odata.last = 1;
		odata.keep = 1;
		odata.strb = 1;
		output << odata;
		state = FrameState::WaitForFirstBlock;
		eot = false;
		break;
	}
	}
}
