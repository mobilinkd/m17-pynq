// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "fm_demod.h"

#include "hls_dsp.h"
#include "hls_math.h"
#include "hls_cordic_apfixed.h"

#include <iostream>

void write_word(output_type& out, ap_int<16> data, ap_uint<1> last)
{
#pragma HLS INLINE off
        odata_type output;

        // STRB and KEEP have one bit for each byte of data
        // https://forums.xilinx.com/t5/High-Level-Synthesis-HLS/Meaning-of-AXI-Stream-side-channel-signals/td-p/1118259
        output.data = data;
        output.dest = 0;
        output.id = 0;
        output.keep = 3;        // One bit per byte
        output.last = last;
        output.strb = 3;        // One bit per byte
        output.user = 0;
        out << output;
}

ap_int<16> demod(ap_int<16> i, ap_int<16> q, gain_type gain)
{
	static ap_int<16> prev_i_0 = 0;
	static ap_int<16> prev_q_0 = 0;

	static ap_int<16> prev_i_1 = 0;
	static ap_int<16> prev_q_1 = 0;

	ap_int<17> diff_i = i - prev_i_1;
	ap_int<17> diff_q = q - prev_q_1;

	ap_int<33> i1 = prev_i_0 * diff_q;
	ap_int<33> q1 = prev_q_0 * diff_i;

	ap_int<50> tmp = i1 - q1;
	ap_int<34> div = i*i + q*q;

	tmp <<= 2;

	tmp *= gain;
	tmp /= div;

	prev_i_1 = prev_i_0;
	prev_q_1 = prev_q_0;

	prev_i_0 = i;
	prev_q_0 = q;

	ap_int<16> result = tmp & 0xFFFF;

	return result;
}

void fm_demod_top(gain_type gain, input_type& i, input_type& q, output_type& out)
{
#pragma HLS INTERFACE s_axilite port=gain
#pragma HLS INTERFACE axis depth=512 port=i
#pragma HLS INTERFACE axis depth=512 port=q
#pragma HLS INTERFACE axis depth=512 port=out
#pragma HLS INTERFACE s_axilite port=return

	static bool have_i = false;
	static bool have_q = false;
	static ap_int<16> i1;
	static ap_int<16> q1;

	if (!i.empty()) {
		idata_type input;
		i >> input;
		i1 = input.data;
		have_i = true;
	}

	if (!q.empty()) {
		idata_type input;
		q >> input;
		q1 = input.data;
		have_q = true;
	}

	if (have_i && have_q) {
		have_i = false;
		have_q = false;

		ap_int<16> signal = demod(i1, q1, gain);

		write_word(out, signal, 1);
	}
}
