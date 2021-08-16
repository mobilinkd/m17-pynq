// Copyright 2019 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>

constexpr size_t DIVIDER=32;
constexpr size_t UPSAMPLE=8;

typedef ap_uint<DIVIDER> delay_type;
typedef ap_uint<UPSAMPLE> output_type;

output_type acg_top(delay_type inc);
