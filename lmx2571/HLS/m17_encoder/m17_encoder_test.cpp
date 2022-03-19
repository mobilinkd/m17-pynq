// Copyright 2022 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "m17_encoder_top.h"
#include "m17_encoder.h"

#include <array>
#include <cstdlib>
#include <iostream>
#include <vector>

using pi = mobilinkd::m17::PolynomialInterleaver;

int test_crc()
{
	using namespace mobilinkd::m17;
	{
		ap_uint<8> A = 'A';
		auto value = compute_crc(A);
		if (value != 0x206E) {
			std::cout << "CRC value incorrect: "
				<< std::hex << std::setw(4) << std::setfill('0')
				<< value << "! = 0x206E" << std::endl;
			return EXIT_FAILURE;
		}
	}
	{
		ap_uint<72> A;
		A.range(71,64) = '1';
		A.range(63,56) = '2';
		A.range(55,48) = '3';
		A.range(47,40) = '4';
		A.range(39,32) = '5';
		A.range(31,24) = '6';
		A.range(23,16) = '7';
		A.range(15,8) = '8';
		A.range(7,0) = '9';

		auto value = compute_crc(A);
		if (value != 0x772B) {
			std::cout << "CRC value incorrect: "
				<< std::hex << std::setw(4) << std::setfill('0')
				<< value << "! = 0x772B" << std::endl;
			return EXIT_FAILURE;
		}
	}
	{
		ap_uint<8 * 256> A;
		ap_uint<8> c = 0;
		for (int i = 8 * 256; i != 0; i -= 8) A.range(i-1, i-8) = c++;
		auto value = compute_crc(A);
		if (value != 0x1C31) {
			std::cout << "CRC value incorrect: "
				<< std::hex << std::setw(4) << std::setfill('0')
				<< value << "! = 0x1C31" << std::endl;
			return EXIT_FAILURE;
		}
	}

	return EXIT_SUCCESS;
}

int test_lsf_type()
{
	using namespace mobilinkd::m17;

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 10};
	if (lsf_type_1.bits != 0x0505) {
		std::cout << "Stream LSF type value incorrect: " << std::hex << std::setw(4) << std::setfill('0') << lsf_type_1.bits << "! = 0x0505" << std::endl;
		return EXIT_FAILURE;
	}

	LinkSetupFrameType lsf_type_2 = {PacketSubtype::RAW, 10};
	if (lsf_type_2.bits != 0x0502) {
		std::cout << "Packet LSF type value incorrect: " << std::hex << std::setw(4) << std::setfill('0') << lsf_type_2.bits << "! = 0x0502" << std::endl;
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}


int test_lsf()
{
	using namespace mobilinkd::m17;

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);
	ap_uint<16> crc = lsf.bits.range(19,4);

	if (crc != 0xfe6d) {
		std::cout << "Stream LSF CRC incorrect: " << std::hex << std::setw(6) << std::setfill('0')
			<< crc << "! = 0xfe6d" << std::endl
			<< lsf.bits << std::endl;
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}


