// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "fm_top.hpp"

#define CLOCK_RESET 6250;

void fm_top(freq_type frequency, freq_type deviation, sample_stream_type& samples, delay_type& inc, output_type& mod_div, ap_int<16>& baseband)
{
#pragma HLS INTERFACE s_axilite port=frequency
#pragma HLS INTERFACE s_axilite port=deviation
#pragma HLS INTERFACE axis port=samples
#pragma HLS INTERFACE ap_ovld register port=inc
#pragma HLS INTERFACE ap_none register port=mod_div
#pragma HLS INTERFACE ap_ovld register port=baseband
#pragma HLS INTERFACE s_axilite port=return

	/*
	 * Something very important to remember here is that any output can only
	 * be set once through the code path.  If there are any paths in which
	 * one of the outputs can be set twice, the code will compile but it
	 * will not work.  The output value is undefined and in most cases will
	 * never change.  This applies to static variables as well.
	 */

	static ap_int<14> clk = 0;
	static freq_type prev_frequency = 0;
	static delay_type last_inc = 0;
	static ap_int<16> last_sample = 0;

	if (frequency < 112500000) mod_div = 0xF0;
	else if (frequency < 225000000) mod_div = 0xCC;
	else mod_div = 0xAA;

	if (samples.empty()) {
		if (frequency != prev_frequency) {
			last_inc = compute_inc(frequency, 0, 0);
			prev_frequency = frequency;
		}
		inc = last_inc;
		baseband = 0;
	} else while (!samples.empty()) {
		if (clk < 3) {
			sample_t sample;
			clk += CLOCK_RESET;
			sample = samples.read();
			last_sample = sample.data;
			last_inc = compute_inc(frequency, deviation, sample.data);
			baseband = last_sample;
		}
		clk -= 3;
		inc = last_inc;
	}
}

delay_type compute_inc(freq_type frequency, freq_type deviation, int16_t sample)
{
	constexpr uint32_t NORMALIZED = 1281023894; // (1ULL << 63) / (800000000ULL * 9ULL);

	ap_int<3> divmod;

	if (frequency < 112500000) divmod = 2;
	else if (frequency < 225000000) divmod = 1;
	else divmod = 0;

	ap_int<64> freq = frequency + ((sample * deviation) >> 15);
	delay_type inc = (freq * NORMALIZED) >> (31 - divmod);
	return inc;
}
