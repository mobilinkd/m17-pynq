// Copyright 2019 Mobilinkd LLC.

#include "fir_top.hpp"

/*

FIR filter designed with
http://t-filter.appspot.com

sampling frequency: 240000 Hz

fixed point precision: 16 bits

* 0 Hz - 16000 Hz
  gain = 1
  desired ripple = 1 dB
  actual ripple = n/a

* 24000 Hz - 120000 Hz
  gain = 0
  desired attenuation = -80 dB
  actual attenuation = n/a

*/

#define BPF_COEFF_LEN 87

static const ap_int<14> lpf_coeffs[] = {
  -5,
  -11,
  -22,
  -36,
  -52,
  -65,
  -72,
  -67,
  -46,
  -8,
  45,
  105,
  163,
  205,
  218,
  194,
  130,
  34,
  -79,
  -183,
  -252,
  -264,
  -205,
  -76,
  102,
  293,
  451,
  529,
  490,
  320,
  33,
  -324,
  -676,
  -935,
  -1011,
  -832,
  -366,
  377,
  1333,
  2397,
  3433,
  4302,
  4880,
  5083,
  4880,
  4302,
  3433,
  2397,
  1333,
  377,
  -366,
  -832,
  -1011,
  -935,
  -676,
  -324,
  33,
  320,
  490,
  529,
  451,
  293,
  102,
  -76,
  -205,
  -264,
  -252,
  -183,
  -79,
  34,
  130,
  194,
  218,
  205,
  163,
  105,
  45,
  -8,
  -46,
  -67,
  -72,
  -65,
  -52,
  -36,
  -22,
  -11,
  -5
};


template <typename InOut, typename Filter, size_t N>
inline ap_int<16> fir_filter(InOut x, InOut (&shift_reg)[N], Filter (&coeff)[N], size_t shift = (InOut::width - 1))
{
	ap_int<36> accum{0};
    filter_loop: for (size_t i = N-1 ; i != 0; i--)
    {
#pragma HLS UNROLL factor=2
        InOut tmp = shift_reg[i-1];
        shift_reg[i] = tmp;
        ap_int<InOut::width + Filter::width> tmp2 = tmp * coeff[i];
        accum += tmp2;
    }

    shift_reg[0] = x;
    accum += (x * coeff[0]);

    return static_cast<ap_int<16>>(accum >> shift);
}



void fir_top(input_type& input, output_type& output)
{
#pragma HLS INTERFACE axis port=input
#pragma HLS INTERFACE ap_vld port=output
#pragma HLS INTERFACE s_axilite port=return

	static ap_uint<3> counter = 0;

	ap_int<16> odata;
	idata_type idata;

	static ap_int<16> lpf_shift_reg[BPF_COEFF_LEN];
#pragma HLS ARRAY_PARTITION variable=lpf_shift_reg type=cyclic factor=2

	do {
		input >> idata;
		odata = fir_filter(idata.data, lpf_shift_reg, lpf_coeffs);
		if (counter == 4) {
			counter = 0;
			output = odata;
		} else {
			counter += 1;
		}
	} while (idata.last != 0); // Only set to 0 for testing.
}
