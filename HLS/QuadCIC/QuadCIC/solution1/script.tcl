############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project QuadCIC
set_top cic_top
add_files cic_top.cpp
add_files cic_top.h
add_files -tb cic_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -description {Quadrature CIC} -display_name {Mobilinkd Quadrature CIC} -format ip_catalog -library quad_cic -output /home/rob/m17-pynq/HLS/QuadCIC/cic_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
config_rtl -reset all
source "./QuadCIC/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/rob/m17-pynq/HLS/QuadCIC/cic_top.zip
