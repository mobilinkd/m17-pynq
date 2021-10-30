// Copyright 2021 Mobilinkd LLC <rob@mobilinkd.com>
// All rights reserved.

#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <cstddef>
#include <cstdint>

#include <ap_int.h>
#include <cstddef>

constexpr size_t DIVIDER=32;
constexpr size_t UPSAMPLE=8;

typedef ap_uint<DIVIDER> delay_type;
typedef ap_uint<UPSAMPLE> output_type;

constexpr size_t FRAME_SIZE = 1920;
constexpr size_t Fs = 48000;

typedef ap_uint<32> freq_type;

typedef ap_axis <16,1,1,1> sample_t;

typedef hls::stream<sample_t> sample_stream_type;

void fm_top(freq_type frequency, freq_type deviation, sample_stream_type samples, delay_type& inc, output_type& mod_div, ap_int<16>& baseband);
delay_type compute_inc(freq_type frequency, freq_type deviation, int16_t sample);

