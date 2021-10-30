// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

// This is an HLS/C++ implemenation of
// https://github.com/hamsternz/second_order_sigma_delta_DAC/blob/master/second_order_dac.v

#include "dac_top.hpp"

// 5MHz DAC output at 100MHz clock
#define COUNTER_RESET 0

output_type dac_top(input_type in, bool valid)
{
#pragma HLS INTERFACE ap_none port=in
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE

	static ap_int<21> acc1 = 0;
	static ap_int<21> acc2 = 0;
	static output_type result = 0;
	static ap_uint<5> counter = COUNTER_RESET;
	static ap_int<20> ibuffer = 0;

	if (valid) {
		// arbitrary precision types are sign-extended.
		ibuffer = in;
	}

	if (counter == 10) {
		counter = COUNTER_RESET;
		if (result) {
			acc1 = acc1 + ibuffer - (1 << 15);
			acc2 = acc2 + acc1 - (1 << 15);
		} else {
			acc1 = acc1 + ibuffer + (1 << 15);
			acc2 = acc2 + acc1 + (1 << 15);
		}
		result[0] = ~acc2[20];
	} else {
		counter -= 1;
	}

	return result;
}
