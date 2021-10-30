// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#include <cstddef>

using idata_type = ap_axis<16,1,1,1>;
using input_type = hls::stream<idata_type>;
using output_type = ap_uint<1>;

output_type dac_top(input_type& in);
