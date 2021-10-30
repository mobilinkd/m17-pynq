############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FIR
set_top fir_top
add_files fir_top.hpp
add_files fir_top.cpp
add_files -tb fir_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {Low Pass FIR Filter} -display_name {Mobilinkd Low Pass FIR Filter} -format ip_catalog -library fir -output /home/rob/m17-pynq/HLS/FIR/fir_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
config_rtl -reset all
source "./FIR/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "Low Pass FIR Filter" -vendor "Mobilinkd" -library "fir" -display_name "Mobilinkd Low Pass FIR Filter" -output /home/rob/m17-pynq/HLS/FIR/fir_top.zip
