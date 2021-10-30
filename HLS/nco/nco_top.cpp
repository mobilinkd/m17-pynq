// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#include "nco_top.hpp"

output_type nco_top(delay_type inc, bool& power_down)
{
#pragma HLS INTERFACE s_axilite port=inc
#pragma HLS INTERFACE ap_none port=power_down
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS latency max=0

	static ap_uint<DIVIDER> accumulator[UPSAMPLE];
	ap_uint<DIVIDER> delay[UPSAMPLE];
	output_type clock_out;

	if (inc > 0) {
		delay[0] = inc;
		delay[1] = inc << 1;
		delay[3] = inc << 2;
		delay[7] = inc << 3;
		delay[2] = delay[1] + delay[0];
		delay[4] = delay[3] + delay[0];
		delay[5] = delay[1] + delay[3];
		delay[6] = delay[7] - delay[0];

		accumulator[1] = accumulator[0] + delay[0];
		accumulator[2] = accumulator[0] + delay[1];
		accumulator[3] = accumulator[0] + delay[2];
		accumulator[4] = accumulator[0] + delay[3];
		accumulator[5] = accumulator[0] + delay[4];
		accumulator[6] = accumulator[0] + delay[5];
		accumulator[7] = accumulator[0] + delay[6];
		accumulator[0] = accumulator[0] + delay[7];

		clock_out[7] = accumulator[0][DIVIDER - 1];
		clock_out[6] = accumulator[7][DIVIDER - 1];
		clock_out[5] = accumulator[6][DIVIDER - 1];
		clock_out[4] = accumulator[5][DIVIDER - 1];
		clock_out[3] = accumulator[4][DIVIDER - 1];
		clock_out[2] = accumulator[3][DIVIDER - 1];
		clock_out[1] = accumulator[2][DIVIDER - 1];
		clock_out[0] = accumulator[1][DIVIDER - 1];

		power_down = 0;
		return clock_out;
	} else {
		power_down = 1;
		return 0;
	}
}


