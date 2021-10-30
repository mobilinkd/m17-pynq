// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

#include <cstdint>

using odata_type = ap_axis<16,1,1,1>;
using output_type = hls::stream<odata_type>;
using decimate_type = ap_uint<9>;
using input_type = ap_uint<14>;

void cic_top(decimate_type decimate, input_type in, output_type& output, uint64_t& counter_out);
