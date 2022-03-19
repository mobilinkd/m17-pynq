############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project m17_encoder
set_top m17_encoder_top
add_files m17_encoder/m17_encoder.cpp -cflags "-std=c++17"
add_files m17_encoder/m17_encoder.h
add_files m17_encoder/m17_encoder_top.cpp -cflags "-std=c++17"
add_files m17_encoder/m17_encoder_top.h
add_files -tb m17_encoder/m17_encoder_test.cpp -cflags "-std=c++17 -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {Mobilinkd M17 Stream Encoder} -display_name {Mobilinkd M17 Stream Encoder} -format ip_catalog -library m17_encoder -output /home/rob/m17-pynq/lmx2571/HLS/m17_encoder -rtl verilog -vendor Mobilinkd -version 1.0
config_rtl -reset all
source "./m17_encoder/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/rob/m17-pynq/lmx2571/HLS/m17_encoder
