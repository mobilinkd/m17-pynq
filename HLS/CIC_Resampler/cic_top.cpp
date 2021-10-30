// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "cic_top.hpp"
#include <array>
#include <iostream>

using base_type = ap_int<4>;

using lookup_type = std::array<base_type, 128>;

static lookup_type make_mapping() {
	lookup_type result;
	for (size_t i = 0; i != result.size(); ++i)
		result[i] = __builtin_popcount(i) * 2 - 7;
	return result;
}

static const lookup_type bit_counts = make_mapping();

//https://tomverbeure.github.io/2020/09/30/Moving-Average-and-CIC-Filters.html
//https://dsp.stackexchange.com/questions/19584/how-to-make-cic-compensation-filter

void write_word(output_type& out, ap_int<16> data, ap_uint<1> last)
{
#pragma HLS INLINE off
	odata_type output;

	// STRB and KEEP have one bit for each byte of data
	// https://forums.xilinx.com/t5/High-Level-Synthesis-HLS/Meaning-of-AXI-Stream-side-channel-signals/td-p/1118259
	output.data = data;
	output.dest = 0;
	output.id = 0;
	output.keep = 3;	// One bit per byte
	output.last = last;
	output.strb = 3;	// One bit per byte
	output.user = 0;
	out << output;
}

void cic_top(decimate_type decimate, input_type in, output_type& output, uint64_t& counter_out)
{
#pragma HLS INTERFACE ap_none port=in
#pragma HLS INTERFACE s_axilite port=decimate
#pragma HLS INTERFACE s_axilite port=counter_out
#pragma HLS INTERFACE axis depth=512 port=output
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS PIPELINE II=1

	static decimate_type counter = 0;

	using cic_type = ap_int<34>;

	static ap_int<7> accum_1 = 0;
	static cic_type accum_2 = 0;
	static cic_type accum_3 = 0;
	static cic_type accum_4 = 0;
	static cic_type accum_5 = 0;

	static ap_int<7> delay_1_1 = 0;
	static cic_type delay_2_1 = 0;
	static cic_type delay_3_1 = 0;
	static cic_type delay_4_1 = 0;
	static cic_type delay_5_1 = 0;

	ap_int<7> comb_1;
	cic_type comb_2;
	cic_type comb_3;
	cic_type comb_4;
	cic_type comb_5;

	using half_word = ap_uint<7>;

	half_word even;
	half_word odd;

	even[0] = in[0];
	even[1] = in[2];
	even[2] = in[4];
	even[3] = in[6];
	even[4] = in[8];
	even[5] = in[10];
	even[6] = in[12];

	odd[0] = in[1];
	odd[1] = in[3];
	odd[2] = in[5];
	odd[3] = in[7];
	odd[4] = in[9];
	odd[5] = in[11];
	odd[6] = in[13];

	ap_int<5> tmp = bit_counts[even] - bit_counts[odd];

	// Single CIC stage to decimate SERDES input by 7.
	accum_1 += tmp;
	comb_1 = accum_1 - delay_1_1;
	delay_1_1 = accum_1;

	accum_2 += comb_1;	// <-- output if first stage feeds into second.
	accum_3 += accum_2;
	accum_4 += accum_3;
	accum_5 += accum_4;

	counter += 1;

	if (counter == decimate)
	{
		counter = 0;

		comb_2 = accum_5 - delay_2_1;	// <-- output of last accumulator feeds into first comb
		delay_2_1 = accum_5;

		comb_3 = comb_2 - delay_3_1;
		delay_3_1 = comb_2;

		comb_4 = comb_3 - delay_4_1;
		delay_4_1 = comb_3;

		comb_5 = comb_4 - delay_5_1;
		delay_5_1 = comb_4;
#ifndef SYNTHESIS
		std::cout << "accum 1..5: " << accum_1 << ", " << accum_2 << ", " << accum_4 << ", " << accum_4 << ", " << accum_5 << std::endl;
		std::cout << "combs 1..5: " << comb_1 << ", " << comb_2 << ", " << comb_3 << ", " << comb_4 << ", " << comb_5 << std::endl;
#endif
		ap_int<16> result = comb_5 >> 16;

		write_word(output, result, 1);
	}

	counter_out = counter;
}
