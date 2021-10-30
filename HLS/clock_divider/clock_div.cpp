// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include <ap_int.h>

#define CLOCK_RESET 6250;

void clock_div_top(bool clk_in, bool* clk_out)
{
#pragma HLS INTERFACE ap_none port=clk_in
#pragma HLS INTERFACE ap_none port=clk_out
#pragma HLS INTERFACE ap_none port=return

	static ap_int<13> counter = CLOCK_RESET;
	static bool clk = 1;

	counter -= 3;
	if (counter < 3) {
		counter += CLOCK_RESET;
		clk = !clk;
	}
	*clk_out = clk;
}
