############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS
set_top acg_top
add_files HLS/acg_top.hpp
add_files HLS/acg_top.cpp -cflags "-Wall -std=c++11"
add_files -tb HLS/acg_test.cpp -cflags "-std=c++11 -Wall -Wno-unknown-pragmas"
open_solution "arbitrary_clock_gen_1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -description {Arbitrary Clock Generator} -display_name {Mobilinkd Arbitrary Clock Generator} -format ip_catalog -library acg -rtl verilog -vendor Mobilinkd -vivado_phys_opt place -vivado_report_level 0
#source "./HLS/arbitrary_clock_gen_1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -O -trace_level port
export_design -flow syn -rtl verilog -format ip_catalog -description "Arbitrary Clock Generator" -vendor "Mobilinkd" -library "acg" -display_name "Mobilinkd Arbitrary Clock Generator"