int test_lich()
{
	using namespace mobilinkd::m17;

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);
	ap_uint<16> crc = lsf.bits.range(19,4);

	if (crc != 0xfe6d) {
		std::cout << "Stream LSF CRC incorrect: " << std::hex << std::setw(6) << std::setfill('0')
			<< crc << "! = 0xfe6d" << std::endl
			<< lsf.bits << std::endl;
		return EXIT_FAILURE;
	}

	LICHSegments lich(lsf);

	// Segment 0
	if (lich.segments[0].bits.range(47,8) != lsf.bits.range(243,204)) {
		std::cout << "Stream LICH segment 0 value incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[0].bits.range(47,8) << " != "
			<< lsf.bits.range(243,204) << std::endl;
		return EXIT_FAILURE;
	}

	if (lich.segments[0].bits.range(7, 0) != 0x00) {
		std::cout << "Stream LICH segment 0 frame incorrect: "
			<< std::hex << std::setw(14) << std::setfill('0')
			<< lich.segments[0].bits << " != 0" << std::endl;
		return EXIT_FAILURE;
	}

	// Segment 1
	if (lich.segments[1].bits.range(47,8) != lsf.bits.range(203,164)) {
		std::cout << "Stream LICH segment 1 value incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[1].bits.range(47,8) << " != "
			<< lsf.bits.range(203,164) << std::endl;
		return EXIT_FAILURE;
	}

	if (lich.segments[1].bits.range(7,0) != 0x20) {
		std::cout << "Stream LICH segment 1 frame incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[1].bits.range(7,0) << " != 0x20" << std::endl;
		return EXIT_FAILURE;
	}

	// Segment 2
	if (lich.segments[2].bits.range(47,8) != lsf.bits.range(163,124)) {
		std::cout << "Stream LICH segment 2 value incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[2].bits.range(47,8) << " != "
			<< lsf.bits.range(163,124) << std::endl;
		return EXIT_FAILURE;
	}

	if (lich.segments[2].bits.range(7,0) != 0x40) {
		std::cout << "Stream LICH segment 2 frame incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[2].bits.range(7,0) << " != 0x40" << std::endl;
		return EXIT_FAILURE;
	}

	// Segment 3
	if (lich.segments[3].bits.range(47,8) != lsf.bits.range(123,84)) {
		std::cout << "Stream LICH segment 3 value incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[3].bits.range(47,8) << " != "
			<< lsf.bits.range(123,84) << std::endl;
		return EXIT_FAILURE;
	}

	if (lich.segments[3].bits.range(7,0) != 0x60) {
		std::cout << "Stream LICH segment 3 frame incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[3].bits.range(7,0) << " != 0x60" << std::endl;
		return EXIT_FAILURE;
	}

	// Segment 4
	if (lich.segments[4].bits.range(47,8) != lsf.bits.range(83,44)) {
		std::cout << "Stream LICH segment 4 value incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[4].bits.range(47,8) << " != "
			<< lsf.bits.range(83,44) << std::endl;
		return EXIT_FAILURE;
	}

	if (lich.segments[4].bits.range(7,0) != 0x80) {
		std::cout << "Stream LICH segment 4 frame incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[4].bits.range(47,8) << " != 0x80" << std::endl;
		return EXIT_FAILURE;
	}

	// Segment 5
	if (lich.segments[5].bits.range(47,8) != lsf.bits.range(43,4)) {
		std::cout << "Stream LICH segment 5 value incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[5].bits.range(47,8) << " != "
			<< lsf.bits.range(43,4) << std::endl;
		return EXIT_FAILURE;
	}

	if (lich.segments[5].bits.range(7,0) != 0xA0) {
		std::cout << "Stream LICH segment 5 frame incorrect: "
			<< std::hex << std::setw(12) << std::setfill('0')
			<< lich.segments[5].bits.range(47,8) << " != 0xA0" << std::endl;
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}


int test_encoded_lich()
{
	using namespace mobilinkd::m17;

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);

	LICHSegments lich(lsf);
	EncodedLICHSegments elich(lich);

	std::array<ap_uint<48>, 12> expected = {
			0xffffffffffff, 0xfffffff00292,
			0xff097b01bf74, 0x64890ca205d0,
			0xdad757700ee7, 0x050efe040d99,
			0x000000000000, 0x000000060b54,
			0x000000000000, 0x0000000803da,
			0x000000000000, 0xfe69b5da08ed
	};

	for (size_t i = 0; i != elich.segments.size(); ++i) {
		ap_uint<48> v = elich.segments[i].range(95, 48);
		if (v != expected[i*2]) {
			std::cout << "Encoded stream LICH segment (a) " << i <<" value incorrect: "
				<< std::hex << std::setw(14) << std::setfill('0')
				<< v << "(computed) != "
				<< std::hex << std::setw(14) << std::setfill('0')
				<< expected[i*2] << " (expected)" << std::endl;
			return EXIT_FAILURE;
		}
		v = elich.segments[i].range(47, 0);
		if (v != expected[i*2+1]) {
			std::cout << "Encoded stream LICH segment (b) " << i <<" value incorrect: "
				<< std::hex << std::setw(14) << std::setfill('0')
				<< v << " (computed) != "
				<< expected[i*2+1] << " (expected)" << std::endl;
			return EXIT_FAILURE;
		}
	}

	return EXIT_SUCCESS;
}


