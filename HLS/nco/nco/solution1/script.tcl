############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nco
set_top nco_top
add_files nco_top.cpp
add_files nco_top.hpp
add_files -tb nco_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_rtl -reset all -reset_async
config_export -description {Numerically Controlled Oscillator} -display_name {Mobilinkd NCO} -format ip_catalog -library nco -output /home/rob/m17-pynq/HLS/nco/nco_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./nco/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/rob/m17-pynq/HLS/nco/nco_top.zip
