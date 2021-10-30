############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXI_DAC
set_top dac_top
add_files dac_top.h
add_files dac_top.cpp
add_files -tb dac_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_rtl -reset all
config_export -description {AXI Sigma Delta DAC} -display_name {Mobiilnkd AXI Sigma Delta DAC} -format ip_catalog -library axi_dac -output /home/rob/m17-pynq/HLS/AXI_DAC/dac_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./AXI_DAC/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "AXI Sigma Delta DAC" -vendor "Mobilinkd" -library "axi_dac" -display_name "Mobiilnkd AXI Sigma Delta DAC" -output /home/rob/m17-pynq/HLS/AXI_DAC/dac_top.zip
