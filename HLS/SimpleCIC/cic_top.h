// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#include <cstdint>

using odata_type = ap_axis<16,1,1,1>;
using output_type = hls::stream<odata_type>;
using decimate_type = ap_uint<10>;
using gain_type = ap_uint<5>;
using idata_type = ap_axis<5,1,1,1>;
using input_type = hls::stream<idata_type>;

void cic_top(decimate_type decimate, gain_type gain, input_type& in, output_type& out);