int test_conv_coded_lsf()
{
	using namespace mobilinkd::m17;

	std::array<int, 488> baseline = {1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1};

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);
	ap_uint<16> crc = lsf.bits.range(19,4);

	if (crc != 0xfe6d) {
		std::cout << "Stream LSF CRC incorrect: " << std::hex << std::setw(6) << std::setfill('0')
			<< crc << "! = 0xfe6d" << std::endl
			<< lsf.bits << std::endl;
		return EXIT_FAILURE;
	}

	LinkSetupFrame::encoded_type encoded = lsf.encode();

	std::cout << "     LSF:";
	for (int i = lsf.bits.width; i != 0; --i) {
		std::cout << lsf.bits[i-1];
	}

	std::cout << std::endl << "BASELINE:";
	for (size_t i = 0; i != encoded.width; ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << " ENCODED:";
	bool failed = false;
	size_t index = 0;
	for (int i = encoded.width; i != 0; --i) {
		std::cout << encoded[i-1];
		if (baseline[index++] != encoded[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_punctured_lsf()
{
	using namespace mobilinkd::m17;

	std::array<int, 368> baseline = {1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1};

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);

	LinkSetupFrame::frame_type frame = lsf.puncture(lsf.encode());


	std::cout << "BASELINE:";
	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "PUNCTURE:";
	bool failed = false;
	size_t index = 0;
	for (int i = frame.width; i != 0; --i) {
		std::cout << frame[i-1];
		if (baseline[index++] != frame[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_interleaved_lsf()
{
	using namespace mobilinkd::m17;

	std::array<int, 368> baseline = {1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1};

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);

	LinkSetupFrame::frame_type frame = lsf.puncture(lsf.encode());
	LinkSetupFrame::frame_type interleaved = pi::interleave(frame);

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "INTERLVD:";
	bool failed = false;
	size_t index = 0;
	for (int i = interleaved.width; i != 0; --i) {
		std::cout << interleaved[i-1];
		if (baseline[index++] != interleaved[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_randomized_lsf()
{
	using namespace mobilinkd::m17;

	std::array<int, 368> baseline = {0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0};

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);

	LinkSetupFrame::frame_type frame = lsf.puncture(lsf.encode());
	LinkSetupFrame::frame_type randomized = randomize(pi::interleave(frame));

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "RANDOMZD:";
	bool failed = false;
	size_t index = 0;
	for (int i = randomized.width; i != 0; --i) {
		std::cout << randomized[i-1];
		if (baseline[index++] != randomized[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_stream()
{
	using namespace mobilinkd::m17;

	StreamFrame frame(0, 0xc030'aa3a'18a5'ef0b, 0xc02c'd86b'9ea5'a76e);

	std::array<int, 148> baseline = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0};

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "  STREAM:";
	bool failed = false;
	size_t index = 0;
	for (int i = frame.bits.width; i != 0; --i) {
		std::cout << frame.bits[i-1];
		if (baseline[index++] != frame.bits[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_conv_coded_stream()
{
	using namespace mobilinkd::m17;

	StreamFrame frame(0, 0xc030'aa3a'18a5'ef0b, 0xc02c'd86b'9ea5'a76e);
	StreamFrame::encoded_type encoded = frame.encode();

	std::array<int, 296> baseline = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0};

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << " ENCODED:";
	bool failed = false;
	size_t index = 0;
	for (int i = encoded.width; i != 0; --i) {
		std::cout << encoded[i-1];
		if (baseline[index++] != encoded[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_punctured_stream()
{
	using namespace mobilinkd::m17;

	StreamFrame frame(0, 0xc030'aa3a'18a5'ef0b, 0xc02c'd86b'9ea5'a76e);
	StreamFrame::punctured_type punctured = frame.puncture(frame.encode());

	std::array<int, 272> baseline = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0};

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "PUNCTURE:";
	bool failed = false;
	size_t index = 0;
	for (int i = punctured.width; i != 0; --i) {
		std::cout << punctured[i-1];
		if (baseline[index++] != punctured[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_stream_frame()
{
	using namespace mobilinkd::m17;

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);

	StreamFrameFactory factory;
	factory.update(lsf);

	StreamFrame::frame_type frame = factory.get_frame(0, 0, 0xc030'aa3a'18a5'ef0b, 0xc02c'd86b'9ea5'a76e);

	std::array<int, 368> baseline = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0};

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "  STREAM:";
	bool failed = false;
	size_t index = 0;
	for (int i = frame.width; i != 0; --i) {
		std::cout << frame[i-1];
		if (baseline[index++] != frame[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_interleaved_stream()
{
	using namespace mobilinkd::m17;

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);

	StreamFrameFactory factory;
	factory.update(lsf);

	StreamFrame::frame_type frame = factory.get_frame(0, 0, 0xc030'aa3a'18a5'ef0b, 0xc02c'd86b'9ea5'a76e);
	StreamFrame::frame_type interleaved = pi::interleave(frame);

	std::array<int, 368> baseline = {1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1};

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "INTERLVD:";
	bool failed = false;
	size_t index = 0;
	for (int i = interleaved.width; i != 0; --i) {
		std::cout << interleaved[i-1];
		if (baseline[index++] != interleaved[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

int test_randomized_stream()
{
	using namespace mobilinkd::m17;

	LinkSetupFrameType lsf_type_1 = {StreamSubtype::VOICE, 0};
	LinkSetupFrame lsf(0xFFFFFFFFFFFF, 0x001b648adad7, lsf_type_1);

	StreamFrameFactory factory;
	factory.update(lsf);

	StreamFrame::frame_type frame = factory.get_frame(0, 0, 0xc030'aa3a'18a5'ef0b, 0xc02c'd86b'9ea5'a76e);
	StreamFrame::frame_type randomized = randomize(pi::interleave(frame));

	std::array<int, 368> baseline = {0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0};

	std::cout << "BASELINE:";

	for (size_t i = 0; i != baseline.size(); ++i) {
		std::cout << baseline[i];
	}

	std::cout << std::endl << "RANDOMZD:";
	bool failed = false;
	for (int i = randomized.width, index = 0; i != 0; --i, ++index) {
		std::cout << randomized[i-1];
		if (baseline[index] != randomized[i-1]) {
			failed = true;
		}
	}
	std::cout << std::endl;

	if (failed) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

bool test_m17_encoder_top_stream()
{
	input_type input;
	idata_type idata;
	output_type output;
	odata_type odata;
	m17_callsign_type DST = {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};
	m17_callsign_type SRC = {0x00,0x1b,0x64,0x8a,0xda,0xd7};
	m17_frameType_type frame_type = 1;
	m17_frameSubtype_type frame_subtype = 2;
	m17_encryptionType_type encryption_type = 0;
	m17_encryptionSubtype_type encryption_subtype = 0;
	m17_can_type can = 10;

	std::array<uint8_t, 16> input_data = {0xc0,0x30,0xaa,0x3a,0x18,0xa5,0xef,0x0b,0xc0,0x2c,0xd8,0x6b,0x9e,0xa5,0xa7,0x6e};

	std::vector<uint8_t> output_data;

	int i = 0;
	for (auto& x : input_data) {
		idata.data = x;
		idata.keep = 1;
		idata.strb = 1;
		idata.last = ++i == 16 ? 1 : 0;
		input << idata;
	}

	bool last = false;
	while (!last) {
		m17_encoder_top(input, output, DST, SRC, frame_type, frame_subtype, encryption_type, encryption_subtype, can);

		if (!output.empty()) {
			output >> odata;
			last = odata.last;
			if (idata.keep) output_data.push_back(odata.data);
		}
	}

	size_t count = 0;
	for (auto& x : output_data) {
		std::cout << std::hex << std::setw(2) << std::setfill('0') << int(x);
		if (++count == 48) {
			count = 0;
			std::cout << std::endl;
		}
	}
	std::cout << std::dec << std::endl;

	if (output_data.size() != 146) {
		std::cout << "Output size " << output_data.size() << " != expected size " << 146 << std::endl;
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}

bool test_m17_encoder_top_stream_2()
{
	input_type input;
	idata_type idata;
	output_type output;
	odata_type odata;
	m17_callsign_type DST = {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};
	m17_callsign_type SRC = {0x00,0x1b,0x64,0x8a,0xda,0xd7};
	m17_frameType_type frame_type = 1;
	m17_frameSubtype_type frame_subtype = 2;
	m17_encryptionType_type encryption_type = 0;
	m17_encryptionSubtype_type encryption_subtype = 0;
	m17_can_type can = 10;

	std::array<uint8_t, 16> input_data = {0xc0,0x30,0xaa,0x3a,0x18,0xa5,0xef,0x0b,0xc0,0x2c,0xd8,0x6b,0x9e,0xa5,0xa7,0x6e};

	std::vector<uint8_t> output_data;

	int i = 0;
	for (auto& x : input_data) {
		idata.data = x;
		idata.keep = 1;
		idata.strb = 1;
		idata.last = 0;
		input << idata;
	}

	for (auto& x : input_data) {
		idata.data = x;
		idata.keep = 1;
		idata.strb = 1;
		idata.last = ++i == 16 ? 1 : 0;
		input << idata;
	}

	bool last = false;
	while (!last) {
		m17_encoder_top(input, output, DST, SRC, frame_type, frame_subtype, encryption_type, encryption_subtype, can);

		if (!output.empty()) {
			output >> odata;
			last = odata.last;
			if (idata.keep) output_data.push_back(odata.data);
		}
	}

	size_t count = 0;
	for (auto& x : output_data) {
		std::cout << std::hex << std::setw(2) << std::setfill('0') << int(x);
		if (++count == 48) {
			count = 0;
			std::cout << std::endl;
		}
	}
	std::cout << std::dec << std::endl;

	if (output_data.size() != 194) {
		std::cout << "Output size " << output_data.size() << " != expected size " << 194 << std::endl;
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}

int main()
{
	using namespace mobilinkd::m17;

	if (test_lsf_type() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_crc() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_lsf() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_lich() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_encoded_lich() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_conv_coded_lsf() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_punctured_lsf() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_interleaved_lsf() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_randomized_lsf() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_stream() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_conv_coded_stream() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_punctured_stream() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_stream_frame() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_interleaved_stream() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_randomized_stream() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_m17_encoder_top_stream() != EXIT_SUCCESS) return EXIT_FAILURE;
	if (test_m17_encoder_top_stream_2() != EXIT_SUCCESS) return EXIT_FAILURE;

	return EXIT_SUCCESS;
}

