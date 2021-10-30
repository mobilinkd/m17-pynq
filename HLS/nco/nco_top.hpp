// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <cstddef>

constexpr size_t DIVIDER=32;
constexpr size_t UPSAMPLE=8;

typedef ap_uint<DIVIDER> delay_type;
typedef ap_uint<UPSAMPLE> output_type;

output_type nco_top(delay_type inc, bool& power_down);
