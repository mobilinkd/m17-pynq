# ==============================================================
# File generated on Sun Jul 21 12:31:56 CDT 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../acg_test.cpp -cflags { -std=c++11 -Wall -Wno-unknown-pragmas}
add_files HLS/acg_top.hpp
add_files HLS/acg_top.cpp -cflags {-Wall -std=c++11}
set_part xc7z020clg400-1
create_clock -name default -period 10
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_export -description {Arbitrary Clock Generator}
config_export -display_name {Mobilinkd Arbitrary Clock Generator}
config_export -format=ip_catalog
config_export -library=acg
config_export -rtl=verilog
config_export -vendor=Mobilinkd
config_export -vivado_phys_opt=place
config_export -vivado_report_level=0
