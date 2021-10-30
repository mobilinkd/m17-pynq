############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FM_Demod
set_top fm_demod_top
add_files fm_demod.h
add_files fm_demod.cpp
add_files -tb fm_demod_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_rtl -reset all
config_export -description {IQ FM Demodulator} -display_name {Mobilinkd IQ FM Demodulator} -format ip_catalog -library fm_demod -output /home/rob/m17-pynq/HLS/FM_Demod/fm_demod_top.zip -rtl verilog -vendor Mobilinkd -version 1.0
source "./FM_Demod/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "IQ FM Demodulator" -vendor "Mobilinkd" -library "fm_demod" -display_name "Mobilinkd IQ FM Demodulator" -output /home/rob/m17-pynq/HLS/FM_Demod/fm_demod_top.zip
