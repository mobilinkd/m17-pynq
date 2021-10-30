############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project clock_divider
set_top clock_div_top
add_files clock_div.hpp
add_files clock_div.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {Clock Divider} -display_name {Mobilinkd Clock Divider} -format ip_catalog -library clock_divider -output /home/rob/m17-pynq/HLS/clock_divider/clock_div_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./clock_divider/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -description "Clock Divider" -vendor "Mobilinkd" -library "clock_divider" -display_name "Mobilinkd Clock Divider" -output /home/rob/m17-pynq/HLS/clock_divider/clock_div_top.zip
