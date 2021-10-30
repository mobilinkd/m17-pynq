// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <cstdint>
#include <cstddef>

using idata_type = ap_axis<16,1,1,1>;
using input_type = hls::stream<idata_type>;
using odata_type = ap_axis<16,1,1,1>;
using output_type = hls::stream<odata_type>;

void fir_top(uint8_t decimate, input_type& input, output_type& output);
