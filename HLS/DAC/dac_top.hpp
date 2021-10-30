// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <cstddef>

using output_type = ap_uint<1>;
using input_type = ap_int<16>;

output_type dac_top(input_type in, bool valid);
