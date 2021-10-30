// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#include <cstdint>

using odata_type = ap_axis<5,1,1,1>;
using output_type = hls::stream<odata_type>;
using input_type = ap_uint<8>;

void cic_top(input_type in, output_type& out_i, output_type& out_q);
