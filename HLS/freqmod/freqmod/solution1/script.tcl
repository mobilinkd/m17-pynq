############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project freqmod
set_top fm_top
add_files fm_top.hpp
add_files fm_top.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {Frequency Modulator} -display_name {Mobilinkd Frequency Modulator} -format ip_catalog -library freq_mod -output /home/rob/m17-pynq/HLS/freqmod/fm_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./freqmod/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -description "Frequency Modulator" -vendor "Mobilinkd" -library "freq_mod" -display_name "Mobilinkd Frequency Modulator" -output /home/rob/m17-pynq/HLS/freqmod/fm_top.zip
