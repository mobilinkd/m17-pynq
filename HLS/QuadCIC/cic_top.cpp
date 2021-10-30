// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "cic_top.h"
#include <array>
#include <iostream>

using base_type = ap_int<4>;

using lookup_type = std::array<base_type, 16>;

static lookup_type make_mapping() {
	lookup_type result;
	for (size_t i = 0; i != result.size(); ++i)
		result[i] = __builtin_popcount(i) * 2 - 4;
	return result;
}

static const lookup_type bit_counts = make_mapping();

//https://tomverbeure.github.io/2020/09/30/Moving-Average-and-CIC-Filters.html
//https://dsp.stackexchange.com/questions/19584/how-to-make-cic-compensation-filter

void write_word(output_type& out, ap_int<5> data, ap_uint<1> last)
{
#pragma HLS INLINE off
	odata_type output;

	// STRB and KEEP have one bit for each byte of data
	// https://forums.xilinx.com/t5/High-Level-Synthesis-HLS/Meaning-of-AXI-Stream-side-channel-signals/td-p/1118259
	output.data = data;
	output.dest = 0;
	output.id = 0;
	output.keep = 1;	// One bit per byte
	output.last = last;
	output.strb = 1;	// One bit per byte
	output.user = 0;
	out << output;
}

void cic_top(input_type in, output_type& out_i, output_type& out_q)
{
#pragma HLS INTERFACE ap_none port=in
#pragma HLS INTERFACE axis depth=512 port=out_i
#pragma HLS INTERFACE axis depth=512 port=out_q
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS PIPELINE II=1
#pragma HLS latency max=0

	using cic_type = ap_int<6>;

	static cic_type accum_i = 0;
	static cic_type accum_q = 0;

	static cic_type delay_i = 0;
	static cic_type delay_q = 0;

	cic_type comb_i;
	cic_type comb_q;

	using half_word = ap_uint<4>;

	half_word in_i;
	half_word in_q;

	in_i[0] = in[0];
	in_i[1] = ~in[2];
	in_i[2] = in[4];
	in_i[3] = ~in[6];

	in_q[0] = in[1];
	in_q[1] = ~in[3];
	in_q[2] = in[5];
	in_q[3] = ~in[7];

	// Split I/Q components and decimate each by 4
	accum_i += bit_counts[in_i];
	comb_i = accum_i - delay_i;
	delay_i = accum_i;

	accum_q += bit_counts[in_q];;
	comb_q = accum_q - delay_q;
	delay_q = accum_q;

	write_word(out_i, comb_i >> 1, 1);
	write_word(out_q, comb_q >> 1, 1);
}
