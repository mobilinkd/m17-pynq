// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "cic6_top.hpp"

#include <array>

using base_type = ap_int<4>;
using lookup_type = std::array<base_type, 64>;

static lookup_type make_mapping() {
	lookup_type result;
	for (size_t i = 0; i != result.size(); ++i)
		result[i] = __builtin_popcount(i) * 2 - 6;
	return result;
}

static const lookup_type bit_counts = make_mapping();

void cic6_top(input_type in, output_type& out)
{
#pragma HLS INTERFACE ap_none port=in
#pragma HLS INTERFACE ap_vld port=out
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE II=1

	static output_type accum = 0;
	static output_type prev = 0;

	accum += bit_counts[in];
	output_type result = accum - prev;
	prev = accum;
	out = result;
}
