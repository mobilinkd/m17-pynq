// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#include <cstdint>

using gain_type = ap_uint<16>;
using idata_type = ap_axis<16,1,1,1>;
using input_type = hls::stream<idata_type>;
using odata_type = ap_axis<16,1,1,1>;
using output_type = hls::stream<odata_type>;

void fm_demod_top(gain_type gain, input_type& i, input_type& q, output_type& out);
