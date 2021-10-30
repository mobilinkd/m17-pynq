// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "cic_top.h"

#include <iostream>

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

void cic_top(decimate_type decimate, gain_type gain, input_type& in, output_type& out)
{
#pragma HLS INTERFACE s_axilite port=decimate
#pragma HLS INTERFACE s_axilite port=gain
#pragma HLS INTERFACE axis depth=512 port=in
#pragma HLS INTERFACE axis depth=512 port=out
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS PIPELINE II=1

	static decimate_type counter = 0;

	using cic_type = ap_int<36>;

	static cic_type accum_1 = 0;
	static cic_type accum_2 = 0;
	static cic_type accum_3 = 0;
	static cic_type accum_4 = 0;

	static cic_type delay_1 = 0;
	static cic_type delay_2 = 0;
	static cic_type delay_3 = 0;
	static cic_type delay_4 = 0;

	cic_type comb_1;
	cic_type comb_2;
	cic_type comb_3;
	cic_type comb_4;

	idata_type input;

	in >> input;

	accum_1 += input.data;
	accum_2 += accum_1;
	accum_3 += accum_2;
	accum_4 += accum_3;

	counter += 1;

	if (counter == decimate)
	{
		counter = 0;

		comb_1 = accum_4 - delay_1;	// <-- output of last accumulator feeds into first comb
		delay_1 = accum_4;

		comb_2 = comb_1 - delay_2;
		delay_2 = comb_1;

		comb_3 = comb_2 - delay_3;
		delay_3 = comb_2;

		comb_4 = comb_3 - delay_4;
		delay_4 = comb_3;

#ifndef SYNTHESIS
		std::cout << "accum 1..4: " << accum_1 << ", " << accum_2 << ", " << accum_4 << ", " << accum_4 << std::endl;
		std::cout << "combs 1..4: " << comb_1 << ", " << comb_2 << ", " << comb_3 << ", " << comb_4 << std::endl;
#endif

		static cic_type n0 = 0;
		static cic_type n1 = 0;
		static cic_type n2 = 0;

		n2 = n1;
		n1 = n0;
		n0 = comb_4 >> gain;

		cic_type compensation = n0 - ((n1 << 2) + (n1 << 1)) + n2;

		ap_int<16> result = (compensation >> 2) & 0xFFFF;

		write_word(out, result, 1);
	}
}
