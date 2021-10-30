// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <cstddef>

using output_type = ap_int<5>;
using input_type = ap_uint<6>;

void cic6_top(input_type in, output_type& out);
