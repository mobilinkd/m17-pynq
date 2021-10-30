############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DAC
set_top dac_top
add_files dac_top.hpp
add_files dac_top.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {Sigma Delta DAC} -display_name {Mobilinkd Sigma Delta DAC} -format ip_catalog -library dac -output /home/rob/m17-pynq/HLS/DAC/dac_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./DAC/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -description "Sigma Delta DAC" -vendor "Mobilinkd" -library "dac" -display_name "Mobilinkd Sigma Delta DAC" -output /home/rob/m17-pynq/HLS/DAC/dac_top.zip
