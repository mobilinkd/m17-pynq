############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXI_FIR
set_top fir_top
add_files fir_top.cpp
add_files fir_top.h
add_files -tb fir_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_rtl -reset all
config_export -description {AXI FIR Filter} -display_name {Mobilinkd AXI FIR Filter} -format ip_catalog -library axi_fir -output /home/rob/m17-pynq/HLS/AXI_FIR/fir_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./AXI_FIR/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "AXI FIR Filter" -vendor "Mobilinkd" -library "axi_fir" -display_name "Mobilinkd AXI FIR Filter" -output /home/rob/m17-pynq/HLS/AXI_FIR/fir_top.zip
