// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <ap_int.h>
#include <cstdint>
#include <cstddef>

using output_type = ap_int<16>;
using idata_type = ap_axis<16,1,1,1>;
using input_type = hls::stream<idata_type>;

void fir_top(input_type& input, output_type& output);
