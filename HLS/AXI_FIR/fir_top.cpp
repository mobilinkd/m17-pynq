// Copyright 2021 Mobilinkd LLC.

#include "fir_top.h"


#define BPF_COEFF_LEN 99

static const ap_int<14> lpf_coeffs[] = {
	5, 10, 14, 19, 21, 23, 22, 18, 11,
	0, -13, -30, -47, -63, -75, -80, -77, -62,
	-37, 0, 44, 95, 145, 188, 218, 228, 214,
	171, 99, 0, -117, -246, -372, -481, -557, -584,
	-550, -444, -261, -1, 329, 718, 1147, 1593, 2032,
	2436, 2782, 3047, 3213, 3269, 3213, 3047, 2782, 2436,
	2032, 1593, 1147, 718, 329, -1, -261, -444, -550,
	-584, -557, -481, -372, -246, -117, 0, 99, 171,
	214, 228, 218, 188, 145, 95, 44, 0, -37,
	-62, -77, -80, -75, -63, -47, -30, -13, 0, 11,
	18, 22, 23, 21, 19, 14, 10, 5
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



void fir_top(uint8_t decimate, input_type& input, output_type& output)
{
#pragma HLS INTERFACE axis port=input
#pragma HLS INTERFACE axis port=output
#pragma HLS INTERFACE s_axilite port=decimate
#pragma HLS INTERFACE s_axilite port=return

	static ap_uint<3> counter = 0;

	idata_type idata;
	odata_type odata;

	static ap_int<16> lpf_shift_reg[BPF_COEFF_LEN];
#pragma HLS ARRAY_PARTITION variable=lpf_shift_reg type=cyclic factor=2

	do {
		input >> idata;
		odata.data = fir_filter(idata.data, lpf_shift_reg, lpf_coeffs);
		if (counter == decimate) {
			counter = 0;
			odata.dest = idata.dest;
			odata.user = idata.user;
			odata.id = idata.id;
			odata.keep = idata.keep;
			odata.last = idata.last;
			odata.strb = idata.strb;
			output << odata;
		} else {
			counter += 1;
		}
	} while (idata.last != 0); // Only set to 0 for testing.
}
