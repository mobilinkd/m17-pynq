############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SimpleCIC
set_top cic_top
add_files cic_top.h
add_files cic_top.cpp
add_files -tb cic_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_rtl -reset all
config_export -description {Simple CIC Decimator} -display_name {Mobilinkd Simple CIC Decimator} -format ip_catalog -library simple_cic -output /home/rob/m17-pynq/HLS/SimpleCIC/cic_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./SimpleCIC/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "Simple CIC Decimator" -vendor "Mobilinkd" -library "simple_cic" -display_name "Mobilinkd Simple CIC Decimator" -output /home/rob/m17-pynq/HLS/SimpleCIC/cic_top.zip
