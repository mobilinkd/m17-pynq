// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

// This is an HLS/C++ implemenation of
// https://github.com/hamsternz/second_order_sigma_delta_DAC/blob/master/second_order_dac.v

#include "dac_top.h"

// 10MHz DAC output at 100MHz clock
#define COUNTER_RESET 0

output_type dac_top(input_type& in)
{
#pragma HLS INTERFACE axis depth=512 port=in
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE

	static ap_int<21> acc1 = 0;
	static ap_int<21> acc2 = 0;
	static output_type result = 0;
	static ap_uint<5> counter = COUNTER_RESET;
	static ap_int<21> ibuffer = 0;
	static ap_int<16> icounter = -1;
	static ap_int<16> dreload = 0;
	static ap_int<16> dcounter = 0;

	static ap_int<22> idelay1 = 0;
	static ap_int<22> idelay2 = 0;
	static ap_int<22> iaccum1 = 0;
	static ap_int<22> iaccum2 = 0;
	ap_int<22> icomb1 = 0;
	ap_int<22> icomb2 = 0;

	if (!in.empty()) {
		idata_type input;
		in >> input;
		// arbitrary precision types are sign-extended.
		if (input.keep) {
			dreload = icounter >> 3;
			dcounter = dreload;
			icounter = 0;

			icomb1 = input.data - idelay1;
			idelay1 = input.data;
			icomb2 = icomb1 - idelay2;
			idelay2 = icomb1;

			iaccum1 += icomb2;
			iaccum2 += iaccum1;
		}
	}

	icounter += 1;
	dcounter -= 1;
	if (dcounter < 0) {
		iaccum2 += iaccum1;
		dcounter = dreload;
	}

	if (counter == 10) {
		if (result) {
			acc1 = acc1 + (iaccum2 >> 3) - (1 << 15);
			acc2 = acc2 + acc1 - (1 << 15);
		} else {
			acc1 = acc1 + (iaccum2 >> 3) + (1 << 15);
			acc2 = acc2 + acc1 + (1 << 15);
		}
		result[0] = ~acc2[20];
	} else {
		counter -= 1;
	}

	return result;
}
