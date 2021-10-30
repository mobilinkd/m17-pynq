############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CIC_Resampler
set_top cic_top
add_files cic_top.hpp
add_files cic_top.cpp
add_files -tb cic_test.cpp -cflags "-Wno-unknown-pragmas --std=c++17" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {CIC Decimator} -display_name {Mobilinkd CIC Decimator} -format ip_catalog -library cic_resampler -output /home/rob/m17-pynq/HLS/CIC_Resampler/cic_top.zip -rtl verilog -vendor Mobillinkd -version 1.0
config_rtl -reset all
source "./CIC_Resampler/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "CIC Fractional Resampler" -vendor "Mobillinkd" -library "cic_resampler" -display_name "Mobilinkd CIC Fractional Resampler" -output /home/rob/m17-pynq/HLS/CIC_Resampler/cic_top.zip
