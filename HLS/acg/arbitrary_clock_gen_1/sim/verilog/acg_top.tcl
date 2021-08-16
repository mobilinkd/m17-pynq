
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_acg_top_top/AESL_inst_acg_top/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set agg_group [add_wave_group agg(wire) -into $coutputgroup]
add_wave /apatb_acg_top_top/AESL_inst_acg_top/ap_return -into $agg_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set inc_group [add_wave_group inc(axi_slave) -into $cinputgroup]
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_BRESP -into $inc_group -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_BREADY -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_BVALID -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_RRESP -into $inc_group -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_RDATA -into $inc_group -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_RREADY -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_RVALID -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_ARREADY -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_ARVALID -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_ARADDR -into $inc_group -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_WSTRB -into $inc_group -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_WDATA -into $inc_group -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_WREADY -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_WVALID -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_AWREADY -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_AWVALID -into $inc_group -color #ffff00 -radix hex
add_wave /apatb_acg_top_top/AESL_inst_acg_top/s_axi_AXILiteS_AWADDR -into $inc_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_acg_top_top/AESL_inst_acg_top/ap_start -into $blocksiggroup
add_wave /apatb_acg_top_top/AESL_inst_acg_top/ap_done -into $blocksiggroup
add_wave /apatb_acg_top_top/AESL_inst_acg_top/ap_idle -into $blocksiggroup
add_wave /apatb_acg_top_top/AESL_inst_acg_top/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_acg_top_top/AESL_inst_acg_top/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_acg_top_top/AESL_inst_acg_top/ap_clk -into $clockgroup
save_wave_config acg_top.wcfg
run all
quit

