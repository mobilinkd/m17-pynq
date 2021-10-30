############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project acg
set_top acg_top
add_files acg/acg_top.cpp
add_files acg_top.hpp
add_files -tb acg/acg_test.cpp -cflags "-std=c++11 -Wall -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "arbitrary_clock_gen_1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {Arbitrary Clock Generator} -display_name {Mobilinkd Arbitrary Clock Generator} -library acg -output /home/rob/m17-pynq/HLS/acg_top.zip -vendor Mobilinkd -version 2.0 -vivado_clock 10 -vivado_phys_opt place -vivado_report_level 0
config_rtl -reset all
source "./acg/arbitrary_clock_gen_1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -O -trace_level port
export_design -rtl verilog -format ip_catalog -description "Arbitrary Clock Generator" -vendor "Mobilinkd" -library "acg" -version "2.0" -display_name "Mobilinkd Arbitrary Clock Generator" -output /home/rob/m17-pynq/HLS/acg_top.zip
