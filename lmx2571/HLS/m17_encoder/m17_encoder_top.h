// Copyright 2022 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#include <array>
#include <cstddef>

using codec2_frame_type = uint64_t; 					// 64 bits
using m17_frame_type = std::array<ap_uint<2>, 192>; 	// 192 symbols, 384 bits

using m17_callsign_type = std::array<uint8_t, 6>;	// 6 bytes
using m17_frameType_type = ap_uint<1>;
using m17_frameSubtype_type = ap_uint<2>;
using m17_encryptionType_type = ap_uint<2>;
using m17_encryptionSubtype_type = ap_uint<2>;
using m17_can_type = ap_uint<4>;
using m17_unused_type = ap_uint<5>;

using idata_type = ap_axiu<8,0,0,0>;
using input_type = hls::stream<idata_type>;
using odata_type = ap_axiu<8,0,0,0>;
using output_type = hls::stream<odata_type>;


// Setting a negative deviation will result in inverted TX.
void m17_encoder_top(
		input_type& input,
		output_type& output,
		m17_callsign_type& DST,
		m17_callsign_type& SRC,
		m17_frameType_type& frame_type,
		m17_frameSubtype_type& frame_subtype,
		m17_encryptionType_type& encryption_type,
		m17_encryptionSubtype_type& encryption_subtype,
		m17_can_type& can);
