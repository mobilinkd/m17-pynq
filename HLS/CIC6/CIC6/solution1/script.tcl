############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CIC6
set_top cic6_top
add_files cic6_top.cpp
add_files cic6_top.hpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -description {CIC/6 Decimator} -display_name {Mobilinkd CIC/6 Decimator} -format ip_catalog -library cic6 -output /home/rob/m17-pynq/HLS/CIC6/cic6_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
config_rtl -reset all -reset_async
source "./CIC6/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output /home/rob/m17-pynq/HLS/CIC6/cic6_top.zip
