// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Aug 15 11:10:17 2021
// Host        : emerald running 64-bit Fedora release 33 (Thirty Three)
// Command     : write_verilog -force -mode funcsim
//               /home/rob/m17-pynq/Vivado/acg/acg.gen/sources_1/bd/design_1/ip/design_1_acg_top_0_0/design_1_acg_top_0_0_sim_netlist.v
// Design      : design_1_acg_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_acg_top_0_0,acg_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "acg_top,Vivado 2021.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_acg_top_0_0
   (s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n,
    ap_return);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) input [4:0]s_axi_AXILiteS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [4:0]s_axi_AXILiteS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_AXILiteS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_return, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [7:0]ap_return;

  wire \<const0> ;
  wire ap_clk;
  wire [7:0]ap_return;
  wire ap_rst_n;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire [1:0]NLW_inst_s_axi_AXILiteS_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_AXILiteS_RRESP_UNCONNECTED;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_state1 = "1'b1" *) 
  design_1_acg_top_0_0_acg_top inst
       (.ap_clk(ap_clk),
        .ap_return(ap_return),
        .ap_rst_n(ap_rst_n),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(NLW_inst_s_axi_AXILiteS_BRESP_UNCONNECTED[1:0]),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(NLW_inst_s_axi_AXILiteS_RRESP_UNCONNECTED[1:0]),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
endmodule

(* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "acg_top" *) 
(* ap_ST_fsm_state1 = "1'b1" *) (* hls_module = "yes" *) 
module design_1_acg_top_0_0_acg_top
   (ap_clk,
    ap_rst_n,
    ap_return,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_BRESP);
  input ap_clk;
  input ap_rst_n;
  output [7:0]ap_return;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [4:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;

  wire \<const0> ;
  wire [31:2]accumulator_V_0_reg;
  wire acg_top_AXILiteS_s_axi_U_n_0;
  wire acg_top_AXILiteS_s_axi_U_n_1;
  wire acg_top_AXILiteS_s_axi_U_n_10;
  wire acg_top_AXILiteS_s_axi_U_n_11;
  wire acg_top_AXILiteS_s_axi_U_n_12;
  wire acg_top_AXILiteS_s_axi_U_n_13;
  wire acg_top_AXILiteS_s_axi_U_n_14;
  wire acg_top_AXILiteS_s_axi_U_n_15;
  wire acg_top_AXILiteS_s_axi_U_n_16;
  wire acg_top_AXILiteS_s_axi_U_n_17;
  wire acg_top_AXILiteS_s_axi_U_n_18;
  wire acg_top_AXILiteS_s_axi_U_n_19;
  wire acg_top_AXILiteS_s_axi_U_n_2;
  wire acg_top_AXILiteS_s_axi_U_n_20;
  wire acg_top_AXILiteS_s_axi_U_n_21;
  wire acg_top_AXILiteS_s_axi_U_n_22;
  wire acg_top_AXILiteS_s_axi_U_n_23;
  wire acg_top_AXILiteS_s_axi_U_n_24;
  wire acg_top_AXILiteS_s_axi_U_n_25;
  wire acg_top_AXILiteS_s_axi_U_n_26;
  wire acg_top_AXILiteS_s_axi_U_n_27;
  wire acg_top_AXILiteS_s_axi_U_n_28;
  wire acg_top_AXILiteS_s_axi_U_n_29;
  wire acg_top_AXILiteS_s_axi_U_n_3;
  wire acg_top_AXILiteS_s_axi_U_n_4;
  wire acg_top_AXILiteS_s_axi_U_n_5;
  wire acg_top_AXILiteS_s_axi_U_n_6;
  wire acg_top_AXILiteS_s_axi_U_n_7;
  wire acg_top_AXILiteS_s_axi_U_n_8;
  wire acg_top_AXILiteS_s_axi_U_n_9;
  wire ap_clk;
  wire [7:0]ap_return;
  wire ap_rst_n;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_11),
        .Q(accumulator_V_0_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_10),
        .Q(accumulator_V_0_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_9),
        .Q(accumulator_V_0_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_8),
        .Q(accumulator_V_0_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_15),
        .Q(accumulator_V_0_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_14),
        .Q(accumulator_V_0_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_13),
        .Q(accumulator_V_0_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_12),
        .Q(accumulator_V_0_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_19),
        .Q(accumulator_V_0_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_18),
        .Q(accumulator_V_0_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_17),
        .Q(accumulator_V_0_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_16),
        .Q(accumulator_V_0_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_23),
        .Q(accumulator_V_0_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_22),
        .Q(accumulator_V_0_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_21),
        .Q(accumulator_V_0_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_20),
        .Q(accumulator_V_0_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_27),
        .Q(accumulator_V_0_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_26),
        .Q(accumulator_V_0_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_25),
        .Q(accumulator_V_0_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_24),
        .Q(accumulator_V_0_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_3),
        .Q(accumulator_V_0_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_29),
        .Q(accumulator_V_0_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_28),
        .Q(accumulator_V_0_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_2),
        .Q(accumulator_V_0_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_1),
        .Q(accumulator_V_0_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_0),
        .Q(accumulator_V_0_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_7),
        .Q(accumulator_V_0_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_6),
        .Q(accumulator_V_0_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_5),
        .Q(accumulator_V_0_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumulator_V_0_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(acg_top_AXILiteS_s_axi_U_n_4),
        .Q(accumulator_V_0_reg[9]),
        .R(1'b0));
  design_1_acg_top_0_0_acg_top_AXILiteS_s_axi acg_top_AXILiteS_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_AXILiteS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_AXILiteS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_AXILiteS_WREADY),
        .O({acg_top_AXILiteS_s_axi_U_n_0,acg_top_AXILiteS_s_axi_U_n_1,acg_top_AXILiteS_s_axi_U_n_2,acg_top_AXILiteS_s_axi_U_n_3}),
        .accumulator_V_0_reg(accumulator_V_0_reg),
        .ap_clk(ap_clk),
        .ap_return(ap_return),
        .ap_rst_n(ap_rst_n),
        .\int_inc_V_reg[10]_0 ({acg_top_AXILiteS_s_axi_U_n_8,acg_top_AXILiteS_s_axi_U_n_9,acg_top_AXILiteS_s_axi_U_n_10,acg_top_AXILiteS_s_axi_U_n_11}),
        .\int_inc_V_reg[14]_0 ({acg_top_AXILiteS_s_axi_U_n_12,acg_top_AXILiteS_s_axi_U_n_13,acg_top_AXILiteS_s_axi_U_n_14,acg_top_AXILiteS_s_axi_U_n_15}),
        .\int_inc_V_reg[18]_0 ({acg_top_AXILiteS_s_axi_U_n_16,acg_top_AXILiteS_s_axi_U_n_17,acg_top_AXILiteS_s_axi_U_n_18,acg_top_AXILiteS_s_axi_U_n_19}),
        .\int_inc_V_reg[22]_0 ({acg_top_AXILiteS_s_axi_U_n_20,acg_top_AXILiteS_s_axi_U_n_21,acg_top_AXILiteS_s_axi_U_n_22,acg_top_AXILiteS_s_axi_U_n_23}),
        .\int_inc_V_reg[26]_0 ({acg_top_AXILiteS_s_axi_U_n_24,acg_top_AXILiteS_s_axi_U_n_25,acg_top_AXILiteS_s_axi_U_n_26,acg_top_AXILiteS_s_axi_U_n_27}),
        .\int_inc_V_reg[27]_0 ({acg_top_AXILiteS_s_axi_U_n_28,acg_top_AXILiteS_s_axi_U_n_29}),
        .\int_inc_V_reg[6]_0 ({acg_top_AXILiteS_s_axi_U_n_4,acg_top_AXILiteS_s_axi_U_n_5,acg_top_AXILiteS_s_axi_U_n_6,acg_top_AXILiteS_s_axi_U_n_7}),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
endmodule

(* ORIG_REF_NAME = "acg_top_AXILiteS_s_axi" *) 
module design_1_acg_top_0_0_acg_top_AXILiteS_s_axi
   (O,
    \int_inc_V_reg[6]_0 ,
    \int_inc_V_reg[10]_0 ,
    \int_inc_V_reg[14]_0 ,
    \int_inc_V_reg[18]_0 ,
    \int_inc_V_reg[22]_0 ,
    \int_inc_V_reg[26]_0 ,
    \int_inc_V_reg[27]_0 ,
    ap_return,
    s_axi_AXILiteS_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_AXILiteS_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_AXILiteS_RDATA,
    accumulator_V_0_reg,
    ap_rst_n,
    s_axi_AXILiteS_WVALID,
    ap_clk,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_ARADDR);
  output [3:0]O;
  output [3:0]\int_inc_V_reg[6]_0 ;
  output [3:0]\int_inc_V_reg[10]_0 ;
  output [3:0]\int_inc_V_reg[14]_0 ;
  output [3:0]\int_inc_V_reg[18]_0 ;
  output [3:0]\int_inc_V_reg[22]_0 ;
  output [3:0]\int_inc_V_reg[26]_0 ;
  output [1:0]\int_inc_V_reg[27]_0 ;
  output [7:0]ap_return;
  output s_axi_AXILiteS_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_AXILiteS_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output [31:0]s_axi_AXILiteS_RDATA;
  input [29:0]accumulator_V_0_reg;
  input ap_rst_n;
  input s_axi_AXILiteS_WVALID;
  input ap_clk;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_AWVALID;
  input s_axi_AXILiteS_BREADY;
  input s_axi_AXILiteS_ARVALID;
  input s_axi_AXILiteS_RREADY;
  input [4:0]s_axi_AXILiteS_ARADDR;

  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [3:0]O;
  wire \accumulator_V_0[10]_i_2_n_0 ;
  wire \accumulator_V_0[10]_i_3_n_0 ;
  wire \accumulator_V_0[10]_i_4_n_0 ;
  wire \accumulator_V_0[10]_i_5_n_0 ;
  wire \accumulator_V_0[14]_i_2_n_0 ;
  wire \accumulator_V_0[14]_i_3_n_0 ;
  wire \accumulator_V_0[14]_i_4_n_0 ;
  wire \accumulator_V_0[14]_i_5_n_0 ;
  wire \accumulator_V_0[18]_i_2_n_0 ;
  wire \accumulator_V_0[18]_i_3_n_0 ;
  wire \accumulator_V_0[18]_i_4_n_0 ;
  wire \accumulator_V_0[18]_i_5_n_0 ;
  wire \accumulator_V_0[22]_i_2_n_0 ;
  wire \accumulator_V_0[22]_i_3_n_0 ;
  wire \accumulator_V_0[22]_i_4_n_0 ;
  wire \accumulator_V_0[22]_i_5_n_0 ;
  wire \accumulator_V_0[26]_i_2_n_0 ;
  wire \accumulator_V_0[26]_i_3_n_0 ;
  wire \accumulator_V_0[26]_i_4_n_0 ;
  wire \accumulator_V_0[26]_i_5_n_0 ;
  wire \accumulator_V_0[2]_i_2_n_0 ;
  wire \accumulator_V_0[2]_i_3_n_0 ;
  wire \accumulator_V_0[2]_i_4_n_0 ;
  wire \accumulator_V_0[30]_i_2_n_0 ;
  wire \accumulator_V_0[30]_i_3_n_0 ;
  wire \accumulator_V_0[6]_i_2_n_0 ;
  wire \accumulator_V_0[6]_i_3_n_0 ;
  wire \accumulator_V_0[6]_i_4_n_0 ;
  wire \accumulator_V_0[6]_i_5_n_0 ;
  wire [29:0]accumulator_V_0_reg;
  wire \accumulator_V_0_reg[10]_i_1_n_0 ;
  wire \accumulator_V_0_reg[10]_i_1_n_1 ;
  wire \accumulator_V_0_reg[10]_i_1_n_2 ;
  wire \accumulator_V_0_reg[10]_i_1_n_3 ;
  wire \accumulator_V_0_reg[14]_i_1_n_0 ;
  wire \accumulator_V_0_reg[14]_i_1_n_1 ;
  wire \accumulator_V_0_reg[14]_i_1_n_2 ;
  wire \accumulator_V_0_reg[14]_i_1_n_3 ;
  wire \accumulator_V_0_reg[18]_i_1_n_0 ;
  wire \accumulator_V_0_reg[18]_i_1_n_1 ;
  wire \accumulator_V_0_reg[18]_i_1_n_2 ;
  wire \accumulator_V_0_reg[18]_i_1_n_3 ;
  wire \accumulator_V_0_reg[22]_i_1_n_0 ;
  wire \accumulator_V_0_reg[22]_i_1_n_1 ;
  wire \accumulator_V_0_reg[22]_i_1_n_2 ;
  wire \accumulator_V_0_reg[22]_i_1_n_3 ;
  wire \accumulator_V_0_reg[26]_i_1_n_0 ;
  wire \accumulator_V_0_reg[26]_i_1_n_1 ;
  wire \accumulator_V_0_reg[26]_i_1_n_2 ;
  wire \accumulator_V_0_reg[26]_i_1_n_3 ;
  wire \accumulator_V_0_reg[2]_i_1_n_0 ;
  wire \accumulator_V_0_reg[2]_i_1_n_1 ;
  wire \accumulator_V_0_reg[2]_i_1_n_2 ;
  wire \accumulator_V_0_reg[2]_i_1_n_3 ;
  wire \accumulator_V_0_reg[30]_i_1_n_3 ;
  wire \accumulator_V_0_reg[6]_i_1_n_0 ;
  wire \accumulator_V_0_reg[6]_i_1_n_1 ;
  wire \accumulator_V_0_reg[6]_i_1_n_2 ;
  wire \accumulator_V_0_reg[6]_i_1_n_3 ;
  wire ap_clk;
  wire [7:0]ap_return;
  wire \ap_return[0]_INST_0_i_10_n_0 ;
  wire \ap_return[0]_INST_0_i_11_n_0 ;
  wire \ap_return[0]_INST_0_i_12_n_0 ;
  wire \ap_return[0]_INST_0_i_13_n_0 ;
  wire \ap_return[0]_INST_0_i_14_n_0 ;
  wire \ap_return[0]_INST_0_i_14_n_1 ;
  wire \ap_return[0]_INST_0_i_14_n_2 ;
  wire \ap_return[0]_INST_0_i_14_n_3 ;
  wire \ap_return[0]_INST_0_i_15_n_0 ;
  wire \ap_return[0]_INST_0_i_16_n_0 ;
  wire \ap_return[0]_INST_0_i_17_n_0 ;
  wire \ap_return[0]_INST_0_i_18_n_0 ;
  wire \ap_return[0]_INST_0_i_19_n_0 ;
  wire \ap_return[0]_INST_0_i_19_n_1 ;
  wire \ap_return[0]_INST_0_i_19_n_2 ;
  wire \ap_return[0]_INST_0_i_19_n_3 ;
  wire \ap_return[0]_INST_0_i_1_n_0 ;
  wire \ap_return[0]_INST_0_i_1_n_1 ;
  wire \ap_return[0]_INST_0_i_1_n_2 ;
  wire \ap_return[0]_INST_0_i_1_n_3 ;
  wire \ap_return[0]_INST_0_i_20_n_0 ;
  wire \ap_return[0]_INST_0_i_21_n_0 ;
  wire \ap_return[0]_INST_0_i_22_n_0 ;
  wire \ap_return[0]_INST_0_i_23_n_0 ;
  wire \ap_return[0]_INST_0_i_24_n_0 ;
  wire \ap_return[0]_INST_0_i_24_n_1 ;
  wire \ap_return[0]_INST_0_i_24_n_2 ;
  wire \ap_return[0]_INST_0_i_24_n_3 ;
  wire \ap_return[0]_INST_0_i_25_n_0 ;
  wire \ap_return[0]_INST_0_i_26_n_0 ;
  wire \ap_return[0]_INST_0_i_27_n_0 ;
  wire \ap_return[0]_INST_0_i_28_n_0 ;
  wire \ap_return[0]_INST_0_i_29_n_0 ;
  wire \ap_return[0]_INST_0_i_29_n_1 ;
  wire \ap_return[0]_INST_0_i_29_n_2 ;
  wire \ap_return[0]_INST_0_i_29_n_3 ;
  wire \ap_return[0]_INST_0_i_2_n_0 ;
  wire \ap_return[0]_INST_0_i_30_n_0 ;
  wire \ap_return[0]_INST_0_i_31_n_0 ;
  wire \ap_return[0]_INST_0_i_32_n_0 ;
  wire \ap_return[0]_INST_0_i_33_n_0 ;
  wire \ap_return[0]_INST_0_i_34_n_0 ;
  wire \ap_return[0]_INST_0_i_35_n_0 ;
  wire \ap_return[0]_INST_0_i_36_n_0 ;
  wire \ap_return[0]_INST_0_i_37_n_0 ;
  wire \ap_return[0]_INST_0_i_3_n_0 ;
  wire \ap_return[0]_INST_0_i_4_n_0 ;
  wire \ap_return[0]_INST_0_i_4_n_1 ;
  wire \ap_return[0]_INST_0_i_4_n_2 ;
  wire \ap_return[0]_INST_0_i_4_n_3 ;
  wire \ap_return[0]_INST_0_i_5_n_0 ;
  wire \ap_return[0]_INST_0_i_6_n_0 ;
  wire \ap_return[0]_INST_0_i_7_n_0 ;
  wire \ap_return[0]_INST_0_i_8_n_0 ;
  wire \ap_return[0]_INST_0_i_9_n_0 ;
  wire \ap_return[0]_INST_0_i_9_n_1 ;
  wire \ap_return[0]_INST_0_i_9_n_2 ;
  wire \ap_return[0]_INST_0_i_9_n_3 ;
  wire \ap_return[0]_INST_0_n_3 ;
  wire \ap_return[1]_INST_0_i_10_n_0 ;
  wire \ap_return[1]_INST_0_i_11_n_0 ;
  wire \ap_return[1]_INST_0_i_11_n_1 ;
  wire \ap_return[1]_INST_0_i_11_n_2 ;
  wire \ap_return[1]_INST_0_i_11_n_3 ;
  wire \ap_return[1]_INST_0_i_12_n_0 ;
  wire \ap_return[1]_INST_0_i_13_n_0 ;
  wire \ap_return[1]_INST_0_i_14_n_0 ;
  wire \ap_return[1]_INST_0_i_15_n_0 ;
  wire \ap_return[1]_INST_0_i_16_n_0 ;
  wire \ap_return[1]_INST_0_i_16_n_1 ;
  wire \ap_return[1]_INST_0_i_16_n_2 ;
  wire \ap_return[1]_INST_0_i_16_n_3 ;
  wire \ap_return[1]_INST_0_i_17_n_0 ;
  wire \ap_return[1]_INST_0_i_18_n_0 ;
  wire \ap_return[1]_INST_0_i_19_n_0 ;
  wire \ap_return[1]_INST_0_i_1_n_0 ;
  wire \ap_return[1]_INST_0_i_1_n_1 ;
  wire \ap_return[1]_INST_0_i_1_n_2 ;
  wire \ap_return[1]_INST_0_i_1_n_3 ;
  wire \ap_return[1]_INST_0_i_20_n_0 ;
  wire \ap_return[1]_INST_0_i_21_n_0 ;
  wire \ap_return[1]_INST_0_i_21_n_1 ;
  wire \ap_return[1]_INST_0_i_21_n_2 ;
  wire \ap_return[1]_INST_0_i_21_n_3 ;
  wire \ap_return[1]_INST_0_i_22_n_0 ;
  wire \ap_return[1]_INST_0_i_23_n_0 ;
  wire \ap_return[1]_INST_0_i_24_n_0 ;
  wire \ap_return[1]_INST_0_i_25_n_0 ;
  wire \ap_return[1]_INST_0_i_26_n_0 ;
  wire \ap_return[1]_INST_0_i_26_n_1 ;
  wire \ap_return[1]_INST_0_i_26_n_2 ;
  wire \ap_return[1]_INST_0_i_26_n_3 ;
  wire \ap_return[1]_INST_0_i_27_n_0 ;
  wire \ap_return[1]_INST_0_i_28_n_0 ;
  wire \ap_return[1]_INST_0_i_29_n_0 ;
  wire \ap_return[1]_INST_0_i_2_n_0 ;
  wire \ap_return[1]_INST_0_i_30_n_0 ;
  wire \ap_return[1]_INST_0_i_31_n_0 ;
  wire \ap_return[1]_INST_0_i_31_n_1 ;
  wire \ap_return[1]_INST_0_i_31_n_2 ;
  wire \ap_return[1]_INST_0_i_31_n_3 ;
  wire \ap_return[1]_INST_0_i_32_n_0 ;
  wire \ap_return[1]_INST_0_i_33_n_0 ;
  wire \ap_return[1]_INST_0_i_34_n_0 ;
  wire \ap_return[1]_INST_0_i_35_n_0 ;
  wire \ap_return[1]_INST_0_i_36_n_0 ;
  wire \ap_return[1]_INST_0_i_37_n_0 ;
  wire \ap_return[1]_INST_0_i_3_n_0 ;
  wire \ap_return[1]_INST_0_i_4_n_0 ;
  wire \ap_return[1]_INST_0_i_5_n_0 ;
  wire \ap_return[1]_INST_0_i_6_n_0 ;
  wire \ap_return[1]_INST_0_i_6_n_1 ;
  wire \ap_return[1]_INST_0_i_6_n_2 ;
  wire \ap_return[1]_INST_0_i_6_n_3 ;
  wire \ap_return[1]_INST_0_i_7_n_0 ;
  wire \ap_return[1]_INST_0_i_8_n_0 ;
  wire \ap_return[1]_INST_0_i_9_n_0 ;
  wire \ap_return[1]_INST_0_n_1 ;
  wire \ap_return[1]_INST_0_n_2 ;
  wire \ap_return[1]_INST_0_n_3 ;
  wire \ap_return[2]_INST_0_i_10_n_0 ;
  wire \ap_return[2]_INST_0_i_11_n_0 ;
  wire \ap_return[2]_INST_0_i_12_n_0 ;
  wire \ap_return[2]_INST_0_i_13_n_0 ;
  wire \ap_return[2]_INST_0_i_14_n_0 ;
  wire \ap_return[2]_INST_0_i_15_n_0 ;
  wire \ap_return[2]_INST_0_i_16_n_0 ;
  wire \ap_return[2]_INST_0_i_16_n_1 ;
  wire \ap_return[2]_INST_0_i_16_n_2 ;
  wire \ap_return[2]_INST_0_i_16_n_3 ;
  wire \ap_return[2]_INST_0_i_17_n_0 ;
  wire \ap_return[2]_INST_0_i_18_n_0 ;
  wire \ap_return[2]_INST_0_i_19_n_0 ;
  wire \ap_return[2]_INST_0_i_1_n_0 ;
  wire \ap_return[2]_INST_0_i_1_n_1 ;
  wire \ap_return[2]_INST_0_i_1_n_2 ;
  wire \ap_return[2]_INST_0_i_1_n_3 ;
  wire \ap_return[2]_INST_0_i_20_n_0 ;
  wire \ap_return[2]_INST_0_i_21_n_0 ;
  wire \ap_return[2]_INST_0_i_22_n_0 ;
  wire \ap_return[2]_INST_0_i_23_n_0 ;
  wire \ap_return[2]_INST_0_i_24_n_0 ;
  wire \ap_return[2]_INST_0_i_25_n_0 ;
  wire \ap_return[2]_INST_0_i_25_n_1 ;
  wire \ap_return[2]_INST_0_i_25_n_2 ;
  wire \ap_return[2]_INST_0_i_25_n_3 ;
  wire \ap_return[2]_INST_0_i_26_n_0 ;
  wire \ap_return[2]_INST_0_i_27_n_0 ;
  wire \ap_return[2]_INST_0_i_28_n_0 ;
  wire \ap_return[2]_INST_0_i_29_n_0 ;
  wire \ap_return[2]_INST_0_i_2_n_0 ;
  wire \ap_return[2]_INST_0_i_30_n_0 ;
  wire \ap_return[2]_INST_0_i_31_n_0 ;
  wire \ap_return[2]_INST_0_i_32_n_0 ;
  wire \ap_return[2]_INST_0_i_33_n_0 ;
  wire \ap_return[2]_INST_0_i_34_n_0 ;
  wire \ap_return[2]_INST_0_i_34_n_1 ;
  wire \ap_return[2]_INST_0_i_34_n_2 ;
  wire \ap_return[2]_INST_0_i_34_n_3 ;
  wire \ap_return[2]_INST_0_i_35_n_0 ;
  wire \ap_return[2]_INST_0_i_36_n_0 ;
  wire \ap_return[2]_INST_0_i_37_n_0 ;
  wire \ap_return[2]_INST_0_i_38_n_0 ;
  wire \ap_return[2]_INST_0_i_39_n_0 ;
  wire \ap_return[2]_INST_0_i_3_n_0 ;
  wire \ap_return[2]_INST_0_i_40_n_0 ;
  wire \ap_return[2]_INST_0_i_41_n_0 ;
  wire \ap_return[2]_INST_0_i_42_n_0 ;
  wire \ap_return[2]_INST_0_i_43_n_0 ;
  wire \ap_return[2]_INST_0_i_43_n_1 ;
  wire \ap_return[2]_INST_0_i_43_n_2 ;
  wire \ap_return[2]_INST_0_i_43_n_3 ;
  wire \ap_return[2]_INST_0_i_44_n_0 ;
  wire \ap_return[2]_INST_0_i_45_n_0 ;
  wire \ap_return[2]_INST_0_i_46_n_0 ;
  wire \ap_return[2]_INST_0_i_47_n_0 ;
  wire \ap_return[2]_INST_0_i_48_n_0 ;
  wire \ap_return[2]_INST_0_i_49_n_0 ;
  wire \ap_return[2]_INST_0_i_4_n_0 ;
  wire \ap_return[2]_INST_0_i_50_n_0 ;
  wire \ap_return[2]_INST_0_i_51_n_0 ;
  wire \ap_return[2]_INST_0_i_52_n_0 ;
  wire \ap_return[2]_INST_0_i_52_n_1 ;
  wire \ap_return[2]_INST_0_i_52_n_2 ;
  wire \ap_return[2]_INST_0_i_52_n_3 ;
  wire \ap_return[2]_INST_0_i_53_n_0 ;
  wire \ap_return[2]_INST_0_i_54_n_0 ;
  wire \ap_return[2]_INST_0_i_55_n_0 ;
  wire \ap_return[2]_INST_0_i_56_n_0 ;
  wire \ap_return[2]_INST_0_i_57_n_0 ;
  wire \ap_return[2]_INST_0_i_58_n_0 ;
  wire \ap_return[2]_INST_0_i_59_n_0 ;
  wire \ap_return[2]_INST_0_i_5_n_0 ;
  wire \ap_return[2]_INST_0_i_60_n_0 ;
  wire \ap_return[2]_INST_0_i_61_n_0 ;
  wire \ap_return[2]_INST_0_i_62_n_0 ;
  wire \ap_return[2]_INST_0_i_63_n_0 ;
  wire \ap_return[2]_INST_0_i_64_n_0 ;
  wire \ap_return[2]_INST_0_i_65_n_0 ;
  wire \ap_return[2]_INST_0_i_66_n_0 ;
  wire \ap_return[2]_INST_0_i_6_n_0 ;
  wire \ap_return[2]_INST_0_i_7_n_0 ;
  wire \ap_return[2]_INST_0_i_7_n_1 ;
  wire \ap_return[2]_INST_0_i_7_n_2 ;
  wire \ap_return[2]_INST_0_i_7_n_3 ;
  wire \ap_return[2]_INST_0_i_8_n_0 ;
  wire \ap_return[2]_INST_0_i_9_n_0 ;
  wire \ap_return[2]_INST_0_n_2 ;
  wire \ap_return[2]_INST_0_n_3 ;
  wire \ap_return[3]_INST_0_i_10_n_0 ;
  wire \ap_return[3]_INST_0_i_10_n_1 ;
  wire \ap_return[3]_INST_0_i_10_n_2 ;
  wire \ap_return[3]_INST_0_i_10_n_3 ;
  wire \ap_return[3]_INST_0_i_11_n_0 ;
  wire \ap_return[3]_INST_0_i_12_n_0 ;
  wire \ap_return[3]_INST_0_i_13_n_0 ;
  wire \ap_return[3]_INST_0_i_14_n_0 ;
  wire \ap_return[3]_INST_0_i_15_n_0 ;
  wire \ap_return[3]_INST_0_i_15_n_1 ;
  wire \ap_return[3]_INST_0_i_15_n_2 ;
  wire \ap_return[3]_INST_0_i_15_n_3 ;
  wire \ap_return[3]_INST_0_i_16_n_0 ;
  wire \ap_return[3]_INST_0_i_17_n_0 ;
  wire \ap_return[3]_INST_0_i_18_n_0 ;
  wire \ap_return[3]_INST_0_i_19_n_0 ;
  wire \ap_return[3]_INST_0_i_1_n_0 ;
  wire \ap_return[3]_INST_0_i_1_n_1 ;
  wire \ap_return[3]_INST_0_i_1_n_2 ;
  wire \ap_return[3]_INST_0_i_1_n_3 ;
  wire \ap_return[3]_INST_0_i_20_n_0 ;
  wire \ap_return[3]_INST_0_i_20_n_1 ;
  wire \ap_return[3]_INST_0_i_20_n_2 ;
  wire \ap_return[3]_INST_0_i_20_n_3 ;
  wire \ap_return[3]_INST_0_i_21_n_0 ;
  wire \ap_return[3]_INST_0_i_22_n_0 ;
  wire \ap_return[3]_INST_0_i_23_n_0 ;
  wire \ap_return[3]_INST_0_i_24_n_0 ;
  wire \ap_return[3]_INST_0_i_25_n_0 ;
  wire \ap_return[3]_INST_0_i_25_n_1 ;
  wire \ap_return[3]_INST_0_i_25_n_2 ;
  wire \ap_return[3]_INST_0_i_25_n_3 ;
  wire \ap_return[3]_INST_0_i_26_n_0 ;
  wire \ap_return[3]_INST_0_i_27_n_0 ;
  wire \ap_return[3]_INST_0_i_28_n_0 ;
  wire \ap_return[3]_INST_0_i_29_n_0 ;
  wire \ap_return[3]_INST_0_i_2_n_0 ;
  wire \ap_return[3]_INST_0_i_30_n_0 ;
  wire \ap_return[3]_INST_0_i_30_n_1 ;
  wire \ap_return[3]_INST_0_i_30_n_2 ;
  wire \ap_return[3]_INST_0_i_30_n_3 ;
  wire \ap_return[3]_INST_0_i_31_n_0 ;
  wire \ap_return[3]_INST_0_i_32_n_0 ;
  wire \ap_return[3]_INST_0_i_33_n_0 ;
  wire \ap_return[3]_INST_0_i_34_n_0 ;
  wire \ap_return[3]_INST_0_i_35_n_0 ;
  wire \ap_return[3]_INST_0_i_36_n_0 ;
  wire \ap_return[3]_INST_0_i_37_n_0 ;
  wire \ap_return[3]_INST_0_i_3_n_0 ;
  wire \ap_return[3]_INST_0_i_4_n_0 ;
  wire \ap_return[3]_INST_0_i_5_n_0 ;
  wire \ap_return[3]_INST_0_i_5_n_1 ;
  wire \ap_return[3]_INST_0_i_5_n_2 ;
  wire \ap_return[3]_INST_0_i_5_n_3 ;
  wire \ap_return[3]_INST_0_i_6_n_0 ;
  wire \ap_return[3]_INST_0_i_7_n_0 ;
  wire \ap_return[3]_INST_0_i_8_n_0 ;
  wire \ap_return[3]_INST_0_i_9_n_0 ;
  wire \ap_return[3]_INST_0_n_2 ;
  wire \ap_return[3]_INST_0_n_3 ;
  wire \ap_return[4]_INST_0_i_10_n_0 ;
  wire \ap_return[4]_INST_0_i_11_n_0 ;
  wire \ap_return[4]_INST_0_i_12_n_0 ;
  wire \ap_return[4]_INST_0_i_13_n_0 ;
  wire \ap_return[4]_INST_0_i_14_n_0 ;
  wire \ap_return[4]_INST_0_i_14_n_1 ;
  wire \ap_return[4]_INST_0_i_14_n_2 ;
  wire \ap_return[4]_INST_0_i_14_n_3 ;
  wire \ap_return[4]_INST_0_i_15_n_0 ;
  wire \ap_return[4]_INST_0_i_16_n_0 ;
  wire \ap_return[4]_INST_0_i_17_n_0 ;
  wire \ap_return[4]_INST_0_i_18_n_0 ;
  wire \ap_return[4]_INST_0_i_19_n_0 ;
  wire \ap_return[4]_INST_0_i_1_n_0 ;
  wire \ap_return[4]_INST_0_i_1_n_1 ;
  wire \ap_return[4]_INST_0_i_1_n_2 ;
  wire \ap_return[4]_INST_0_i_1_n_3 ;
  wire \ap_return[4]_INST_0_i_20_n_0 ;
  wire \ap_return[4]_INST_0_i_21_n_0 ;
  wire \ap_return[4]_INST_0_i_22_n_0 ;
  wire \ap_return[4]_INST_0_i_23_n_0 ;
  wire \ap_return[4]_INST_0_i_23_n_1 ;
  wire \ap_return[4]_INST_0_i_23_n_2 ;
  wire \ap_return[4]_INST_0_i_23_n_3 ;
  wire \ap_return[4]_INST_0_i_24_n_0 ;
  wire \ap_return[4]_INST_0_i_25_n_0 ;
  wire \ap_return[4]_INST_0_i_26_n_0 ;
  wire \ap_return[4]_INST_0_i_27_n_0 ;
  wire \ap_return[4]_INST_0_i_28_n_0 ;
  wire \ap_return[4]_INST_0_i_29_n_0 ;
  wire \ap_return[4]_INST_0_i_2_n_0 ;
  wire \ap_return[4]_INST_0_i_30_n_0 ;
  wire \ap_return[4]_INST_0_i_31_n_0 ;
  wire \ap_return[4]_INST_0_i_32_n_0 ;
  wire \ap_return[4]_INST_0_i_32_n_1 ;
  wire \ap_return[4]_INST_0_i_32_n_2 ;
  wire \ap_return[4]_INST_0_i_32_n_3 ;
  wire \ap_return[4]_INST_0_i_33_n_0 ;
  wire \ap_return[4]_INST_0_i_34_n_0 ;
  wire \ap_return[4]_INST_0_i_35_n_0 ;
  wire \ap_return[4]_INST_0_i_36_n_0 ;
  wire \ap_return[4]_INST_0_i_37_n_0 ;
  wire \ap_return[4]_INST_0_i_38_n_0 ;
  wire \ap_return[4]_INST_0_i_39_n_0 ;
  wire \ap_return[4]_INST_0_i_3_n_0 ;
  wire \ap_return[4]_INST_0_i_40_n_0 ;
  wire \ap_return[4]_INST_0_i_41_n_0 ;
  wire \ap_return[4]_INST_0_i_41_n_1 ;
  wire \ap_return[4]_INST_0_i_41_n_2 ;
  wire \ap_return[4]_INST_0_i_41_n_3 ;
  wire \ap_return[4]_INST_0_i_42_n_0 ;
  wire \ap_return[4]_INST_0_i_43_n_0 ;
  wire \ap_return[4]_INST_0_i_44_n_0 ;
  wire \ap_return[4]_INST_0_i_45_n_0 ;
  wire \ap_return[4]_INST_0_i_46_n_0 ;
  wire \ap_return[4]_INST_0_i_47_n_0 ;
  wire \ap_return[4]_INST_0_i_48_n_0 ;
  wire \ap_return[4]_INST_0_i_49_n_0 ;
  wire \ap_return[4]_INST_0_i_4_n_0 ;
  wire \ap_return[4]_INST_0_i_50_n_0 ;
  wire \ap_return[4]_INST_0_i_50_n_1 ;
  wire \ap_return[4]_INST_0_i_50_n_2 ;
  wire \ap_return[4]_INST_0_i_50_n_3 ;
  wire \ap_return[4]_INST_0_i_51_n_0 ;
  wire \ap_return[4]_INST_0_i_52_n_0 ;
  wire \ap_return[4]_INST_0_i_53_n_0 ;
  wire \ap_return[4]_INST_0_i_54_n_0 ;
  wire \ap_return[4]_INST_0_i_55_n_0 ;
  wire \ap_return[4]_INST_0_i_56_n_0 ;
  wire \ap_return[4]_INST_0_i_57_n_0 ;
  wire \ap_return[4]_INST_0_i_58_n_0 ;
  wire \ap_return[4]_INST_0_i_59_n_0 ;
  wire \ap_return[4]_INST_0_i_5_n_0 ;
  wire \ap_return[4]_INST_0_i_5_n_1 ;
  wire \ap_return[4]_INST_0_i_5_n_2 ;
  wire \ap_return[4]_INST_0_i_5_n_3 ;
  wire \ap_return[4]_INST_0_i_60_n_0 ;
  wire \ap_return[4]_INST_0_i_61_n_0 ;
  wire \ap_return[4]_INST_0_i_62_n_0 ;
  wire \ap_return[4]_INST_0_i_63_n_0 ;
  wire \ap_return[4]_INST_0_i_64_n_0 ;
  wire \ap_return[4]_INST_0_i_65_n_0 ;
  wire \ap_return[4]_INST_0_i_6_n_0 ;
  wire \ap_return[4]_INST_0_i_7_n_0 ;
  wire \ap_return[4]_INST_0_i_8_n_0 ;
  wire \ap_return[4]_INST_0_i_9_n_0 ;
  wire \ap_return[4]_INST_0_n_3 ;
  wire \ap_return[5]_INST_0_i_10_n_0 ;
  wire \ap_return[5]_INST_0_i_11_n_0 ;
  wire \ap_return[5]_INST_0_i_12_n_0 ;
  wire \ap_return[5]_INST_0_i_13_n_0 ;
  wire \ap_return[5]_INST_0_i_14_n_0 ;
  wire \ap_return[5]_INST_0_i_15_n_0 ;
  wire \ap_return[5]_INST_0_i_16_n_0 ;
  wire \ap_return[5]_INST_0_i_16_n_1 ;
  wire \ap_return[5]_INST_0_i_16_n_2 ;
  wire \ap_return[5]_INST_0_i_16_n_3 ;
  wire \ap_return[5]_INST_0_i_17_n_0 ;
  wire \ap_return[5]_INST_0_i_18_n_0 ;
  wire \ap_return[5]_INST_0_i_19_n_0 ;
  wire \ap_return[5]_INST_0_i_1_n_0 ;
  wire \ap_return[5]_INST_0_i_1_n_1 ;
  wire \ap_return[5]_INST_0_i_1_n_2 ;
  wire \ap_return[5]_INST_0_i_1_n_3 ;
  wire \ap_return[5]_INST_0_i_20_n_0 ;
  wire \ap_return[5]_INST_0_i_21_n_0 ;
  wire \ap_return[5]_INST_0_i_22_n_0 ;
  wire \ap_return[5]_INST_0_i_23_n_0 ;
  wire \ap_return[5]_INST_0_i_24_n_0 ;
  wire \ap_return[5]_INST_0_i_25_n_0 ;
  wire \ap_return[5]_INST_0_i_25_n_1 ;
  wire \ap_return[5]_INST_0_i_25_n_2 ;
  wire \ap_return[5]_INST_0_i_25_n_3 ;
  wire \ap_return[5]_INST_0_i_26_n_0 ;
  wire \ap_return[5]_INST_0_i_27_n_0 ;
  wire \ap_return[5]_INST_0_i_28_n_0 ;
  wire \ap_return[5]_INST_0_i_29_n_0 ;
  wire \ap_return[5]_INST_0_i_2_n_0 ;
  wire \ap_return[5]_INST_0_i_30_n_0 ;
  wire \ap_return[5]_INST_0_i_31_n_0 ;
  wire \ap_return[5]_INST_0_i_32_n_0 ;
  wire \ap_return[5]_INST_0_i_33_n_0 ;
  wire \ap_return[5]_INST_0_i_34_n_0 ;
  wire \ap_return[5]_INST_0_i_34_n_1 ;
  wire \ap_return[5]_INST_0_i_34_n_2 ;
  wire \ap_return[5]_INST_0_i_34_n_3 ;
  wire \ap_return[5]_INST_0_i_35_n_0 ;
  wire \ap_return[5]_INST_0_i_36_n_0 ;
  wire \ap_return[5]_INST_0_i_37_n_0 ;
  wire \ap_return[5]_INST_0_i_38_n_0 ;
  wire \ap_return[5]_INST_0_i_39_n_0 ;
  wire \ap_return[5]_INST_0_i_3_n_0 ;
  wire \ap_return[5]_INST_0_i_40_n_0 ;
  wire \ap_return[5]_INST_0_i_41_n_0 ;
  wire \ap_return[5]_INST_0_i_42_n_0 ;
  wire \ap_return[5]_INST_0_i_43_n_0 ;
  wire \ap_return[5]_INST_0_i_43_n_1 ;
  wire \ap_return[5]_INST_0_i_43_n_2 ;
  wire \ap_return[5]_INST_0_i_43_n_3 ;
  wire \ap_return[5]_INST_0_i_44_n_0 ;
  wire \ap_return[5]_INST_0_i_45_n_0 ;
  wire \ap_return[5]_INST_0_i_46_n_0 ;
  wire \ap_return[5]_INST_0_i_47_n_0 ;
  wire \ap_return[5]_INST_0_i_48_n_0 ;
  wire \ap_return[5]_INST_0_i_49_n_0 ;
  wire \ap_return[5]_INST_0_i_4_n_0 ;
  wire \ap_return[5]_INST_0_i_50_n_0 ;
  wire \ap_return[5]_INST_0_i_51_n_0 ;
  wire \ap_return[5]_INST_0_i_52_n_0 ;
  wire \ap_return[5]_INST_0_i_52_n_1 ;
  wire \ap_return[5]_INST_0_i_52_n_2 ;
  wire \ap_return[5]_INST_0_i_52_n_3 ;
  wire \ap_return[5]_INST_0_i_53_n_0 ;
  wire \ap_return[5]_INST_0_i_54_n_0 ;
  wire \ap_return[5]_INST_0_i_55_n_0 ;
  wire \ap_return[5]_INST_0_i_56_n_0 ;
  wire \ap_return[5]_INST_0_i_57_n_0 ;
  wire \ap_return[5]_INST_0_i_58_n_0 ;
  wire \ap_return[5]_INST_0_i_59_n_0 ;
  wire \ap_return[5]_INST_0_i_5_n_0 ;
  wire \ap_return[5]_INST_0_i_60_n_0 ;
  wire \ap_return[5]_INST_0_i_61_n_0 ;
  wire \ap_return[5]_INST_0_i_62_n_0 ;
  wire \ap_return[5]_INST_0_i_63_n_0 ;
  wire \ap_return[5]_INST_0_i_64_n_0 ;
  wire \ap_return[5]_INST_0_i_65_n_0 ;
  wire \ap_return[5]_INST_0_i_66_n_0 ;
  wire \ap_return[5]_INST_0_i_6_n_0 ;
  wire \ap_return[5]_INST_0_i_7_n_0 ;
  wire \ap_return[5]_INST_0_i_7_n_1 ;
  wire \ap_return[5]_INST_0_i_7_n_2 ;
  wire \ap_return[5]_INST_0_i_7_n_3 ;
  wire \ap_return[5]_INST_0_i_8_n_0 ;
  wire \ap_return[5]_INST_0_i_9_n_0 ;
  wire \ap_return[5]_INST_0_n_2 ;
  wire \ap_return[5]_INST_0_n_3 ;
  wire \ap_return[6]_INST_0_i_10_n_0 ;
  wire \ap_return[6]_INST_0_i_11_n_0 ;
  wire \ap_return[6]_INST_0_i_12_n_0 ;
  wire \ap_return[6]_INST_0_i_13_n_0 ;
  wire \ap_return[6]_INST_0_i_14_n_0 ;
  wire \ap_return[6]_INST_0_i_15_n_0 ;
  wire \ap_return[6]_INST_0_i_16_n_0 ;
  wire \ap_return[6]_INST_0_i_16_n_1 ;
  wire \ap_return[6]_INST_0_i_16_n_2 ;
  wire \ap_return[6]_INST_0_i_16_n_3 ;
  wire \ap_return[6]_INST_0_i_17_n_0 ;
  wire \ap_return[6]_INST_0_i_18_n_0 ;
  wire \ap_return[6]_INST_0_i_19_n_0 ;
  wire \ap_return[6]_INST_0_i_1_n_0 ;
  wire \ap_return[6]_INST_0_i_1_n_1 ;
  wire \ap_return[6]_INST_0_i_1_n_2 ;
  wire \ap_return[6]_INST_0_i_1_n_3 ;
  wire \ap_return[6]_INST_0_i_20_n_0 ;
  wire \ap_return[6]_INST_0_i_21_n_0 ;
  wire \ap_return[6]_INST_0_i_22_n_0 ;
  wire \ap_return[6]_INST_0_i_23_n_0 ;
  wire \ap_return[6]_INST_0_i_24_n_0 ;
  wire \ap_return[6]_INST_0_i_25_n_0 ;
  wire \ap_return[6]_INST_0_i_25_n_1 ;
  wire \ap_return[6]_INST_0_i_25_n_2 ;
  wire \ap_return[6]_INST_0_i_25_n_3 ;
  wire \ap_return[6]_INST_0_i_26_n_0 ;
  wire \ap_return[6]_INST_0_i_27_n_0 ;
  wire \ap_return[6]_INST_0_i_28_n_0 ;
  wire \ap_return[6]_INST_0_i_29_n_0 ;
  wire \ap_return[6]_INST_0_i_2_n_0 ;
  wire \ap_return[6]_INST_0_i_30_n_0 ;
  wire \ap_return[6]_INST_0_i_31_n_0 ;
  wire \ap_return[6]_INST_0_i_32_n_0 ;
  wire \ap_return[6]_INST_0_i_33_n_0 ;
  wire \ap_return[6]_INST_0_i_34_n_0 ;
  wire \ap_return[6]_INST_0_i_34_n_1 ;
  wire \ap_return[6]_INST_0_i_34_n_2 ;
  wire \ap_return[6]_INST_0_i_34_n_3 ;
  wire \ap_return[6]_INST_0_i_35_n_0 ;
  wire \ap_return[6]_INST_0_i_36_n_0 ;
  wire \ap_return[6]_INST_0_i_37_n_0 ;
  wire \ap_return[6]_INST_0_i_38_n_0 ;
  wire \ap_return[6]_INST_0_i_39_n_0 ;
  wire \ap_return[6]_INST_0_i_3_n_0 ;
  wire \ap_return[6]_INST_0_i_40_n_0 ;
  wire \ap_return[6]_INST_0_i_41_n_0 ;
  wire \ap_return[6]_INST_0_i_42_n_0 ;
  wire \ap_return[6]_INST_0_i_43_n_0 ;
  wire \ap_return[6]_INST_0_i_43_n_1 ;
  wire \ap_return[6]_INST_0_i_43_n_2 ;
  wire \ap_return[6]_INST_0_i_43_n_3 ;
  wire \ap_return[6]_INST_0_i_44_n_0 ;
  wire \ap_return[6]_INST_0_i_45_n_0 ;
  wire \ap_return[6]_INST_0_i_46_n_0 ;
  wire \ap_return[6]_INST_0_i_47_n_0 ;
  wire \ap_return[6]_INST_0_i_48_n_0 ;
  wire \ap_return[6]_INST_0_i_49_n_0 ;
  wire \ap_return[6]_INST_0_i_4_n_0 ;
  wire \ap_return[6]_INST_0_i_50_n_0 ;
  wire \ap_return[6]_INST_0_i_51_n_0 ;
  wire \ap_return[6]_INST_0_i_52_n_0 ;
  wire \ap_return[6]_INST_0_i_52_n_1 ;
  wire \ap_return[6]_INST_0_i_52_n_2 ;
  wire \ap_return[6]_INST_0_i_52_n_3 ;
  wire \ap_return[6]_INST_0_i_53_n_0 ;
  wire \ap_return[6]_INST_0_i_54_n_0 ;
  wire \ap_return[6]_INST_0_i_55_n_0 ;
  wire \ap_return[6]_INST_0_i_56_n_0 ;
  wire \ap_return[6]_INST_0_i_57_n_0 ;
  wire \ap_return[6]_INST_0_i_58_n_0 ;
  wire \ap_return[6]_INST_0_i_59_n_0 ;
  wire \ap_return[6]_INST_0_i_5_n_0 ;
  wire \ap_return[6]_INST_0_i_60_n_0 ;
  wire \ap_return[6]_INST_0_i_62_n_0 ;
  wire \ap_return[6]_INST_0_i_63_n_0 ;
  wire \ap_return[6]_INST_0_i_64_n_0 ;
  wire \ap_return[6]_INST_0_i_65_n_0 ;
  wire \ap_return[6]_INST_0_i_6_n_0 ;
  wire \ap_return[6]_INST_0_i_7_n_0 ;
  wire \ap_return[6]_INST_0_i_7_n_1 ;
  wire \ap_return[6]_INST_0_i_7_n_2 ;
  wire \ap_return[6]_INST_0_i_7_n_3 ;
  wire \ap_return[6]_INST_0_i_8_n_0 ;
  wire \ap_return[6]_INST_0_i_9_n_0 ;
  wire \ap_return[6]_INST_0_n_2 ;
  wire \ap_return[6]_INST_0_n_3 ;
  wire \ap_return[7]_INST_0_i_10_n_0 ;
  wire \ap_return[7]_INST_0_i_11_n_0 ;
  wire \ap_return[7]_INST_0_i_12_n_0 ;
  wire \ap_return[7]_INST_0_i_13_n_0 ;
  wire \ap_return[7]_INST_0_i_14_n_0 ;
  wire \ap_return[7]_INST_0_i_14_n_1 ;
  wire \ap_return[7]_INST_0_i_14_n_2 ;
  wire \ap_return[7]_INST_0_i_14_n_3 ;
  wire \ap_return[7]_INST_0_i_15_n_0 ;
  wire \ap_return[7]_INST_0_i_16_n_0 ;
  wire \ap_return[7]_INST_0_i_17_n_0 ;
  wire \ap_return[7]_INST_0_i_18_n_0 ;
  wire \ap_return[7]_INST_0_i_19_n_0 ;
  wire \ap_return[7]_INST_0_i_19_n_1 ;
  wire \ap_return[7]_INST_0_i_19_n_2 ;
  wire \ap_return[7]_INST_0_i_19_n_3 ;
  wire \ap_return[7]_INST_0_i_1_n_0 ;
  wire \ap_return[7]_INST_0_i_1_n_1 ;
  wire \ap_return[7]_INST_0_i_1_n_2 ;
  wire \ap_return[7]_INST_0_i_1_n_3 ;
  wire \ap_return[7]_INST_0_i_20_n_0 ;
  wire \ap_return[7]_INST_0_i_21_n_0 ;
  wire \ap_return[7]_INST_0_i_22_n_0 ;
  wire \ap_return[7]_INST_0_i_23_n_0 ;
  wire \ap_return[7]_INST_0_i_24_n_0 ;
  wire \ap_return[7]_INST_0_i_24_n_1 ;
  wire \ap_return[7]_INST_0_i_24_n_2 ;
  wire \ap_return[7]_INST_0_i_24_n_3 ;
  wire \ap_return[7]_INST_0_i_25_n_0 ;
  wire \ap_return[7]_INST_0_i_26_n_0 ;
  wire \ap_return[7]_INST_0_i_27_n_0 ;
  wire \ap_return[7]_INST_0_i_28_n_0 ;
  wire \ap_return[7]_INST_0_i_29_n_0 ;
  wire \ap_return[7]_INST_0_i_29_n_1 ;
  wire \ap_return[7]_INST_0_i_29_n_2 ;
  wire \ap_return[7]_INST_0_i_29_n_3 ;
  wire \ap_return[7]_INST_0_i_2_n_0 ;
  wire \ap_return[7]_INST_0_i_30_n_0 ;
  wire \ap_return[7]_INST_0_i_31_n_0 ;
  wire \ap_return[7]_INST_0_i_32_n_0 ;
  wire \ap_return[7]_INST_0_i_33_n_0 ;
  wire \ap_return[7]_INST_0_i_34_n_0 ;
  wire \ap_return[7]_INST_0_i_35_n_0 ;
  wire \ap_return[7]_INST_0_i_36_n_0 ;
  wire \ap_return[7]_INST_0_i_3_n_0 ;
  wire \ap_return[7]_INST_0_i_4_n_0 ;
  wire \ap_return[7]_INST_0_i_4_n_1 ;
  wire \ap_return[7]_INST_0_i_4_n_2 ;
  wire \ap_return[7]_INST_0_i_4_n_3 ;
  wire \ap_return[7]_INST_0_i_5_n_0 ;
  wire \ap_return[7]_INST_0_i_6_n_0 ;
  wire \ap_return[7]_INST_0_i_7_n_0 ;
  wire \ap_return[7]_INST_0_i_8_n_0 ;
  wire \ap_return[7]_INST_0_i_9_n_0 ;
  wire \ap_return[7]_INST_0_i_9_n_1 ;
  wire \ap_return[7]_INST_0_i_9_n_2 ;
  wire \ap_return[7]_INST_0_i_9_n_3 ;
  wire \ap_return[7]_INST_0_n_3 ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ar_hs;
  wire [31:0]inc_V;
  wire \int_inc_V[0]_i_1_n_0 ;
  wire \int_inc_V[10]_i_1_n_0 ;
  wire \int_inc_V[11]_i_1_n_0 ;
  wire \int_inc_V[12]_i_1_n_0 ;
  wire \int_inc_V[13]_i_1_n_0 ;
  wire \int_inc_V[14]_i_1_n_0 ;
  wire \int_inc_V[15]_i_1_n_0 ;
  wire \int_inc_V[16]_i_1_n_0 ;
  wire \int_inc_V[17]_i_1_n_0 ;
  wire \int_inc_V[18]_i_1_n_0 ;
  wire \int_inc_V[19]_i_1_n_0 ;
  wire \int_inc_V[1]_i_1_n_0 ;
  wire \int_inc_V[20]_i_1_n_0 ;
  wire \int_inc_V[21]_i_1_n_0 ;
  wire \int_inc_V[22]_i_1_n_0 ;
  wire \int_inc_V[23]_i_1_n_0 ;
  wire \int_inc_V[24]_i_1_n_0 ;
  wire \int_inc_V[25]_i_1_n_0 ;
  wire \int_inc_V[26]_i_1_n_0 ;
  wire \int_inc_V[27]_i_1_n_0 ;
  wire \int_inc_V[28]_i_1_n_0 ;
  wire \int_inc_V[29]_i_1_n_0 ;
  wire \int_inc_V[2]_i_1_n_0 ;
  wire \int_inc_V[30]_i_1_n_0 ;
  wire \int_inc_V[31]_i_1_n_0 ;
  wire \int_inc_V[31]_i_2_n_0 ;
  wire \int_inc_V[31]_i_3_n_0 ;
  wire \int_inc_V[3]_i_1_n_0 ;
  wire \int_inc_V[4]_i_1_n_0 ;
  wire \int_inc_V[5]_i_1_n_0 ;
  wire \int_inc_V[6]_i_1_n_0 ;
  wire \int_inc_V[7]_i_1_n_0 ;
  wire \int_inc_V[8]_i_1_n_0 ;
  wire \int_inc_V[9]_i_1_n_0 ;
  wire [3:0]\int_inc_V_reg[10]_0 ;
  wire [3:0]\int_inc_V_reg[14]_0 ;
  wire [3:0]\int_inc_V_reg[18]_0 ;
  wire [3:0]\int_inc_V_reg[22]_0 ;
  wire [3:0]\int_inc_V_reg[26]_0 ;
  wire [1:0]\int_inc_V_reg[27]_0 ;
  wire [3:0]\int_inc_V_reg[6]_0 ;
  wire [1:0]p_0_in;
  wire \rdata[31]_i_1_n_0 ;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire [3:1]\NLW_accumulator_V_0_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_accumulator_V_0_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_ap_return[0]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[0]_INST_0_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_ap_return[1]_INST_0_CO_UNCONNECTED ;
  wire [2:0]\NLW_ap_return[1]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[1]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[1]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[1]_INST_0_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[1]_INST_0_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[1]_INST_0_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[1]_INST_0_i_31_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[1]_INST_0_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_ap_return[2]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_i_52_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[2]_INST_0_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_ap_return[3]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[3]_INST_0_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_ap_return[4]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_i_32_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_i_41_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[4]_INST_0_i_50_O_UNCONNECTED ;
  wire [3:2]\NLW_ap_return[5]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_i_52_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[5]_INST_0_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_ap_return[6]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_i_52_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[6]_INST_0_i_7_O_UNCONNECTED ;
  wire [3:1]\NLW_ap_return[7]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_return[7]_INST_0_i_9_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RVALID),
        .I3(s_axi_AXILiteS_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RREADY),
        .I3(s_axi_AXILiteS_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_AXILiteS_BREADY),
        .I1(s_axi_AXILiteS_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_AXILiteS_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_AXILiteS_BREADY),
        .I3(s_axi_AXILiteS_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_BVALID),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[10]_i_2 
       (.I0(inc_V[10]),
        .I1(accumulator_V_0_reg[11]),
        .O(\accumulator_V_0[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[10]_i_3 
       (.I0(inc_V[9]),
        .I1(accumulator_V_0_reg[10]),
        .O(\accumulator_V_0[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[10]_i_4 
       (.I0(inc_V[8]),
        .I1(accumulator_V_0_reg[9]),
        .O(\accumulator_V_0[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[10]_i_5 
       (.I0(inc_V[7]),
        .I1(accumulator_V_0_reg[8]),
        .O(\accumulator_V_0[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[14]_i_2 
       (.I0(inc_V[14]),
        .I1(accumulator_V_0_reg[15]),
        .O(\accumulator_V_0[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[14]_i_3 
       (.I0(inc_V[13]),
        .I1(accumulator_V_0_reg[14]),
        .O(\accumulator_V_0[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[14]_i_4 
       (.I0(inc_V[12]),
        .I1(accumulator_V_0_reg[13]),
        .O(\accumulator_V_0[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[14]_i_5 
       (.I0(inc_V[11]),
        .I1(accumulator_V_0_reg[12]),
        .O(\accumulator_V_0[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[18]_i_2 
       (.I0(inc_V[18]),
        .I1(accumulator_V_0_reg[19]),
        .O(\accumulator_V_0[18]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[18]_i_3 
       (.I0(inc_V[17]),
        .I1(accumulator_V_0_reg[18]),
        .O(\accumulator_V_0[18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[18]_i_4 
       (.I0(inc_V[16]),
        .I1(accumulator_V_0_reg[17]),
        .O(\accumulator_V_0[18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[18]_i_5 
       (.I0(inc_V[15]),
        .I1(accumulator_V_0_reg[16]),
        .O(\accumulator_V_0[18]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[22]_i_2 
       (.I0(inc_V[22]),
        .I1(accumulator_V_0_reg[23]),
        .O(\accumulator_V_0[22]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[22]_i_3 
       (.I0(inc_V[21]),
        .I1(accumulator_V_0_reg[22]),
        .O(\accumulator_V_0[22]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[22]_i_4 
       (.I0(inc_V[20]),
        .I1(accumulator_V_0_reg[21]),
        .O(\accumulator_V_0[22]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[22]_i_5 
       (.I0(inc_V[19]),
        .I1(accumulator_V_0_reg[20]),
        .O(\accumulator_V_0[22]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[26]_i_2 
       (.I0(inc_V[26]),
        .I1(accumulator_V_0_reg[27]),
        .O(\accumulator_V_0[26]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[26]_i_3 
       (.I0(inc_V[25]),
        .I1(accumulator_V_0_reg[26]),
        .O(\accumulator_V_0[26]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[26]_i_4 
       (.I0(inc_V[24]),
        .I1(accumulator_V_0_reg[25]),
        .O(\accumulator_V_0[26]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[26]_i_5 
       (.I0(inc_V[23]),
        .I1(accumulator_V_0_reg[24]),
        .O(\accumulator_V_0[26]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[2]_i_2 
       (.I0(inc_V[2]),
        .I1(accumulator_V_0_reg[3]),
        .O(\accumulator_V_0[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[2]_i_3 
       (.I0(inc_V[1]),
        .I1(accumulator_V_0_reg[2]),
        .O(\accumulator_V_0[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[2]_i_4 
       (.I0(inc_V[0]),
        .I1(accumulator_V_0_reg[1]),
        .O(\accumulator_V_0[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[30]_i_2 
       (.I0(inc_V[28]),
        .I1(accumulator_V_0_reg[29]),
        .O(\accumulator_V_0[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[30]_i_3 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[28]),
        .O(\accumulator_V_0[30]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[6]_i_2 
       (.I0(inc_V[6]),
        .I1(accumulator_V_0_reg[7]),
        .O(\accumulator_V_0[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[6]_i_3 
       (.I0(inc_V[5]),
        .I1(accumulator_V_0_reg[6]),
        .O(\accumulator_V_0[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[6]_i_4 
       (.I0(inc_V[4]),
        .I1(accumulator_V_0_reg[5]),
        .O(\accumulator_V_0[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulator_V_0[6]_i_5 
       (.I0(inc_V[3]),
        .I1(accumulator_V_0_reg[4]),
        .O(\accumulator_V_0[6]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[10]_i_1 
       (.CI(\accumulator_V_0_reg[6]_i_1_n_0 ),
        .CO({\accumulator_V_0_reg[10]_i_1_n_0 ,\accumulator_V_0_reg[10]_i_1_n_1 ,\accumulator_V_0_reg[10]_i_1_n_2 ,\accumulator_V_0_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[10:7]),
        .O(\int_inc_V_reg[10]_0 ),
        .S({\accumulator_V_0[10]_i_2_n_0 ,\accumulator_V_0[10]_i_3_n_0 ,\accumulator_V_0[10]_i_4_n_0 ,\accumulator_V_0[10]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[14]_i_1 
       (.CI(\accumulator_V_0_reg[10]_i_1_n_0 ),
        .CO({\accumulator_V_0_reg[14]_i_1_n_0 ,\accumulator_V_0_reg[14]_i_1_n_1 ,\accumulator_V_0_reg[14]_i_1_n_2 ,\accumulator_V_0_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[14:11]),
        .O(\int_inc_V_reg[14]_0 ),
        .S({\accumulator_V_0[14]_i_2_n_0 ,\accumulator_V_0[14]_i_3_n_0 ,\accumulator_V_0[14]_i_4_n_0 ,\accumulator_V_0[14]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[18]_i_1 
       (.CI(\accumulator_V_0_reg[14]_i_1_n_0 ),
        .CO({\accumulator_V_0_reg[18]_i_1_n_0 ,\accumulator_V_0_reg[18]_i_1_n_1 ,\accumulator_V_0_reg[18]_i_1_n_2 ,\accumulator_V_0_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[18:15]),
        .O(\int_inc_V_reg[18]_0 ),
        .S({\accumulator_V_0[18]_i_2_n_0 ,\accumulator_V_0[18]_i_3_n_0 ,\accumulator_V_0[18]_i_4_n_0 ,\accumulator_V_0[18]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[22]_i_1 
       (.CI(\accumulator_V_0_reg[18]_i_1_n_0 ),
        .CO({\accumulator_V_0_reg[22]_i_1_n_0 ,\accumulator_V_0_reg[22]_i_1_n_1 ,\accumulator_V_0_reg[22]_i_1_n_2 ,\accumulator_V_0_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[22:19]),
        .O(\int_inc_V_reg[22]_0 ),
        .S({\accumulator_V_0[22]_i_2_n_0 ,\accumulator_V_0[22]_i_3_n_0 ,\accumulator_V_0[22]_i_4_n_0 ,\accumulator_V_0[22]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[26]_i_1 
       (.CI(\accumulator_V_0_reg[22]_i_1_n_0 ),
        .CO({\accumulator_V_0_reg[26]_i_1_n_0 ,\accumulator_V_0_reg[26]_i_1_n_1 ,\accumulator_V_0_reg[26]_i_1_n_2 ,\accumulator_V_0_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[26:23]),
        .O(\int_inc_V_reg[26]_0 ),
        .S({\accumulator_V_0[26]_i_2_n_0 ,\accumulator_V_0[26]_i_3_n_0 ,\accumulator_V_0[26]_i_4_n_0 ,\accumulator_V_0[26]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\accumulator_V_0_reg[2]_i_1_n_0 ,\accumulator_V_0_reg[2]_i_1_n_1 ,\accumulator_V_0_reg[2]_i_1_n_2 ,\accumulator_V_0_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({inc_V[2:0],1'b0}),
        .O(O),
        .S({\accumulator_V_0[2]_i_2_n_0 ,\accumulator_V_0[2]_i_3_n_0 ,\accumulator_V_0[2]_i_4_n_0 ,accumulator_V_0_reg[0]}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[30]_i_1 
       (.CI(\accumulator_V_0_reg[26]_i_1_n_0 ),
        .CO({\NLW_accumulator_V_0_reg[30]_i_1_CO_UNCONNECTED [3:1],\accumulator_V_0_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,inc_V[27]}),
        .O({\NLW_accumulator_V_0_reg[30]_i_1_O_UNCONNECTED [3:2],\int_inc_V_reg[27]_0 }),
        .S({1'b0,1'b0,\accumulator_V_0[30]_i_2_n_0 ,\accumulator_V_0[30]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulator_V_0_reg[6]_i_1 
       (.CI(\accumulator_V_0_reg[2]_i_1_n_0 ),
        .CO({\accumulator_V_0_reg[6]_i_1_n_0 ,\accumulator_V_0_reg[6]_i_1_n_1 ,\accumulator_V_0_reg[6]_i_1_n_2 ,\accumulator_V_0_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[6:3]),
        .O(\int_inc_V_reg[6]_0 ),
        .S({\accumulator_V_0[6]_i_2_n_0 ,\accumulator_V_0[6]_i_3_n_0 ,\accumulator_V_0[6]_i_4_n_0 ,\accumulator_V_0[6]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0 
       (.CI(\ap_return[0]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[0]_INST_0_CO_UNCONNECTED [3:1],\ap_return[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,inc_V[30]}),
        .O({\NLW_ap_return[0]_INST_0_O_UNCONNECTED [3:2],ap_return[0],\NLW_ap_return[0]_INST_0_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,\ap_return[0]_INST_0_i_2_n_0 ,\ap_return[0]_INST_0_i_3_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0_i_1 
       (.CI(\ap_return[0]_INST_0_i_4_n_0 ),
        .CO({\ap_return[0]_INST_0_i_1_n_0 ,\ap_return[0]_INST_0_i_1_n_1 ,\ap_return[0]_INST_0_i_1_n_2 ,\ap_return[0]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[29:26]),
        .O(\NLW_ap_return[0]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[0]_INST_0_i_5_n_0 ,\ap_return[0]_INST_0_i_6_n_0 ,\ap_return[0]_INST_0_i_7_n_0 ,\ap_return[0]_INST_0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_10 
       (.I0(inc_V[25]),
        .I1(accumulator_V_0_reg[23]),
        .O(\ap_return[0]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_11 
       (.I0(inc_V[24]),
        .I1(accumulator_V_0_reg[22]),
        .O(\ap_return[0]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_12 
       (.I0(inc_V[23]),
        .I1(accumulator_V_0_reg[21]),
        .O(\ap_return[0]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_13 
       (.I0(inc_V[22]),
        .I1(accumulator_V_0_reg[20]),
        .O(\ap_return[0]_INST_0_i_13_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0_i_14 
       (.CI(\ap_return[0]_INST_0_i_19_n_0 ),
        .CO({\ap_return[0]_INST_0_i_14_n_0 ,\ap_return[0]_INST_0_i_14_n_1 ,\ap_return[0]_INST_0_i_14_n_2 ,\ap_return[0]_INST_0_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[17:14]),
        .O(\NLW_ap_return[0]_INST_0_i_14_O_UNCONNECTED [3:0]),
        .S({\ap_return[0]_INST_0_i_20_n_0 ,\ap_return[0]_INST_0_i_21_n_0 ,\ap_return[0]_INST_0_i_22_n_0 ,\ap_return[0]_INST_0_i_23_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_15 
       (.I0(inc_V[21]),
        .I1(accumulator_V_0_reg[19]),
        .O(\ap_return[0]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_16 
       (.I0(inc_V[20]),
        .I1(accumulator_V_0_reg[18]),
        .O(\ap_return[0]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_17 
       (.I0(inc_V[19]),
        .I1(accumulator_V_0_reg[17]),
        .O(\ap_return[0]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_18 
       (.I0(inc_V[18]),
        .I1(accumulator_V_0_reg[16]),
        .O(\ap_return[0]_INST_0_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0_i_19 
       (.CI(\ap_return[0]_INST_0_i_24_n_0 ),
        .CO({\ap_return[0]_INST_0_i_19_n_0 ,\ap_return[0]_INST_0_i_19_n_1 ,\ap_return[0]_INST_0_i_19_n_2 ,\ap_return[0]_INST_0_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[13:10]),
        .O(\NLW_ap_return[0]_INST_0_i_19_O_UNCONNECTED [3:0]),
        .S({\ap_return[0]_INST_0_i_25_n_0 ,\ap_return[0]_INST_0_i_26_n_0 ,\ap_return[0]_INST_0_i_27_n_0 ,\ap_return[0]_INST_0_i_28_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_2 
       (.I0(inc_V[31]),
        .I1(accumulator_V_0_reg[29]),
        .O(\ap_return[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_20 
       (.I0(inc_V[17]),
        .I1(accumulator_V_0_reg[15]),
        .O(\ap_return[0]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_21 
       (.I0(inc_V[16]),
        .I1(accumulator_V_0_reg[14]),
        .O(\ap_return[0]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_22 
       (.I0(inc_V[15]),
        .I1(accumulator_V_0_reg[13]),
        .O(\ap_return[0]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_23 
       (.I0(inc_V[14]),
        .I1(accumulator_V_0_reg[12]),
        .O(\ap_return[0]_INST_0_i_23_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0_i_24 
       (.CI(\ap_return[0]_INST_0_i_29_n_0 ),
        .CO({\ap_return[0]_INST_0_i_24_n_0 ,\ap_return[0]_INST_0_i_24_n_1 ,\ap_return[0]_INST_0_i_24_n_2 ,\ap_return[0]_INST_0_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[9:6]),
        .O(\NLW_ap_return[0]_INST_0_i_24_O_UNCONNECTED [3:0]),
        .S({\ap_return[0]_INST_0_i_30_n_0 ,\ap_return[0]_INST_0_i_31_n_0 ,\ap_return[0]_INST_0_i_32_n_0 ,\ap_return[0]_INST_0_i_33_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_25 
       (.I0(inc_V[13]),
        .I1(accumulator_V_0_reg[11]),
        .O(\ap_return[0]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_26 
       (.I0(inc_V[12]),
        .I1(accumulator_V_0_reg[10]),
        .O(\ap_return[0]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_27 
       (.I0(inc_V[11]),
        .I1(accumulator_V_0_reg[9]),
        .O(\ap_return[0]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_28 
       (.I0(inc_V[10]),
        .I1(accumulator_V_0_reg[8]),
        .O(\ap_return[0]_INST_0_i_28_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0_i_29 
       (.CI(1'b0),
        .CO({\ap_return[0]_INST_0_i_29_n_0 ,\ap_return[0]_INST_0_i_29_n_1 ,\ap_return[0]_INST_0_i_29_n_2 ,\ap_return[0]_INST_0_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[5:2]),
        .O(\NLW_ap_return[0]_INST_0_i_29_O_UNCONNECTED [3:0]),
        .S({\ap_return[0]_INST_0_i_34_n_0 ,\ap_return[0]_INST_0_i_35_n_0 ,\ap_return[0]_INST_0_i_36_n_0 ,\ap_return[0]_INST_0_i_37_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_3 
       (.I0(inc_V[30]),
        .I1(accumulator_V_0_reg[28]),
        .O(\ap_return[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_30 
       (.I0(inc_V[9]),
        .I1(accumulator_V_0_reg[7]),
        .O(\ap_return[0]_INST_0_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_31 
       (.I0(inc_V[8]),
        .I1(accumulator_V_0_reg[6]),
        .O(\ap_return[0]_INST_0_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_32 
       (.I0(inc_V[7]),
        .I1(accumulator_V_0_reg[5]),
        .O(\ap_return[0]_INST_0_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_33 
       (.I0(inc_V[6]),
        .I1(accumulator_V_0_reg[4]),
        .O(\ap_return[0]_INST_0_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_34 
       (.I0(inc_V[5]),
        .I1(accumulator_V_0_reg[3]),
        .O(\ap_return[0]_INST_0_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_35 
       (.I0(inc_V[4]),
        .I1(accumulator_V_0_reg[2]),
        .O(\ap_return[0]_INST_0_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_36 
       (.I0(inc_V[3]),
        .I1(accumulator_V_0_reg[1]),
        .O(\ap_return[0]_INST_0_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_37 
       (.I0(inc_V[2]),
        .I1(accumulator_V_0_reg[0]),
        .O(\ap_return[0]_INST_0_i_37_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0_i_4 
       (.CI(\ap_return[0]_INST_0_i_9_n_0 ),
        .CO({\ap_return[0]_INST_0_i_4_n_0 ,\ap_return[0]_INST_0_i_4_n_1 ,\ap_return[0]_INST_0_i_4_n_2 ,\ap_return[0]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[25:22]),
        .O(\NLW_ap_return[0]_INST_0_i_4_O_UNCONNECTED [3:0]),
        .S({\ap_return[0]_INST_0_i_10_n_0 ,\ap_return[0]_INST_0_i_11_n_0 ,\ap_return[0]_INST_0_i_12_n_0 ,\ap_return[0]_INST_0_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_5 
       (.I0(inc_V[29]),
        .I1(accumulator_V_0_reg[27]),
        .O(\ap_return[0]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_6 
       (.I0(inc_V[28]),
        .I1(accumulator_V_0_reg[26]),
        .O(\ap_return[0]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_7 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[25]),
        .O(\ap_return[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[0]_INST_0_i_8 
       (.I0(inc_V[26]),
        .I1(accumulator_V_0_reg[24]),
        .O(\ap_return[0]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[0]_INST_0_i_9 
       (.CI(\ap_return[0]_INST_0_i_14_n_0 ),
        .CO({\ap_return[0]_INST_0_i_9_n_0 ,\ap_return[0]_INST_0_i_9_n_1 ,\ap_return[0]_INST_0_i_9_n_2 ,\ap_return[0]_INST_0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[21:18]),
        .O(\NLW_ap_return[0]_INST_0_i_9_O_UNCONNECTED [3:0]),
        .S({\ap_return[0]_INST_0_i_15_n_0 ,\ap_return[0]_INST_0_i_16_n_0 ,\ap_return[0]_INST_0_i_17_n_0 ,\ap_return[0]_INST_0_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0 
       (.CI(\ap_return[1]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[1]_INST_0_CO_UNCONNECTED [3],\ap_return[1]_INST_0_n_1 ,\ap_return[1]_INST_0_n_2 ,\ap_return[1]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,inc_V[29:27]}),
        .O({ap_return[1],\NLW_ap_return[1]_INST_0_O_UNCONNECTED [2:0]}),
        .S({\ap_return[1]_INST_0_i_2_n_0 ,\ap_return[1]_INST_0_i_3_n_0 ,\ap_return[1]_INST_0_i_4_n_0 ,\ap_return[1]_INST_0_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0_i_1 
       (.CI(\ap_return[1]_INST_0_i_6_n_0 ),
        .CO({\ap_return[1]_INST_0_i_1_n_0 ,\ap_return[1]_INST_0_i_1_n_1 ,\ap_return[1]_INST_0_i_1_n_2 ,\ap_return[1]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[26:23]),
        .O(\NLW_ap_return[1]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[1]_INST_0_i_7_n_0 ,\ap_return[1]_INST_0_i_8_n_0 ,\ap_return[1]_INST_0_i_9_n_0 ,\ap_return[1]_INST_0_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_10 
       (.I0(inc_V[23]),
        .I1(accumulator_V_0_reg[22]),
        .O(\ap_return[1]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0_i_11 
       (.CI(\ap_return[1]_INST_0_i_16_n_0 ),
        .CO({\ap_return[1]_INST_0_i_11_n_0 ,\ap_return[1]_INST_0_i_11_n_1 ,\ap_return[1]_INST_0_i_11_n_2 ,\ap_return[1]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[18:15]),
        .O(\NLW_ap_return[1]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\ap_return[1]_INST_0_i_17_n_0 ,\ap_return[1]_INST_0_i_18_n_0 ,\ap_return[1]_INST_0_i_19_n_0 ,\ap_return[1]_INST_0_i_20_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_12 
       (.I0(inc_V[22]),
        .I1(accumulator_V_0_reg[21]),
        .O(\ap_return[1]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_13 
       (.I0(inc_V[21]),
        .I1(accumulator_V_0_reg[20]),
        .O(\ap_return[1]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_14 
       (.I0(inc_V[20]),
        .I1(accumulator_V_0_reg[19]),
        .O(\ap_return[1]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_15 
       (.I0(inc_V[19]),
        .I1(accumulator_V_0_reg[18]),
        .O(\ap_return[1]_INST_0_i_15_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0_i_16 
       (.CI(\ap_return[1]_INST_0_i_21_n_0 ),
        .CO({\ap_return[1]_INST_0_i_16_n_0 ,\ap_return[1]_INST_0_i_16_n_1 ,\ap_return[1]_INST_0_i_16_n_2 ,\ap_return[1]_INST_0_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[14:11]),
        .O(\NLW_ap_return[1]_INST_0_i_16_O_UNCONNECTED [3:0]),
        .S({\ap_return[1]_INST_0_i_22_n_0 ,\ap_return[1]_INST_0_i_23_n_0 ,\ap_return[1]_INST_0_i_24_n_0 ,\ap_return[1]_INST_0_i_25_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_17 
       (.I0(inc_V[18]),
        .I1(accumulator_V_0_reg[17]),
        .O(\ap_return[1]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_18 
       (.I0(inc_V[17]),
        .I1(accumulator_V_0_reg[16]),
        .O(\ap_return[1]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_19 
       (.I0(inc_V[16]),
        .I1(accumulator_V_0_reg[15]),
        .O(\ap_return[1]_INST_0_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_2 
       (.I0(inc_V[30]),
        .I1(accumulator_V_0_reg[29]),
        .O(\ap_return[1]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_20 
       (.I0(inc_V[15]),
        .I1(accumulator_V_0_reg[14]),
        .O(\ap_return[1]_INST_0_i_20_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0_i_21 
       (.CI(\ap_return[1]_INST_0_i_26_n_0 ),
        .CO({\ap_return[1]_INST_0_i_21_n_0 ,\ap_return[1]_INST_0_i_21_n_1 ,\ap_return[1]_INST_0_i_21_n_2 ,\ap_return[1]_INST_0_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[10:7]),
        .O(\NLW_ap_return[1]_INST_0_i_21_O_UNCONNECTED [3:0]),
        .S({\ap_return[1]_INST_0_i_27_n_0 ,\ap_return[1]_INST_0_i_28_n_0 ,\ap_return[1]_INST_0_i_29_n_0 ,\ap_return[1]_INST_0_i_30_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_22 
       (.I0(inc_V[14]),
        .I1(accumulator_V_0_reg[13]),
        .O(\ap_return[1]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_23 
       (.I0(inc_V[13]),
        .I1(accumulator_V_0_reg[12]),
        .O(\ap_return[1]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_24 
       (.I0(inc_V[12]),
        .I1(accumulator_V_0_reg[11]),
        .O(\ap_return[1]_INST_0_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_25 
       (.I0(inc_V[11]),
        .I1(accumulator_V_0_reg[10]),
        .O(\ap_return[1]_INST_0_i_25_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0_i_26 
       (.CI(\ap_return[1]_INST_0_i_31_n_0 ),
        .CO({\ap_return[1]_INST_0_i_26_n_0 ,\ap_return[1]_INST_0_i_26_n_1 ,\ap_return[1]_INST_0_i_26_n_2 ,\ap_return[1]_INST_0_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[6:3]),
        .O(\NLW_ap_return[1]_INST_0_i_26_O_UNCONNECTED [3:0]),
        .S({\ap_return[1]_INST_0_i_32_n_0 ,\ap_return[1]_INST_0_i_33_n_0 ,\ap_return[1]_INST_0_i_34_n_0 ,\ap_return[1]_INST_0_i_35_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_27 
       (.I0(inc_V[10]),
        .I1(accumulator_V_0_reg[9]),
        .O(\ap_return[1]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_28 
       (.I0(inc_V[9]),
        .I1(accumulator_V_0_reg[8]),
        .O(\ap_return[1]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_29 
       (.I0(inc_V[8]),
        .I1(accumulator_V_0_reg[7]),
        .O(\ap_return[1]_INST_0_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_3 
       (.I0(inc_V[29]),
        .I1(accumulator_V_0_reg[28]),
        .O(\ap_return[1]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_30 
       (.I0(inc_V[7]),
        .I1(accumulator_V_0_reg[6]),
        .O(\ap_return[1]_INST_0_i_30_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0_i_31 
       (.CI(1'b0),
        .CO({\ap_return[1]_INST_0_i_31_n_0 ,\ap_return[1]_INST_0_i_31_n_1 ,\ap_return[1]_INST_0_i_31_n_2 ,\ap_return[1]_INST_0_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({inc_V[2:0],1'b0}),
        .O(\NLW_ap_return[1]_INST_0_i_31_O_UNCONNECTED [3:0]),
        .S({\ap_return[1]_INST_0_i_36_n_0 ,\ap_return[1]_INST_0_i_37_n_0 ,inc_V[0],1'b0}));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_32 
       (.I0(inc_V[6]),
        .I1(accumulator_V_0_reg[5]),
        .O(\ap_return[1]_INST_0_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_33 
       (.I0(inc_V[5]),
        .I1(accumulator_V_0_reg[4]),
        .O(\ap_return[1]_INST_0_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_34 
       (.I0(inc_V[4]),
        .I1(accumulator_V_0_reg[3]),
        .O(\ap_return[1]_INST_0_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_35 
       (.I0(inc_V[3]),
        .I1(accumulator_V_0_reg[2]),
        .O(\ap_return[1]_INST_0_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_36 
       (.I0(inc_V[2]),
        .I1(accumulator_V_0_reg[1]),
        .O(\ap_return[1]_INST_0_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_37 
       (.I0(inc_V[1]),
        .I1(accumulator_V_0_reg[0]),
        .O(\ap_return[1]_INST_0_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_4 
       (.I0(inc_V[28]),
        .I1(accumulator_V_0_reg[27]),
        .O(\ap_return[1]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_5 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[26]),
        .O(\ap_return[1]_INST_0_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[1]_INST_0_i_6 
       (.CI(\ap_return[1]_INST_0_i_11_n_0 ),
        .CO({\ap_return[1]_INST_0_i_6_n_0 ,\ap_return[1]_INST_0_i_6_n_1 ,\ap_return[1]_INST_0_i_6_n_2 ,\ap_return[1]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[22:19]),
        .O(\NLW_ap_return[1]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({\ap_return[1]_INST_0_i_12_n_0 ,\ap_return[1]_INST_0_i_13_n_0 ,\ap_return[1]_INST_0_i_14_n_0 ,\ap_return[1]_INST_0_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_7 
       (.I0(inc_V[26]),
        .I1(accumulator_V_0_reg[25]),
        .O(\ap_return[1]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_8 
       (.I0(inc_V[25]),
        .I1(accumulator_V_0_reg[24]),
        .O(\ap_return[1]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[1]_INST_0_i_9 
       (.I0(inc_V[24]),
        .I1(accumulator_V_0_reg[23]),
        .O(\ap_return[1]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0 
       (.CI(\ap_return[2]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[2]_INST_0_CO_UNCONNECTED [3:2],\ap_return[2]_INST_0_n_2 ,\ap_return[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ap_return[2]_INST_0_i_2_n_0 ,\ap_return[2]_INST_0_i_3_n_0 }),
        .O({\NLW_ap_return[2]_INST_0_O_UNCONNECTED [3],ap_return[2],\NLW_ap_return[2]_INST_0_O_UNCONNECTED [1:0]}),
        .S({1'b0,\ap_return[2]_INST_0_i_4_n_0 ,\ap_return[2]_INST_0_i_5_n_0 ,\ap_return[2]_INST_0_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0_i_1 
       (.CI(\ap_return[2]_INST_0_i_7_n_0 ),
        .CO({\ap_return[2]_INST_0_i_1_n_0 ,\ap_return[2]_INST_0_i_1_n_1 ,\ap_return[2]_INST_0_i_1_n_2 ,\ap_return[2]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[2]_INST_0_i_8_n_0 ,\ap_return[2]_INST_0_i_9_n_0 ,\ap_return[2]_INST_0_i_10_n_0 ,\ap_return[2]_INST_0_i_11_n_0 }),
        .O(\NLW_ap_return[2]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[2]_INST_0_i_12_n_0 ,\ap_return[2]_INST_0_i_13_n_0 ,\ap_return[2]_INST_0_i_14_n_0 ,\ap_return[2]_INST_0_i_15_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_10 
       (.I0(inc_V[25]),
        .I1(inc_V[23]),
        .I2(accumulator_V_0_reg[23]),
        .O(\ap_return[2]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_11 
       (.I0(inc_V[24]),
        .I1(inc_V[22]),
        .I2(accumulator_V_0_reg[22]),
        .O(\ap_return[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_12 
       (.I0(accumulator_V_0_reg[25]),
        .I1(inc_V[25]),
        .I2(inc_V[27]),
        .I3(inc_V[26]),
        .I4(inc_V[28]),
        .I5(accumulator_V_0_reg[26]),
        .O(\ap_return[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_13 
       (.I0(accumulator_V_0_reg[24]),
        .I1(inc_V[24]),
        .I2(inc_V[26]),
        .I3(inc_V[25]),
        .I4(inc_V[27]),
        .I5(accumulator_V_0_reg[25]),
        .O(\ap_return[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_14 
       (.I0(accumulator_V_0_reg[23]),
        .I1(inc_V[23]),
        .I2(inc_V[25]),
        .I3(inc_V[24]),
        .I4(inc_V[26]),
        .I5(accumulator_V_0_reg[24]),
        .O(\ap_return[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_15 
       (.I0(accumulator_V_0_reg[22]),
        .I1(inc_V[22]),
        .I2(inc_V[24]),
        .I3(inc_V[23]),
        .I4(inc_V[25]),
        .I5(accumulator_V_0_reg[23]),
        .O(\ap_return[2]_INST_0_i_15_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0_i_16 
       (.CI(\ap_return[2]_INST_0_i_25_n_0 ),
        .CO({\ap_return[2]_INST_0_i_16_n_0 ,\ap_return[2]_INST_0_i_16_n_1 ,\ap_return[2]_INST_0_i_16_n_2 ,\ap_return[2]_INST_0_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[2]_INST_0_i_26_n_0 ,\ap_return[2]_INST_0_i_27_n_0 ,\ap_return[2]_INST_0_i_28_n_0 ,\ap_return[2]_INST_0_i_29_n_0 }),
        .O(\NLW_ap_return[2]_INST_0_i_16_O_UNCONNECTED [3:0]),
        .S({\ap_return[2]_INST_0_i_30_n_0 ,\ap_return[2]_INST_0_i_31_n_0 ,\ap_return[2]_INST_0_i_32_n_0 ,\ap_return[2]_INST_0_i_33_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_17 
       (.I0(inc_V[23]),
        .I1(inc_V[21]),
        .I2(accumulator_V_0_reg[21]),
        .O(\ap_return[2]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_18 
       (.I0(inc_V[22]),
        .I1(inc_V[20]),
        .I2(accumulator_V_0_reg[20]),
        .O(\ap_return[2]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_19 
       (.I0(inc_V[21]),
        .I1(inc_V[19]),
        .I2(accumulator_V_0_reg[19]),
        .O(\ap_return[2]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_2 
       (.I0(inc_V[29]),
        .I1(inc_V[27]),
        .I2(accumulator_V_0_reg[27]),
        .O(\ap_return[2]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_20 
       (.I0(inc_V[20]),
        .I1(inc_V[18]),
        .I2(accumulator_V_0_reg[18]),
        .O(\ap_return[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_21 
       (.I0(accumulator_V_0_reg[21]),
        .I1(inc_V[21]),
        .I2(inc_V[23]),
        .I3(inc_V[22]),
        .I4(inc_V[24]),
        .I5(accumulator_V_0_reg[22]),
        .O(\ap_return[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_22 
       (.I0(accumulator_V_0_reg[20]),
        .I1(inc_V[20]),
        .I2(inc_V[22]),
        .I3(inc_V[21]),
        .I4(inc_V[23]),
        .I5(accumulator_V_0_reg[21]),
        .O(\ap_return[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_23 
       (.I0(accumulator_V_0_reg[19]),
        .I1(inc_V[19]),
        .I2(inc_V[21]),
        .I3(inc_V[20]),
        .I4(inc_V[22]),
        .I5(accumulator_V_0_reg[20]),
        .O(\ap_return[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_24 
       (.I0(accumulator_V_0_reg[18]),
        .I1(inc_V[18]),
        .I2(inc_V[20]),
        .I3(inc_V[19]),
        .I4(inc_V[21]),
        .I5(accumulator_V_0_reg[19]),
        .O(\ap_return[2]_INST_0_i_24_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0_i_25 
       (.CI(\ap_return[2]_INST_0_i_34_n_0 ),
        .CO({\ap_return[2]_INST_0_i_25_n_0 ,\ap_return[2]_INST_0_i_25_n_1 ,\ap_return[2]_INST_0_i_25_n_2 ,\ap_return[2]_INST_0_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[2]_INST_0_i_35_n_0 ,\ap_return[2]_INST_0_i_36_n_0 ,\ap_return[2]_INST_0_i_37_n_0 ,\ap_return[2]_INST_0_i_38_n_0 }),
        .O(\NLW_ap_return[2]_INST_0_i_25_O_UNCONNECTED [3:0]),
        .S({\ap_return[2]_INST_0_i_39_n_0 ,\ap_return[2]_INST_0_i_40_n_0 ,\ap_return[2]_INST_0_i_41_n_0 ,\ap_return[2]_INST_0_i_42_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_26 
       (.I0(inc_V[19]),
        .I1(inc_V[17]),
        .I2(accumulator_V_0_reg[17]),
        .O(\ap_return[2]_INST_0_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_27 
       (.I0(inc_V[18]),
        .I1(inc_V[16]),
        .I2(accumulator_V_0_reg[16]),
        .O(\ap_return[2]_INST_0_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_28 
       (.I0(inc_V[17]),
        .I1(inc_V[15]),
        .I2(accumulator_V_0_reg[15]),
        .O(\ap_return[2]_INST_0_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_29 
       (.I0(inc_V[16]),
        .I1(inc_V[14]),
        .I2(accumulator_V_0_reg[14]),
        .O(\ap_return[2]_INST_0_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_3 
       (.I0(inc_V[28]),
        .I1(inc_V[26]),
        .I2(accumulator_V_0_reg[26]),
        .O(\ap_return[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_30 
       (.I0(accumulator_V_0_reg[17]),
        .I1(inc_V[17]),
        .I2(inc_V[19]),
        .I3(inc_V[18]),
        .I4(inc_V[20]),
        .I5(accumulator_V_0_reg[18]),
        .O(\ap_return[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_31 
       (.I0(accumulator_V_0_reg[16]),
        .I1(inc_V[16]),
        .I2(inc_V[18]),
        .I3(inc_V[17]),
        .I4(inc_V[19]),
        .I5(accumulator_V_0_reg[17]),
        .O(\ap_return[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_32 
       (.I0(accumulator_V_0_reg[15]),
        .I1(inc_V[15]),
        .I2(inc_V[17]),
        .I3(inc_V[16]),
        .I4(inc_V[18]),
        .I5(accumulator_V_0_reg[16]),
        .O(\ap_return[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_33 
       (.I0(accumulator_V_0_reg[14]),
        .I1(inc_V[14]),
        .I2(inc_V[16]),
        .I3(inc_V[15]),
        .I4(inc_V[17]),
        .I5(accumulator_V_0_reg[15]),
        .O(\ap_return[2]_INST_0_i_33_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0_i_34 
       (.CI(\ap_return[2]_INST_0_i_43_n_0 ),
        .CO({\ap_return[2]_INST_0_i_34_n_0 ,\ap_return[2]_INST_0_i_34_n_1 ,\ap_return[2]_INST_0_i_34_n_2 ,\ap_return[2]_INST_0_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[2]_INST_0_i_44_n_0 ,\ap_return[2]_INST_0_i_45_n_0 ,\ap_return[2]_INST_0_i_46_n_0 ,\ap_return[2]_INST_0_i_47_n_0 }),
        .O(\NLW_ap_return[2]_INST_0_i_34_O_UNCONNECTED [3:0]),
        .S({\ap_return[2]_INST_0_i_48_n_0 ,\ap_return[2]_INST_0_i_49_n_0 ,\ap_return[2]_INST_0_i_50_n_0 ,\ap_return[2]_INST_0_i_51_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_35 
       (.I0(inc_V[15]),
        .I1(inc_V[13]),
        .I2(accumulator_V_0_reg[13]),
        .O(\ap_return[2]_INST_0_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_36 
       (.I0(inc_V[14]),
        .I1(inc_V[12]),
        .I2(accumulator_V_0_reg[12]),
        .O(\ap_return[2]_INST_0_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_37 
       (.I0(inc_V[13]),
        .I1(inc_V[11]),
        .I2(accumulator_V_0_reg[11]),
        .O(\ap_return[2]_INST_0_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_38 
       (.I0(inc_V[12]),
        .I1(inc_V[10]),
        .I2(accumulator_V_0_reg[10]),
        .O(\ap_return[2]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_39 
       (.I0(accumulator_V_0_reg[13]),
        .I1(inc_V[13]),
        .I2(inc_V[15]),
        .I3(inc_V[14]),
        .I4(inc_V[16]),
        .I5(accumulator_V_0_reg[14]),
        .O(\ap_return[2]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \ap_return[2]_INST_0_i_4 
       (.I0(accumulator_V_0_reg[29]),
        .I1(inc_V[29]),
        .I2(inc_V[31]),
        .I3(accumulator_V_0_reg[28]),
        .I4(inc_V[28]),
        .I5(inc_V[30]),
        .O(\ap_return[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_40 
       (.I0(accumulator_V_0_reg[12]),
        .I1(inc_V[12]),
        .I2(inc_V[14]),
        .I3(inc_V[13]),
        .I4(inc_V[15]),
        .I5(accumulator_V_0_reg[13]),
        .O(\ap_return[2]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_41 
       (.I0(accumulator_V_0_reg[11]),
        .I1(inc_V[11]),
        .I2(inc_V[13]),
        .I3(inc_V[12]),
        .I4(inc_V[14]),
        .I5(accumulator_V_0_reg[12]),
        .O(\ap_return[2]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_42 
       (.I0(accumulator_V_0_reg[10]),
        .I1(inc_V[10]),
        .I2(inc_V[12]),
        .I3(inc_V[11]),
        .I4(inc_V[13]),
        .I5(accumulator_V_0_reg[11]),
        .O(\ap_return[2]_INST_0_i_42_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0_i_43 
       (.CI(\ap_return[2]_INST_0_i_52_n_0 ),
        .CO({\ap_return[2]_INST_0_i_43_n_0 ,\ap_return[2]_INST_0_i_43_n_1 ,\ap_return[2]_INST_0_i_43_n_2 ,\ap_return[2]_INST_0_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[2]_INST_0_i_53_n_0 ,\ap_return[2]_INST_0_i_54_n_0 ,\ap_return[2]_INST_0_i_55_n_0 ,\ap_return[2]_INST_0_i_56_n_0 }),
        .O(\NLW_ap_return[2]_INST_0_i_43_O_UNCONNECTED [3:0]),
        .S({\ap_return[2]_INST_0_i_57_n_0 ,\ap_return[2]_INST_0_i_58_n_0 ,\ap_return[2]_INST_0_i_59_n_0 ,\ap_return[2]_INST_0_i_60_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_44 
       (.I0(inc_V[11]),
        .I1(inc_V[9]),
        .I2(accumulator_V_0_reg[9]),
        .O(\ap_return[2]_INST_0_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_45 
       (.I0(inc_V[10]),
        .I1(inc_V[8]),
        .I2(accumulator_V_0_reg[8]),
        .O(\ap_return[2]_INST_0_i_45_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_46 
       (.I0(inc_V[9]),
        .I1(inc_V[7]),
        .I2(accumulator_V_0_reg[7]),
        .O(\ap_return[2]_INST_0_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_47 
       (.I0(inc_V[8]),
        .I1(inc_V[6]),
        .I2(accumulator_V_0_reg[6]),
        .O(\ap_return[2]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_48 
       (.I0(accumulator_V_0_reg[9]),
        .I1(inc_V[9]),
        .I2(inc_V[11]),
        .I3(inc_V[10]),
        .I4(inc_V[12]),
        .I5(accumulator_V_0_reg[10]),
        .O(\ap_return[2]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_49 
       (.I0(accumulator_V_0_reg[8]),
        .I1(inc_V[8]),
        .I2(inc_V[10]),
        .I3(inc_V[9]),
        .I4(inc_V[11]),
        .I5(accumulator_V_0_reg[9]),
        .O(\ap_return[2]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_5 
       (.I0(accumulator_V_0_reg[27]),
        .I1(inc_V[27]),
        .I2(inc_V[29]),
        .I3(inc_V[28]),
        .I4(inc_V[30]),
        .I5(accumulator_V_0_reg[28]),
        .O(\ap_return[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_50 
       (.I0(accumulator_V_0_reg[7]),
        .I1(inc_V[7]),
        .I2(inc_V[9]),
        .I3(inc_V[8]),
        .I4(inc_V[10]),
        .I5(accumulator_V_0_reg[8]),
        .O(\ap_return[2]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_51 
       (.I0(accumulator_V_0_reg[6]),
        .I1(inc_V[6]),
        .I2(inc_V[8]),
        .I3(inc_V[7]),
        .I4(inc_V[9]),
        .I5(accumulator_V_0_reg[7]),
        .O(\ap_return[2]_INST_0_i_51_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0_i_52 
       (.CI(1'b0),
        .CO({\ap_return[2]_INST_0_i_52_n_0 ,\ap_return[2]_INST_0_i_52_n_1 ,\ap_return[2]_INST_0_i_52_n_2 ,\ap_return[2]_INST_0_i_52_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({\ap_return[2]_INST_0_i_61_n_0 ,\ap_return[2]_INST_0_i_62_n_0 ,accumulator_V_0_reg[0],1'b0}),
        .O(\NLW_ap_return[2]_INST_0_i_52_O_UNCONNECTED [3:0]),
        .S({\ap_return[2]_INST_0_i_63_n_0 ,\ap_return[2]_INST_0_i_64_n_0 ,\ap_return[2]_INST_0_i_65_n_0 ,\ap_return[2]_INST_0_i_66_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_53 
       (.I0(inc_V[7]),
        .I1(inc_V[5]),
        .I2(accumulator_V_0_reg[5]),
        .O(\ap_return[2]_INST_0_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_54 
       (.I0(inc_V[6]),
        .I1(inc_V[4]),
        .I2(accumulator_V_0_reg[4]),
        .O(\ap_return[2]_INST_0_i_54_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_55 
       (.I0(inc_V[5]),
        .I1(inc_V[3]),
        .I2(accumulator_V_0_reg[3]),
        .O(\ap_return[2]_INST_0_i_55_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_56 
       (.I0(inc_V[4]),
        .I1(inc_V[2]),
        .I2(accumulator_V_0_reg[2]),
        .O(\ap_return[2]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_57 
       (.I0(accumulator_V_0_reg[5]),
        .I1(inc_V[5]),
        .I2(inc_V[7]),
        .I3(inc_V[6]),
        .I4(inc_V[8]),
        .I5(accumulator_V_0_reg[6]),
        .O(\ap_return[2]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_58 
       (.I0(accumulator_V_0_reg[4]),
        .I1(inc_V[4]),
        .I2(inc_V[6]),
        .I3(inc_V[5]),
        .I4(inc_V[7]),
        .I5(accumulator_V_0_reg[5]),
        .O(\ap_return[2]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_59 
       (.I0(accumulator_V_0_reg[3]),
        .I1(inc_V[3]),
        .I2(inc_V[5]),
        .I3(inc_V[4]),
        .I4(inc_V[6]),
        .I5(accumulator_V_0_reg[4]),
        .O(\ap_return[2]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_6 
       (.I0(accumulator_V_0_reg[26]),
        .I1(inc_V[26]),
        .I2(inc_V[28]),
        .I3(inc_V[27]),
        .I4(inc_V[29]),
        .I5(accumulator_V_0_reg[27]),
        .O(\ap_return[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[2]_INST_0_i_60 
       (.I0(accumulator_V_0_reg[2]),
        .I1(inc_V[2]),
        .I2(inc_V[4]),
        .I3(inc_V[3]),
        .I4(inc_V[5]),
        .I5(accumulator_V_0_reg[3]),
        .O(\ap_return[2]_INST_0_i_60_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \ap_return[2]_INST_0_i_61 
       (.I0(accumulator_V_0_reg[1]),
        .I1(inc_V[3]),
        .I2(inc_V[1]),
        .O(\ap_return[2]_INST_0_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \ap_return[2]_INST_0_i_62 
       (.I0(inc_V[1]),
        .I1(inc_V[3]),
        .I2(accumulator_V_0_reg[1]),
        .O(\ap_return[2]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \ap_return[2]_INST_0_i_63 
       (.I0(inc_V[1]),
        .I1(inc_V[3]),
        .I2(accumulator_V_0_reg[1]),
        .I3(inc_V[2]),
        .I4(inc_V[4]),
        .I5(accumulator_V_0_reg[2]),
        .O(\ap_return[2]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \ap_return[2]_INST_0_i_64 
       (.I0(inc_V[1]),
        .I1(inc_V[3]),
        .I2(accumulator_V_0_reg[1]),
        .I3(inc_V[2]),
        .I4(inc_V[0]),
        .O(\ap_return[2]_INST_0_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \ap_return[2]_INST_0_i_65 
       (.I0(inc_V[2]),
        .I1(inc_V[0]),
        .I2(accumulator_V_0_reg[0]),
        .O(\ap_return[2]_INST_0_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_return[2]_INST_0_i_66 
       (.I0(inc_V[1]),
        .O(\ap_return[2]_INST_0_i_66_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[2]_INST_0_i_7 
       (.CI(\ap_return[2]_INST_0_i_16_n_0 ),
        .CO({\ap_return[2]_INST_0_i_7_n_0 ,\ap_return[2]_INST_0_i_7_n_1 ,\ap_return[2]_INST_0_i_7_n_2 ,\ap_return[2]_INST_0_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[2]_INST_0_i_17_n_0 ,\ap_return[2]_INST_0_i_18_n_0 ,\ap_return[2]_INST_0_i_19_n_0 ,\ap_return[2]_INST_0_i_20_n_0 }),
        .O(\NLW_ap_return[2]_INST_0_i_7_O_UNCONNECTED [3:0]),
        .S({\ap_return[2]_INST_0_i_21_n_0 ,\ap_return[2]_INST_0_i_22_n_0 ,\ap_return[2]_INST_0_i_23_n_0 ,\ap_return[2]_INST_0_i_24_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_8 
       (.I0(inc_V[27]),
        .I1(inc_V[25]),
        .I2(accumulator_V_0_reg[25]),
        .O(\ap_return[2]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[2]_INST_0_i_9 
       (.I0(inc_V[26]),
        .I1(inc_V[24]),
        .I2(accumulator_V_0_reg[24]),
        .O(\ap_return[2]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0 
       (.CI(\ap_return[3]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[3]_INST_0_CO_UNCONNECTED [3:2],\ap_return[3]_INST_0_n_2 ,\ap_return[3]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,inc_V[28:27]}),
        .O({\NLW_ap_return[3]_INST_0_O_UNCONNECTED [3],ap_return[3],\NLW_ap_return[3]_INST_0_O_UNCONNECTED [1:0]}),
        .S({1'b0,\ap_return[3]_INST_0_i_2_n_0 ,\ap_return[3]_INST_0_i_3_n_0 ,\ap_return[3]_INST_0_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0_i_1 
       (.CI(\ap_return[3]_INST_0_i_5_n_0 ),
        .CO({\ap_return[3]_INST_0_i_1_n_0 ,\ap_return[3]_INST_0_i_1_n_1 ,\ap_return[3]_INST_0_i_1_n_2 ,\ap_return[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[26:23]),
        .O(\NLW_ap_return[3]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[3]_INST_0_i_6_n_0 ,\ap_return[3]_INST_0_i_7_n_0 ,\ap_return[3]_INST_0_i_8_n_0 ,\ap_return[3]_INST_0_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0_i_10 
       (.CI(\ap_return[3]_INST_0_i_15_n_0 ),
        .CO({\ap_return[3]_INST_0_i_10_n_0 ,\ap_return[3]_INST_0_i_10_n_1 ,\ap_return[3]_INST_0_i_10_n_2 ,\ap_return[3]_INST_0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[18:15]),
        .O(\NLW_ap_return[3]_INST_0_i_10_O_UNCONNECTED [3:0]),
        .S({\ap_return[3]_INST_0_i_16_n_0 ,\ap_return[3]_INST_0_i_17_n_0 ,\ap_return[3]_INST_0_i_18_n_0 ,\ap_return[3]_INST_0_i_19_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_11 
       (.I0(inc_V[22]),
        .I1(accumulator_V_0_reg[22]),
        .O(\ap_return[3]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_12 
       (.I0(inc_V[21]),
        .I1(accumulator_V_0_reg[21]),
        .O(\ap_return[3]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_13 
       (.I0(inc_V[20]),
        .I1(accumulator_V_0_reg[20]),
        .O(\ap_return[3]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_14 
       (.I0(inc_V[19]),
        .I1(accumulator_V_0_reg[19]),
        .O(\ap_return[3]_INST_0_i_14_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0_i_15 
       (.CI(\ap_return[3]_INST_0_i_20_n_0 ),
        .CO({\ap_return[3]_INST_0_i_15_n_0 ,\ap_return[3]_INST_0_i_15_n_1 ,\ap_return[3]_INST_0_i_15_n_2 ,\ap_return[3]_INST_0_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[14:11]),
        .O(\NLW_ap_return[3]_INST_0_i_15_O_UNCONNECTED [3:0]),
        .S({\ap_return[3]_INST_0_i_21_n_0 ,\ap_return[3]_INST_0_i_22_n_0 ,\ap_return[3]_INST_0_i_23_n_0 ,\ap_return[3]_INST_0_i_24_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_16 
       (.I0(inc_V[18]),
        .I1(accumulator_V_0_reg[18]),
        .O(\ap_return[3]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_17 
       (.I0(inc_V[17]),
        .I1(accumulator_V_0_reg[17]),
        .O(\ap_return[3]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_18 
       (.I0(inc_V[16]),
        .I1(accumulator_V_0_reg[16]),
        .O(\ap_return[3]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_19 
       (.I0(inc_V[15]),
        .I1(accumulator_V_0_reg[15]),
        .O(\ap_return[3]_INST_0_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_2 
       (.I0(inc_V[29]),
        .I1(accumulator_V_0_reg[29]),
        .O(\ap_return[3]_INST_0_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0_i_20 
       (.CI(\ap_return[3]_INST_0_i_25_n_0 ),
        .CO({\ap_return[3]_INST_0_i_20_n_0 ,\ap_return[3]_INST_0_i_20_n_1 ,\ap_return[3]_INST_0_i_20_n_2 ,\ap_return[3]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[10:7]),
        .O(\NLW_ap_return[3]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\ap_return[3]_INST_0_i_26_n_0 ,\ap_return[3]_INST_0_i_27_n_0 ,\ap_return[3]_INST_0_i_28_n_0 ,\ap_return[3]_INST_0_i_29_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_21 
       (.I0(inc_V[14]),
        .I1(accumulator_V_0_reg[14]),
        .O(\ap_return[3]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_22 
       (.I0(inc_V[13]),
        .I1(accumulator_V_0_reg[13]),
        .O(\ap_return[3]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_23 
       (.I0(inc_V[12]),
        .I1(accumulator_V_0_reg[12]),
        .O(\ap_return[3]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_24 
       (.I0(inc_V[11]),
        .I1(accumulator_V_0_reg[11]),
        .O(\ap_return[3]_INST_0_i_24_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0_i_25 
       (.CI(\ap_return[3]_INST_0_i_30_n_0 ),
        .CO({\ap_return[3]_INST_0_i_25_n_0 ,\ap_return[3]_INST_0_i_25_n_1 ,\ap_return[3]_INST_0_i_25_n_2 ,\ap_return[3]_INST_0_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[6:3]),
        .O(\NLW_ap_return[3]_INST_0_i_25_O_UNCONNECTED [3:0]),
        .S({\ap_return[3]_INST_0_i_31_n_0 ,\ap_return[3]_INST_0_i_32_n_0 ,\ap_return[3]_INST_0_i_33_n_0 ,\ap_return[3]_INST_0_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_26 
       (.I0(inc_V[10]),
        .I1(accumulator_V_0_reg[10]),
        .O(\ap_return[3]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_27 
       (.I0(inc_V[9]),
        .I1(accumulator_V_0_reg[9]),
        .O(\ap_return[3]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_28 
       (.I0(inc_V[8]),
        .I1(accumulator_V_0_reg[8]),
        .O(\ap_return[3]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_29 
       (.I0(inc_V[7]),
        .I1(accumulator_V_0_reg[7]),
        .O(\ap_return[3]_INST_0_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_3 
       (.I0(inc_V[28]),
        .I1(accumulator_V_0_reg[28]),
        .O(\ap_return[3]_INST_0_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0_i_30 
       (.CI(1'b0),
        .CO({\ap_return[3]_INST_0_i_30_n_0 ,\ap_return[3]_INST_0_i_30_n_1 ,\ap_return[3]_INST_0_i_30_n_2 ,\ap_return[3]_INST_0_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({inc_V[2:0],1'b0}),
        .O(\NLW_ap_return[3]_INST_0_i_30_O_UNCONNECTED [3:0]),
        .S({\ap_return[3]_INST_0_i_35_n_0 ,\ap_return[3]_INST_0_i_36_n_0 ,\ap_return[3]_INST_0_i_37_n_0 ,1'b0}));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_31 
       (.I0(inc_V[6]),
        .I1(accumulator_V_0_reg[6]),
        .O(\ap_return[3]_INST_0_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_32 
       (.I0(inc_V[5]),
        .I1(accumulator_V_0_reg[5]),
        .O(\ap_return[3]_INST_0_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_33 
       (.I0(inc_V[4]),
        .I1(accumulator_V_0_reg[4]),
        .O(\ap_return[3]_INST_0_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_34 
       (.I0(inc_V[3]),
        .I1(accumulator_V_0_reg[3]),
        .O(\ap_return[3]_INST_0_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_35 
       (.I0(inc_V[2]),
        .I1(accumulator_V_0_reg[2]),
        .O(\ap_return[3]_INST_0_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_36 
       (.I0(inc_V[1]),
        .I1(accumulator_V_0_reg[1]),
        .O(\ap_return[3]_INST_0_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_37 
       (.I0(inc_V[0]),
        .I1(accumulator_V_0_reg[0]),
        .O(\ap_return[3]_INST_0_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_4 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[27]),
        .O(\ap_return[3]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[3]_INST_0_i_5 
       (.CI(\ap_return[3]_INST_0_i_10_n_0 ),
        .CO({\ap_return[3]_INST_0_i_5_n_0 ,\ap_return[3]_INST_0_i_5_n_1 ,\ap_return[3]_INST_0_i_5_n_2 ,\ap_return[3]_INST_0_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[22:19]),
        .O(\NLW_ap_return[3]_INST_0_i_5_O_UNCONNECTED [3:0]),
        .S({\ap_return[3]_INST_0_i_11_n_0 ,\ap_return[3]_INST_0_i_12_n_0 ,\ap_return[3]_INST_0_i_13_n_0 ,\ap_return[3]_INST_0_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_6 
       (.I0(inc_V[26]),
        .I1(accumulator_V_0_reg[26]),
        .O(\ap_return[3]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_7 
       (.I0(inc_V[25]),
        .I1(accumulator_V_0_reg[25]),
        .O(\ap_return[3]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_8 
       (.I0(inc_V[24]),
        .I1(accumulator_V_0_reg[24]),
        .O(\ap_return[3]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[3]_INST_0_i_9 
       (.I0(inc_V[23]),
        .I1(accumulator_V_0_reg[23]),
        .O(\ap_return[3]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0 
       (.CI(\ap_return[4]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[4]_INST_0_CO_UNCONNECTED [3:1],\ap_return[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\ap_return[4]_INST_0_i_2_n_0 }),
        .O({\NLW_ap_return[4]_INST_0_O_UNCONNECTED [3:2],ap_return[4],\NLW_ap_return[4]_INST_0_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,\ap_return[4]_INST_0_i_3_n_0 ,\ap_return[4]_INST_0_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0_i_1 
       (.CI(\ap_return[4]_INST_0_i_5_n_0 ),
        .CO({\ap_return[4]_INST_0_i_1_n_0 ,\ap_return[4]_INST_0_i_1_n_1 ,\ap_return[4]_INST_0_i_1_n_2 ,\ap_return[4]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[4]_INST_0_i_6_n_0 ,\ap_return[4]_INST_0_i_7_n_0 ,\ap_return[4]_INST_0_i_8_n_0 ,\ap_return[4]_INST_0_i_9_n_0 }),
        .O(\NLW_ap_return[4]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[4]_INST_0_i_10_n_0 ,\ap_return[4]_INST_0_i_11_n_0 ,\ap_return[4]_INST_0_i_12_n_0 ,\ap_return[4]_INST_0_i_13_n_0 }));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_10 
       (.I0(inc_V[27]),
        .I1(inc_V[29]),
        .I2(accumulator_V_0_reg[27]),
        .I3(\ap_return[4]_INST_0_i_6_n_0 ),
        .O(\ap_return[4]_INST_0_i_10_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_11 
       (.I0(inc_V[26]),
        .I1(inc_V[28]),
        .I2(accumulator_V_0_reg[26]),
        .I3(\ap_return[4]_INST_0_i_7_n_0 ),
        .O(\ap_return[4]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_12 
       (.I0(inc_V[25]),
        .I1(inc_V[27]),
        .I2(accumulator_V_0_reg[25]),
        .I3(\ap_return[4]_INST_0_i_8_n_0 ),
        .O(\ap_return[4]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_13 
       (.I0(inc_V[24]),
        .I1(inc_V[26]),
        .I2(accumulator_V_0_reg[24]),
        .I3(\ap_return[4]_INST_0_i_9_n_0 ),
        .O(\ap_return[4]_INST_0_i_13_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0_i_14 
       (.CI(\ap_return[4]_INST_0_i_23_n_0 ),
        .CO({\ap_return[4]_INST_0_i_14_n_0 ,\ap_return[4]_INST_0_i_14_n_1 ,\ap_return[4]_INST_0_i_14_n_2 ,\ap_return[4]_INST_0_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[4]_INST_0_i_24_n_0 ,\ap_return[4]_INST_0_i_25_n_0 ,\ap_return[4]_INST_0_i_26_n_0 ,\ap_return[4]_INST_0_i_27_n_0 }),
        .O(\NLW_ap_return[4]_INST_0_i_14_O_UNCONNECTED [3:0]),
        .S({\ap_return[4]_INST_0_i_28_n_0 ,\ap_return[4]_INST_0_i_29_n_0 ,\ap_return[4]_INST_0_i_30_n_0 ,\ap_return[4]_INST_0_i_31_n_0 }));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_15 
       (.I0(inc_V[22]),
        .I1(inc_V[24]),
        .I2(accumulator_V_0_reg[22]),
        .O(\ap_return[4]_INST_0_i_15_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_16 
       (.I0(inc_V[21]),
        .I1(inc_V[23]),
        .I2(accumulator_V_0_reg[21]),
        .O(\ap_return[4]_INST_0_i_16_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_17 
       (.I0(inc_V[20]),
        .I1(inc_V[22]),
        .I2(accumulator_V_0_reg[20]),
        .O(\ap_return[4]_INST_0_i_17_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_18 
       (.I0(inc_V[19]),
        .I1(inc_V[21]),
        .I2(accumulator_V_0_reg[19]),
        .O(\ap_return[4]_INST_0_i_18_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_19 
       (.I0(inc_V[23]),
        .I1(inc_V[25]),
        .I2(accumulator_V_0_reg[23]),
        .I3(\ap_return[4]_INST_0_i_15_n_0 ),
        .O(\ap_return[4]_INST_0_i_19_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_2 
       (.I0(inc_V[27]),
        .I1(inc_V[29]),
        .I2(accumulator_V_0_reg[27]),
        .O(\ap_return[4]_INST_0_i_2_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_20 
       (.I0(inc_V[22]),
        .I1(inc_V[24]),
        .I2(accumulator_V_0_reg[22]),
        .I3(\ap_return[4]_INST_0_i_16_n_0 ),
        .O(\ap_return[4]_INST_0_i_20_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_21 
       (.I0(inc_V[21]),
        .I1(inc_V[23]),
        .I2(accumulator_V_0_reg[21]),
        .I3(\ap_return[4]_INST_0_i_17_n_0 ),
        .O(\ap_return[4]_INST_0_i_21_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_22 
       (.I0(inc_V[20]),
        .I1(inc_V[22]),
        .I2(accumulator_V_0_reg[20]),
        .I3(\ap_return[4]_INST_0_i_18_n_0 ),
        .O(\ap_return[4]_INST_0_i_22_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0_i_23 
       (.CI(\ap_return[4]_INST_0_i_32_n_0 ),
        .CO({\ap_return[4]_INST_0_i_23_n_0 ,\ap_return[4]_INST_0_i_23_n_1 ,\ap_return[4]_INST_0_i_23_n_2 ,\ap_return[4]_INST_0_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[4]_INST_0_i_33_n_0 ,\ap_return[4]_INST_0_i_34_n_0 ,\ap_return[4]_INST_0_i_35_n_0 ,\ap_return[4]_INST_0_i_36_n_0 }),
        .O(\NLW_ap_return[4]_INST_0_i_23_O_UNCONNECTED [3:0]),
        .S({\ap_return[4]_INST_0_i_37_n_0 ,\ap_return[4]_INST_0_i_38_n_0 ,\ap_return[4]_INST_0_i_39_n_0 ,\ap_return[4]_INST_0_i_40_n_0 }));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_24 
       (.I0(inc_V[18]),
        .I1(inc_V[20]),
        .I2(accumulator_V_0_reg[18]),
        .O(\ap_return[4]_INST_0_i_24_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_25 
       (.I0(inc_V[17]),
        .I1(inc_V[19]),
        .I2(accumulator_V_0_reg[17]),
        .O(\ap_return[4]_INST_0_i_25_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_26 
       (.I0(inc_V[16]),
        .I1(inc_V[18]),
        .I2(accumulator_V_0_reg[16]),
        .O(\ap_return[4]_INST_0_i_26_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_27 
       (.I0(inc_V[15]),
        .I1(inc_V[17]),
        .I2(accumulator_V_0_reg[15]),
        .O(\ap_return[4]_INST_0_i_27_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_28 
       (.I0(inc_V[19]),
        .I1(inc_V[21]),
        .I2(accumulator_V_0_reg[19]),
        .I3(\ap_return[4]_INST_0_i_24_n_0 ),
        .O(\ap_return[4]_INST_0_i_28_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_29 
       (.I0(inc_V[18]),
        .I1(inc_V[20]),
        .I2(accumulator_V_0_reg[18]),
        .I3(\ap_return[4]_INST_0_i_25_n_0 ),
        .O(\ap_return[4]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \ap_return[4]_INST_0_i_3 
       (.I0(accumulator_V_0_reg[28]),
        .I1(inc_V[30]),
        .I2(inc_V[28]),
        .I3(inc_V[31]),
        .I4(inc_V[29]),
        .I5(accumulator_V_0_reg[29]),
        .O(\ap_return[4]_INST_0_i_3_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_30 
       (.I0(inc_V[17]),
        .I1(inc_V[19]),
        .I2(accumulator_V_0_reg[17]),
        .I3(\ap_return[4]_INST_0_i_26_n_0 ),
        .O(\ap_return[4]_INST_0_i_30_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_31 
       (.I0(inc_V[16]),
        .I1(inc_V[18]),
        .I2(accumulator_V_0_reg[16]),
        .I3(\ap_return[4]_INST_0_i_27_n_0 ),
        .O(\ap_return[4]_INST_0_i_31_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0_i_32 
       (.CI(\ap_return[4]_INST_0_i_41_n_0 ),
        .CO({\ap_return[4]_INST_0_i_32_n_0 ,\ap_return[4]_INST_0_i_32_n_1 ,\ap_return[4]_INST_0_i_32_n_2 ,\ap_return[4]_INST_0_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[4]_INST_0_i_42_n_0 ,\ap_return[4]_INST_0_i_43_n_0 ,\ap_return[4]_INST_0_i_44_n_0 ,\ap_return[4]_INST_0_i_45_n_0 }),
        .O(\NLW_ap_return[4]_INST_0_i_32_O_UNCONNECTED [3:0]),
        .S({\ap_return[4]_INST_0_i_46_n_0 ,\ap_return[4]_INST_0_i_47_n_0 ,\ap_return[4]_INST_0_i_48_n_0 ,\ap_return[4]_INST_0_i_49_n_0 }));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_33 
       (.I0(inc_V[14]),
        .I1(inc_V[16]),
        .I2(accumulator_V_0_reg[14]),
        .O(\ap_return[4]_INST_0_i_33_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_34 
       (.I0(inc_V[13]),
        .I1(inc_V[15]),
        .I2(accumulator_V_0_reg[13]),
        .O(\ap_return[4]_INST_0_i_34_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_35 
       (.I0(inc_V[12]),
        .I1(inc_V[14]),
        .I2(accumulator_V_0_reg[12]),
        .O(\ap_return[4]_INST_0_i_35_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_36 
       (.I0(inc_V[11]),
        .I1(inc_V[13]),
        .I2(accumulator_V_0_reg[11]),
        .O(\ap_return[4]_INST_0_i_36_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_37 
       (.I0(inc_V[15]),
        .I1(inc_V[17]),
        .I2(accumulator_V_0_reg[15]),
        .I3(\ap_return[4]_INST_0_i_33_n_0 ),
        .O(\ap_return[4]_INST_0_i_37_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_38 
       (.I0(inc_V[14]),
        .I1(inc_V[16]),
        .I2(accumulator_V_0_reg[14]),
        .I3(\ap_return[4]_INST_0_i_34_n_0 ),
        .O(\ap_return[4]_INST_0_i_38_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_39 
       (.I0(inc_V[13]),
        .I1(inc_V[15]),
        .I2(accumulator_V_0_reg[13]),
        .I3(\ap_return[4]_INST_0_i_35_n_0 ),
        .O(\ap_return[4]_INST_0_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_4 
       (.I0(\ap_return[4]_INST_0_i_2_n_0 ),
        .I1(inc_V[30]),
        .I2(inc_V[28]),
        .I3(accumulator_V_0_reg[28]),
        .O(\ap_return[4]_INST_0_i_4_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_40 
       (.I0(inc_V[12]),
        .I1(inc_V[14]),
        .I2(accumulator_V_0_reg[12]),
        .I3(\ap_return[4]_INST_0_i_36_n_0 ),
        .O(\ap_return[4]_INST_0_i_40_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0_i_41 
       (.CI(\ap_return[4]_INST_0_i_50_n_0 ),
        .CO({\ap_return[4]_INST_0_i_41_n_0 ,\ap_return[4]_INST_0_i_41_n_1 ,\ap_return[4]_INST_0_i_41_n_2 ,\ap_return[4]_INST_0_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[4]_INST_0_i_51_n_0 ,\ap_return[4]_INST_0_i_52_n_0 ,\ap_return[4]_INST_0_i_53_n_0 ,\ap_return[4]_INST_0_i_54_n_0 }),
        .O(\NLW_ap_return[4]_INST_0_i_41_O_UNCONNECTED [3:0]),
        .S({\ap_return[4]_INST_0_i_55_n_0 ,\ap_return[4]_INST_0_i_56_n_0 ,\ap_return[4]_INST_0_i_57_n_0 ,\ap_return[4]_INST_0_i_58_n_0 }));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_42 
       (.I0(inc_V[10]),
        .I1(inc_V[12]),
        .I2(accumulator_V_0_reg[10]),
        .O(\ap_return[4]_INST_0_i_42_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_43 
       (.I0(inc_V[9]),
        .I1(inc_V[11]),
        .I2(accumulator_V_0_reg[9]),
        .O(\ap_return[4]_INST_0_i_43_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_44 
       (.I0(inc_V[8]),
        .I1(inc_V[10]),
        .I2(accumulator_V_0_reg[8]),
        .O(\ap_return[4]_INST_0_i_44_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_45 
       (.I0(inc_V[7]),
        .I1(inc_V[9]),
        .I2(accumulator_V_0_reg[7]),
        .O(\ap_return[4]_INST_0_i_45_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_46 
       (.I0(inc_V[11]),
        .I1(inc_V[13]),
        .I2(accumulator_V_0_reg[11]),
        .I3(\ap_return[4]_INST_0_i_42_n_0 ),
        .O(\ap_return[4]_INST_0_i_46_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_47 
       (.I0(inc_V[10]),
        .I1(inc_V[12]),
        .I2(accumulator_V_0_reg[10]),
        .I3(\ap_return[4]_INST_0_i_43_n_0 ),
        .O(\ap_return[4]_INST_0_i_47_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_48 
       (.I0(inc_V[9]),
        .I1(inc_V[11]),
        .I2(accumulator_V_0_reg[9]),
        .I3(\ap_return[4]_INST_0_i_44_n_0 ),
        .O(\ap_return[4]_INST_0_i_48_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_49 
       (.I0(inc_V[8]),
        .I1(inc_V[10]),
        .I2(accumulator_V_0_reg[8]),
        .I3(\ap_return[4]_INST_0_i_45_n_0 ),
        .O(\ap_return[4]_INST_0_i_49_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0_i_5 
       (.CI(\ap_return[4]_INST_0_i_14_n_0 ),
        .CO({\ap_return[4]_INST_0_i_5_n_0 ,\ap_return[4]_INST_0_i_5_n_1 ,\ap_return[4]_INST_0_i_5_n_2 ,\ap_return[4]_INST_0_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[4]_INST_0_i_15_n_0 ,\ap_return[4]_INST_0_i_16_n_0 ,\ap_return[4]_INST_0_i_17_n_0 ,\ap_return[4]_INST_0_i_18_n_0 }),
        .O(\NLW_ap_return[4]_INST_0_i_5_O_UNCONNECTED [3:0]),
        .S({\ap_return[4]_INST_0_i_19_n_0 ,\ap_return[4]_INST_0_i_20_n_0 ,\ap_return[4]_INST_0_i_21_n_0 ,\ap_return[4]_INST_0_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[4]_INST_0_i_50 
       (.CI(1'b0),
        .CO({\ap_return[4]_INST_0_i_50_n_0 ,\ap_return[4]_INST_0_i_50_n_1 ,\ap_return[4]_INST_0_i_50_n_2 ,\ap_return[4]_INST_0_i_50_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[4]_INST_0_i_59_n_0 ,\ap_return[4]_INST_0_i_60_n_0 ,\ap_return[4]_INST_0_i_61_n_0 ,accumulator_V_0_reg[0]}),
        .O(\NLW_ap_return[4]_INST_0_i_50_O_UNCONNECTED [3:0]),
        .S({\ap_return[4]_INST_0_i_62_n_0 ,\ap_return[4]_INST_0_i_63_n_0 ,\ap_return[4]_INST_0_i_64_n_0 ,\ap_return[4]_INST_0_i_65_n_0 }));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_51 
       (.I0(inc_V[6]),
        .I1(inc_V[8]),
        .I2(accumulator_V_0_reg[6]),
        .O(\ap_return[4]_INST_0_i_51_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_52 
       (.I0(inc_V[5]),
        .I1(inc_V[7]),
        .I2(accumulator_V_0_reg[5]),
        .O(\ap_return[4]_INST_0_i_52_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_53 
       (.I0(inc_V[4]),
        .I1(inc_V[6]),
        .I2(accumulator_V_0_reg[4]),
        .O(\ap_return[4]_INST_0_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_54 
       (.I0(inc_V[3]),
        .I1(inc_V[5]),
        .I2(accumulator_V_0_reg[3]),
        .O(\ap_return[4]_INST_0_i_54_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_55 
       (.I0(inc_V[7]),
        .I1(inc_V[9]),
        .I2(accumulator_V_0_reg[7]),
        .I3(\ap_return[4]_INST_0_i_51_n_0 ),
        .O(\ap_return[4]_INST_0_i_55_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_56 
       (.I0(inc_V[6]),
        .I1(inc_V[8]),
        .I2(accumulator_V_0_reg[6]),
        .I3(\ap_return[4]_INST_0_i_52_n_0 ),
        .O(\ap_return[4]_INST_0_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_57 
       (.I0(inc_V[5]),
        .I1(inc_V[7]),
        .I2(accumulator_V_0_reg[5]),
        .I3(\ap_return[4]_INST_0_i_53_n_0 ),
        .O(\ap_return[4]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_58 
       (.I0(inc_V[4]),
        .I1(inc_V[6]),
        .I2(accumulator_V_0_reg[4]),
        .I3(\ap_return[4]_INST_0_i_54_n_0 ),
        .O(\ap_return[4]_INST_0_i_58_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_59 
       (.I0(inc_V[2]),
        .I1(inc_V[4]),
        .I2(accumulator_V_0_reg[2]),
        .O(\ap_return[4]_INST_0_i_59_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_6 
       (.I0(inc_V[26]),
        .I1(inc_V[28]),
        .I2(accumulator_V_0_reg[26]),
        .O(\ap_return[4]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_60 
       (.I0(inc_V[1]),
        .I1(inc_V[3]),
        .I2(accumulator_V_0_reg[1]),
        .O(\ap_return[4]_INST_0_i_60_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ap_return[4]_INST_0_i_61 
       (.I0(accumulator_V_0_reg[1]),
        .I1(inc_V[1]),
        .I2(inc_V[3]),
        .O(\ap_return[4]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_62 
       (.I0(inc_V[3]),
        .I1(inc_V[5]),
        .I2(accumulator_V_0_reg[3]),
        .I3(\ap_return[4]_INST_0_i_59_n_0 ),
        .O(\ap_return[4]_INST_0_i_62_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[4]_INST_0_i_63 
       (.I0(inc_V[2]),
        .I1(inc_V[4]),
        .I2(accumulator_V_0_reg[2]),
        .I3(\ap_return[4]_INST_0_i_60_n_0 ),
        .O(\ap_return[4]_INST_0_i_63_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \ap_return[4]_INST_0_i_64 
       (.I0(inc_V[1]),
        .I1(inc_V[3]),
        .I2(accumulator_V_0_reg[1]),
        .I3(inc_V[2]),
        .I4(inc_V[0]),
        .O(\ap_return[4]_INST_0_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ap_return[4]_INST_0_i_65 
       (.I0(inc_V[0]),
        .I1(inc_V[2]),
        .I2(accumulator_V_0_reg[0]),
        .O(\ap_return[4]_INST_0_i_65_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_7 
       (.I0(inc_V[25]),
        .I1(inc_V[27]),
        .I2(accumulator_V_0_reg[25]),
        .O(\ap_return[4]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_8 
       (.I0(inc_V[24]),
        .I1(inc_V[26]),
        .I2(accumulator_V_0_reg[24]),
        .O(\ap_return[4]_INST_0_i_8_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[4]_INST_0_i_9 
       (.I0(inc_V[23]),
        .I1(inc_V[25]),
        .I2(accumulator_V_0_reg[23]),
        .O(\ap_return[4]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0 
       (.CI(\ap_return[5]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[5]_INST_0_CO_UNCONNECTED [3:2],\ap_return[5]_INST_0_n_2 ,\ap_return[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ap_return[5]_INST_0_i_2_n_0 ,\ap_return[5]_INST_0_i_3_n_0 }),
        .O({\NLW_ap_return[5]_INST_0_O_UNCONNECTED [3],ap_return[5],\NLW_ap_return[5]_INST_0_O_UNCONNECTED [1:0]}),
        .S({1'b0,\ap_return[5]_INST_0_i_4_n_0 ,\ap_return[5]_INST_0_i_5_n_0 ,\ap_return[5]_INST_0_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0_i_1 
       (.CI(\ap_return[5]_INST_0_i_7_n_0 ),
        .CO({\ap_return[5]_INST_0_i_1_n_0 ,\ap_return[5]_INST_0_i_1_n_1 ,\ap_return[5]_INST_0_i_1_n_2 ,\ap_return[5]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[5]_INST_0_i_8_n_0 ,\ap_return[5]_INST_0_i_9_n_0 ,\ap_return[5]_INST_0_i_10_n_0 ,\ap_return[5]_INST_0_i_11_n_0 }),
        .O(\NLW_ap_return[5]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[5]_INST_0_i_12_n_0 ,\ap_return[5]_INST_0_i_13_n_0 ,\ap_return[5]_INST_0_i_14_n_0 ,\ap_return[5]_INST_0_i_15_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_10 
       (.I0(inc_V[24]),
        .I1(inc_V[22]),
        .I2(accumulator_V_0_reg[23]),
        .O(\ap_return[5]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_11 
       (.I0(inc_V[23]),
        .I1(inc_V[21]),
        .I2(accumulator_V_0_reg[22]),
        .O(\ap_return[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_12 
       (.I0(accumulator_V_0_reg[25]),
        .I1(inc_V[24]),
        .I2(inc_V[26]),
        .I3(inc_V[25]),
        .I4(inc_V[27]),
        .I5(accumulator_V_0_reg[26]),
        .O(\ap_return[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_13 
       (.I0(accumulator_V_0_reg[24]),
        .I1(inc_V[23]),
        .I2(inc_V[25]),
        .I3(inc_V[24]),
        .I4(inc_V[26]),
        .I5(accumulator_V_0_reg[25]),
        .O(\ap_return[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_14 
       (.I0(accumulator_V_0_reg[23]),
        .I1(inc_V[22]),
        .I2(inc_V[24]),
        .I3(inc_V[23]),
        .I4(inc_V[25]),
        .I5(accumulator_V_0_reg[24]),
        .O(\ap_return[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_15 
       (.I0(accumulator_V_0_reg[22]),
        .I1(inc_V[21]),
        .I2(inc_V[23]),
        .I3(inc_V[22]),
        .I4(inc_V[24]),
        .I5(accumulator_V_0_reg[23]),
        .O(\ap_return[5]_INST_0_i_15_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0_i_16 
       (.CI(\ap_return[5]_INST_0_i_25_n_0 ),
        .CO({\ap_return[5]_INST_0_i_16_n_0 ,\ap_return[5]_INST_0_i_16_n_1 ,\ap_return[5]_INST_0_i_16_n_2 ,\ap_return[5]_INST_0_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[5]_INST_0_i_26_n_0 ,\ap_return[5]_INST_0_i_27_n_0 ,\ap_return[5]_INST_0_i_28_n_0 ,\ap_return[5]_INST_0_i_29_n_0 }),
        .O(\NLW_ap_return[5]_INST_0_i_16_O_UNCONNECTED [3:0]),
        .S({\ap_return[5]_INST_0_i_30_n_0 ,\ap_return[5]_INST_0_i_31_n_0 ,\ap_return[5]_INST_0_i_32_n_0 ,\ap_return[5]_INST_0_i_33_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_17 
       (.I0(inc_V[22]),
        .I1(inc_V[20]),
        .I2(accumulator_V_0_reg[21]),
        .O(\ap_return[5]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_18 
       (.I0(inc_V[21]),
        .I1(inc_V[19]),
        .I2(accumulator_V_0_reg[20]),
        .O(\ap_return[5]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_19 
       (.I0(inc_V[20]),
        .I1(inc_V[18]),
        .I2(accumulator_V_0_reg[19]),
        .O(\ap_return[5]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_2 
       (.I0(inc_V[28]),
        .I1(inc_V[26]),
        .I2(accumulator_V_0_reg[27]),
        .O(\ap_return[5]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_20 
       (.I0(inc_V[19]),
        .I1(inc_V[17]),
        .I2(accumulator_V_0_reg[18]),
        .O(\ap_return[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_21 
       (.I0(accumulator_V_0_reg[21]),
        .I1(inc_V[20]),
        .I2(inc_V[22]),
        .I3(inc_V[21]),
        .I4(inc_V[23]),
        .I5(accumulator_V_0_reg[22]),
        .O(\ap_return[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_22 
       (.I0(accumulator_V_0_reg[20]),
        .I1(inc_V[19]),
        .I2(inc_V[21]),
        .I3(inc_V[20]),
        .I4(inc_V[22]),
        .I5(accumulator_V_0_reg[21]),
        .O(\ap_return[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_23 
       (.I0(accumulator_V_0_reg[19]),
        .I1(inc_V[18]),
        .I2(inc_V[20]),
        .I3(inc_V[19]),
        .I4(inc_V[21]),
        .I5(accumulator_V_0_reg[20]),
        .O(\ap_return[5]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_24 
       (.I0(accumulator_V_0_reg[18]),
        .I1(inc_V[17]),
        .I2(inc_V[19]),
        .I3(inc_V[18]),
        .I4(inc_V[20]),
        .I5(accumulator_V_0_reg[19]),
        .O(\ap_return[5]_INST_0_i_24_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0_i_25 
       (.CI(\ap_return[5]_INST_0_i_34_n_0 ),
        .CO({\ap_return[5]_INST_0_i_25_n_0 ,\ap_return[5]_INST_0_i_25_n_1 ,\ap_return[5]_INST_0_i_25_n_2 ,\ap_return[5]_INST_0_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[5]_INST_0_i_35_n_0 ,\ap_return[5]_INST_0_i_36_n_0 ,\ap_return[5]_INST_0_i_37_n_0 ,\ap_return[5]_INST_0_i_38_n_0 }),
        .O(\NLW_ap_return[5]_INST_0_i_25_O_UNCONNECTED [3:0]),
        .S({\ap_return[5]_INST_0_i_39_n_0 ,\ap_return[5]_INST_0_i_40_n_0 ,\ap_return[5]_INST_0_i_41_n_0 ,\ap_return[5]_INST_0_i_42_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_26 
       (.I0(inc_V[18]),
        .I1(inc_V[16]),
        .I2(accumulator_V_0_reg[17]),
        .O(\ap_return[5]_INST_0_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_27 
       (.I0(inc_V[17]),
        .I1(inc_V[15]),
        .I2(accumulator_V_0_reg[16]),
        .O(\ap_return[5]_INST_0_i_27_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_28 
       (.I0(inc_V[16]),
        .I1(inc_V[14]),
        .I2(accumulator_V_0_reg[15]),
        .O(\ap_return[5]_INST_0_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_29 
       (.I0(inc_V[15]),
        .I1(inc_V[13]),
        .I2(accumulator_V_0_reg[14]),
        .O(\ap_return[5]_INST_0_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_3 
       (.I0(inc_V[27]),
        .I1(inc_V[25]),
        .I2(accumulator_V_0_reg[26]),
        .O(\ap_return[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_30 
       (.I0(accumulator_V_0_reg[17]),
        .I1(inc_V[16]),
        .I2(inc_V[18]),
        .I3(inc_V[17]),
        .I4(inc_V[19]),
        .I5(accumulator_V_0_reg[18]),
        .O(\ap_return[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_31 
       (.I0(accumulator_V_0_reg[16]),
        .I1(inc_V[15]),
        .I2(inc_V[17]),
        .I3(inc_V[16]),
        .I4(inc_V[18]),
        .I5(accumulator_V_0_reg[17]),
        .O(\ap_return[5]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_32 
       (.I0(accumulator_V_0_reg[15]),
        .I1(inc_V[14]),
        .I2(inc_V[16]),
        .I3(inc_V[15]),
        .I4(inc_V[17]),
        .I5(accumulator_V_0_reg[16]),
        .O(\ap_return[5]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_33 
       (.I0(accumulator_V_0_reg[14]),
        .I1(inc_V[13]),
        .I2(inc_V[15]),
        .I3(inc_V[14]),
        .I4(inc_V[16]),
        .I5(accumulator_V_0_reg[15]),
        .O(\ap_return[5]_INST_0_i_33_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0_i_34 
       (.CI(\ap_return[5]_INST_0_i_43_n_0 ),
        .CO({\ap_return[5]_INST_0_i_34_n_0 ,\ap_return[5]_INST_0_i_34_n_1 ,\ap_return[5]_INST_0_i_34_n_2 ,\ap_return[5]_INST_0_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[5]_INST_0_i_44_n_0 ,\ap_return[5]_INST_0_i_45_n_0 ,\ap_return[5]_INST_0_i_46_n_0 ,\ap_return[5]_INST_0_i_47_n_0 }),
        .O(\NLW_ap_return[5]_INST_0_i_34_O_UNCONNECTED [3:0]),
        .S({\ap_return[5]_INST_0_i_48_n_0 ,\ap_return[5]_INST_0_i_49_n_0 ,\ap_return[5]_INST_0_i_50_n_0 ,\ap_return[5]_INST_0_i_51_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_35 
       (.I0(inc_V[14]),
        .I1(inc_V[12]),
        .I2(accumulator_V_0_reg[13]),
        .O(\ap_return[5]_INST_0_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_36 
       (.I0(inc_V[13]),
        .I1(inc_V[11]),
        .I2(accumulator_V_0_reg[12]),
        .O(\ap_return[5]_INST_0_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_37 
       (.I0(inc_V[12]),
        .I1(inc_V[10]),
        .I2(accumulator_V_0_reg[11]),
        .O(\ap_return[5]_INST_0_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_38 
       (.I0(inc_V[11]),
        .I1(inc_V[9]),
        .I2(accumulator_V_0_reg[10]),
        .O(\ap_return[5]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_39 
       (.I0(accumulator_V_0_reg[13]),
        .I1(inc_V[12]),
        .I2(inc_V[14]),
        .I3(inc_V[13]),
        .I4(inc_V[15]),
        .I5(accumulator_V_0_reg[14]),
        .O(\ap_return[5]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \ap_return[5]_INST_0_i_4 
       (.I0(accumulator_V_0_reg[29]),
        .I1(inc_V[30]),
        .I2(inc_V[28]),
        .I3(accumulator_V_0_reg[28]),
        .I4(inc_V[27]),
        .I5(inc_V[29]),
        .O(\ap_return[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_40 
       (.I0(accumulator_V_0_reg[12]),
        .I1(inc_V[11]),
        .I2(inc_V[13]),
        .I3(inc_V[12]),
        .I4(inc_V[14]),
        .I5(accumulator_V_0_reg[13]),
        .O(\ap_return[5]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_41 
       (.I0(accumulator_V_0_reg[11]),
        .I1(inc_V[10]),
        .I2(inc_V[12]),
        .I3(inc_V[11]),
        .I4(inc_V[13]),
        .I5(accumulator_V_0_reg[12]),
        .O(\ap_return[5]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_42 
       (.I0(accumulator_V_0_reg[10]),
        .I1(inc_V[9]),
        .I2(inc_V[11]),
        .I3(inc_V[10]),
        .I4(inc_V[12]),
        .I5(accumulator_V_0_reg[11]),
        .O(\ap_return[5]_INST_0_i_42_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0_i_43 
       (.CI(\ap_return[5]_INST_0_i_52_n_0 ),
        .CO({\ap_return[5]_INST_0_i_43_n_0 ,\ap_return[5]_INST_0_i_43_n_1 ,\ap_return[5]_INST_0_i_43_n_2 ,\ap_return[5]_INST_0_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[5]_INST_0_i_53_n_0 ,\ap_return[5]_INST_0_i_54_n_0 ,\ap_return[5]_INST_0_i_55_n_0 ,\ap_return[5]_INST_0_i_56_n_0 }),
        .O(\NLW_ap_return[5]_INST_0_i_43_O_UNCONNECTED [3:0]),
        .S({\ap_return[5]_INST_0_i_57_n_0 ,\ap_return[5]_INST_0_i_58_n_0 ,\ap_return[5]_INST_0_i_59_n_0 ,\ap_return[5]_INST_0_i_60_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_44 
       (.I0(inc_V[10]),
        .I1(inc_V[8]),
        .I2(accumulator_V_0_reg[9]),
        .O(\ap_return[5]_INST_0_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_45 
       (.I0(inc_V[9]),
        .I1(inc_V[7]),
        .I2(accumulator_V_0_reg[8]),
        .O(\ap_return[5]_INST_0_i_45_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_46 
       (.I0(inc_V[8]),
        .I1(inc_V[6]),
        .I2(accumulator_V_0_reg[7]),
        .O(\ap_return[5]_INST_0_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_47 
       (.I0(inc_V[7]),
        .I1(inc_V[5]),
        .I2(accumulator_V_0_reg[6]),
        .O(\ap_return[5]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_48 
       (.I0(accumulator_V_0_reg[9]),
        .I1(inc_V[8]),
        .I2(inc_V[10]),
        .I3(inc_V[9]),
        .I4(inc_V[11]),
        .I5(accumulator_V_0_reg[10]),
        .O(\ap_return[5]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_49 
       (.I0(accumulator_V_0_reg[8]),
        .I1(inc_V[7]),
        .I2(inc_V[9]),
        .I3(inc_V[8]),
        .I4(inc_V[10]),
        .I5(accumulator_V_0_reg[9]),
        .O(\ap_return[5]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_5 
       (.I0(accumulator_V_0_reg[27]),
        .I1(inc_V[26]),
        .I2(inc_V[28]),
        .I3(inc_V[27]),
        .I4(inc_V[29]),
        .I5(accumulator_V_0_reg[28]),
        .O(\ap_return[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_50 
       (.I0(accumulator_V_0_reg[7]),
        .I1(inc_V[6]),
        .I2(inc_V[8]),
        .I3(inc_V[7]),
        .I4(inc_V[9]),
        .I5(accumulator_V_0_reg[8]),
        .O(\ap_return[5]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_51 
       (.I0(accumulator_V_0_reg[6]),
        .I1(inc_V[5]),
        .I2(inc_V[7]),
        .I3(inc_V[6]),
        .I4(inc_V[8]),
        .I5(accumulator_V_0_reg[7]),
        .O(\ap_return[5]_INST_0_i_51_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0_i_52 
       (.CI(1'b0),
        .CO({\ap_return[5]_INST_0_i_52_n_0 ,\ap_return[5]_INST_0_i_52_n_1 ,\ap_return[5]_INST_0_i_52_n_2 ,\ap_return[5]_INST_0_i_52_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[5]_INST_0_i_61_n_0 ,\ap_return[5]_INST_0_i_62_n_0 ,\ap_return[5]_INST_0_i_63_n_0 ,1'b0}),
        .O(\NLW_ap_return[5]_INST_0_i_52_O_UNCONNECTED [3:0]),
        .S({\ap_return[5]_INST_0_i_64_n_0 ,\ap_return[5]_INST_0_i_65_n_0 ,\ap_return[5]_INST_0_i_66_n_0 ,inc_V[0]}));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_53 
       (.I0(inc_V[6]),
        .I1(inc_V[4]),
        .I2(accumulator_V_0_reg[5]),
        .O(\ap_return[5]_INST_0_i_53_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_54 
       (.I0(inc_V[5]),
        .I1(inc_V[3]),
        .I2(accumulator_V_0_reg[4]),
        .O(\ap_return[5]_INST_0_i_54_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_55 
       (.I0(inc_V[4]),
        .I1(inc_V[2]),
        .I2(accumulator_V_0_reg[3]),
        .O(\ap_return[5]_INST_0_i_55_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_56 
       (.I0(inc_V[3]),
        .I1(inc_V[1]),
        .I2(accumulator_V_0_reg[2]),
        .O(\ap_return[5]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_57 
       (.I0(accumulator_V_0_reg[5]),
        .I1(inc_V[4]),
        .I2(inc_V[6]),
        .I3(inc_V[5]),
        .I4(inc_V[7]),
        .I5(accumulator_V_0_reg[6]),
        .O(\ap_return[5]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_58 
       (.I0(accumulator_V_0_reg[4]),
        .I1(inc_V[3]),
        .I2(inc_V[5]),
        .I3(inc_V[4]),
        .I4(inc_V[6]),
        .I5(accumulator_V_0_reg[5]),
        .O(\ap_return[5]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_59 
       (.I0(accumulator_V_0_reg[3]),
        .I1(inc_V[2]),
        .I2(inc_V[4]),
        .I3(inc_V[3]),
        .I4(inc_V[5]),
        .I5(accumulator_V_0_reg[4]),
        .O(\ap_return[5]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_6 
       (.I0(accumulator_V_0_reg[26]),
        .I1(inc_V[25]),
        .I2(inc_V[27]),
        .I3(inc_V[26]),
        .I4(inc_V[28]),
        .I5(accumulator_V_0_reg[27]),
        .O(\ap_return[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_60 
       (.I0(accumulator_V_0_reg[2]),
        .I1(inc_V[1]),
        .I2(inc_V[3]),
        .I3(inc_V[2]),
        .I4(inc_V[4]),
        .I5(accumulator_V_0_reg[3]),
        .O(\ap_return[5]_INST_0_i_60_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_61 
       (.I0(inc_V[2]),
        .I1(inc_V[0]),
        .I2(accumulator_V_0_reg[1]),
        .O(\ap_return[5]_INST_0_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \ap_return[5]_INST_0_i_62 
       (.I0(inc_V[0]),
        .I1(inc_V[2]),
        .I2(accumulator_V_0_reg[1]),
        .O(\ap_return[5]_INST_0_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_return[5]_INST_0_i_63 
       (.I0(inc_V[0]),
        .O(\ap_return[5]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[5]_INST_0_i_64 
       (.I0(accumulator_V_0_reg[1]),
        .I1(inc_V[0]),
        .I2(inc_V[2]),
        .I3(inc_V[1]),
        .I4(inc_V[3]),
        .I5(accumulator_V_0_reg[2]),
        .O(\ap_return[5]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \ap_return[5]_INST_0_i_65 
       (.I0(inc_V[0]),
        .I1(inc_V[2]),
        .I2(accumulator_V_0_reg[1]),
        .I3(inc_V[1]),
        .I4(accumulator_V_0_reg[0]),
        .O(\ap_return[5]_INST_0_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ap_return[5]_INST_0_i_66 
       (.I0(inc_V[0]),
        .I1(inc_V[1]),
        .I2(accumulator_V_0_reg[0]),
        .O(\ap_return[5]_INST_0_i_66_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[5]_INST_0_i_7 
       (.CI(\ap_return[5]_INST_0_i_16_n_0 ),
        .CO({\ap_return[5]_INST_0_i_7_n_0 ,\ap_return[5]_INST_0_i_7_n_1 ,\ap_return[5]_INST_0_i_7_n_2 ,\ap_return[5]_INST_0_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[5]_INST_0_i_17_n_0 ,\ap_return[5]_INST_0_i_18_n_0 ,\ap_return[5]_INST_0_i_19_n_0 ,\ap_return[5]_INST_0_i_20_n_0 }),
        .O(\NLW_ap_return[5]_INST_0_i_7_O_UNCONNECTED [3:0]),
        .S({\ap_return[5]_INST_0_i_21_n_0 ,\ap_return[5]_INST_0_i_22_n_0 ,\ap_return[5]_INST_0_i_23_n_0 ,\ap_return[5]_INST_0_i_24_n_0 }));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_8 
       (.I0(inc_V[26]),
        .I1(inc_V[24]),
        .I2(accumulator_V_0_reg[25]),
        .O(\ap_return[5]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[5]_INST_0_i_9 
       (.I0(inc_V[25]),
        .I1(inc_V[23]),
        .I2(accumulator_V_0_reg[24]),
        .O(\ap_return[5]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0 
       (.CI(\ap_return[6]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[6]_INST_0_CO_UNCONNECTED [3:2],\ap_return[6]_INST_0_n_2 ,\ap_return[6]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ap_return[6]_INST_0_i_2_n_0 ,\ap_return[6]_INST_0_i_3_n_0 }),
        .O({\NLW_ap_return[6]_INST_0_O_UNCONNECTED [3],ap_return[6],\NLW_ap_return[6]_INST_0_O_UNCONNECTED [1:0]}),
        .S({1'b0,\ap_return[6]_INST_0_i_4_n_0 ,\ap_return[6]_INST_0_i_5_n_0 ,\ap_return[6]_INST_0_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0_i_1 
       (.CI(\ap_return[6]_INST_0_i_7_n_0 ),
        .CO({\ap_return[6]_INST_0_i_1_n_0 ,\ap_return[6]_INST_0_i_1_n_1 ,\ap_return[6]_INST_0_i_1_n_2 ,\ap_return[6]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[6]_INST_0_i_8_n_0 ,\ap_return[6]_INST_0_i_9_n_0 ,\ap_return[6]_INST_0_i_10_n_0 ,\ap_return[6]_INST_0_i_11_n_0 }),
        .O(\NLW_ap_return[6]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[6]_INST_0_i_12_n_0 ,\ap_return[6]_INST_0_i_13_n_0 ,\ap_return[6]_INST_0_i_14_n_0 ,\ap_return[6]_INST_0_i_15_n_0 }));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_10 
       (.I0(inc_V[25]),
        .I1(accumulator_V_0_reg[23]),
        .I2(inc_V[22]),
        .O(\ap_return[6]_INST_0_i_10_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_11 
       (.I0(inc_V[24]),
        .I1(accumulator_V_0_reg[22]),
        .I2(inc_V[21]),
        .O(\ap_return[6]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_12 
       (.I0(inc_V[28]),
        .I1(accumulator_V_0_reg[26]),
        .I2(inc_V[25]),
        .I3(\ap_return[6]_INST_0_i_8_n_0 ),
        .O(\ap_return[6]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_13 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[25]),
        .I2(inc_V[24]),
        .I3(\ap_return[6]_INST_0_i_9_n_0 ),
        .O(\ap_return[6]_INST_0_i_13_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_14 
       (.I0(inc_V[26]),
        .I1(accumulator_V_0_reg[24]),
        .I2(inc_V[23]),
        .I3(\ap_return[6]_INST_0_i_10_n_0 ),
        .O(\ap_return[6]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_15 
       (.I0(inc_V[25]),
        .I1(accumulator_V_0_reg[23]),
        .I2(inc_V[22]),
        .I3(\ap_return[6]_INST_0_i_11_n_0 ),
        .O(\ap_return[6]_INST_0_i_15_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0_i_16 
       (.CI(\ap_return[6]_INST_0_i_25_n_0 ),
        .CO({\ap_return[6]_INST_0_i_16_n_0 ,\ap_return[6]_INST_0_i_16_n_1 ,\ap_return[6]_INST_0_i_16_n_2 ,\ap_return[6]_INST_0_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[6]_INST_0_i_26_n_0 ,\ap_return[6]_INST_0_i_27_n_0 ,\ap_return[6]_INST_0_i_28_n_0 ,\ap_return[6]_INST_0_i_29_n_0 }),
        .O(\NLW_ap_return[6]_INST_0_i_16_O_UNCONNECTED [3:0]),
        .S({\ap_return[6]_INST_0_i_30_n_0 ,\ap_return[6]_INST_0_i_31_n_0 ,\ap_return[6]_INST_0_i_32_n_0 ,\ap_return[6]_INST_0_i_33_n_0 }));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_17 
       (.I0(inc_V[23]),
        .I1(accumulator_V_0_reg[21]),
        .I2(inc_V[20]),
        .O(\ap_return[6]_INST_0_i_17_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_18 
       (.I0(inc_V[22]),
        .I1(accumulator_V_0_reg[20]),
        .I2(inc_V[19]),
        .O(\ap_return[6]_INST_0_i_18_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_19 
       (.I0(inc_V[21]),
        .I1(accumulator_V_0_reg[19]),
        .I2(inc_V[18]),
        .O(\ap_return[6]_INST_0_i_19_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_2 
       (.I0(inc_V[29]),
        .I1(accumulator_V_0_reg[27]),
        .I2(inc_V[26]),
        .O(\ap_return[6]_INST_0_i_2_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_20 
       (.I0(inc_V[20]),
        .I1(accumulator_V_0_reg[18]),
        .I2(inc_V[17]),
        .O(\ap_return[6]_INST_0_i_20_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_21 
       (.I0(inc_V[24]),
        .I1(accumulator_V_0_reg[22]),
        .I2(inc_V[21]),
        .I3(\ap_return[6]_INST_0_i_17_n_0 ),
        .O(\ap_return[6]_INST_0_i_21_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_22 
       (.I0(inc_V[23]),
        .I1(accumulator_V_0_reg[21]),
        .I2(inc_V[20]),
        .I3(\ap_return[6]_INST_0_i_18_n_0 ),
        .O(\ap_return[6]_INST_0_i_22_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_23 
       (.I0(inc_V[22]),
        .I1(accumulator_V_0_reg[20]),
        .I2(inc_V[19]),
        .I3(\ap_return[6]_INST_0_i_19_n_0 ),
        .O(\ap_return[6]_INST_0_i_23_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_24 
       (.I0(inc_V[21]),
        .I1(accumulator_V_0_reg[19]),
        .I2(inc_V[18]),
        .I3(\ap_return[6]_INST_0_i_20_n_0 ),
        .O(\ap_return[6]_INST_0_i_24_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0_i_25 
       (.CI(\ap_return[6]_INST_0_i_34_n_0 ),
        .CO({\ap_return[6]_INST_0_i_25_n_0 ,\ap_return[6]_INST_0_i_25_n_1 ,\ap_return[6]_INST_0_i_25_n_2 ,\ap_return[6]_INST_0_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[6]_INST_0_i_35_n_0 ,\ap_return[6]_INST_0_i_36_n_0 ,\ap_return[6]_INST_0_i_37_n_0 ,\ap_return[6]_INST_0_i_38_n_0 }),
        .O(\NLW_ap_return[6]_INST_0_i_25_O_UNCONNECTED [3:0]),
        .S({\ap_return[6]_INST_0_i_39_n_0 ,\ap_return[6]_INST_0_i_40_n_0 ,\ap_return[6]_INST_0_i_41_n_0 ,\ap_return[6]_INST_0_i_42_n_0 }));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_26 
       (.I0(inc_V[19]),
        .I1(accumulator_V_0_reg[17]),
        .I2(inc_V[16]),
        .O(\ap_return[6]_INST_0_i_26_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_27 
       (.I0(inc_V[18]),
        .I1(accumulator_V_0_reg[16]),
        .I2(inc_V[15]),
        .O(\ap_return[6]_INST_0_i_27_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_28 
       (.I0(inc_V[17]),
        .I1(accumulator_V_0_reg[15]),
        .I2(inc_V[14]),
        .O(\ap_return[6]_INST_0_i_28_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_29 
       (.I0(inc_V[16]),
        .I1(accumulator_V_0_reg[14]),
        .I2(inc_V[13]),
        .O(\ap_return[6]_INST_0_i_29_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_3 
       (.I0(inc_V[28]),
        .I1(accumulator_V_0_reg[26]),
        .I2(inc_V[25]),
        .O(\ap_return[6]_INST_0_i_3_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_30 
       (.I0(inc_V[20]),
        .I1(accumulator_V_0_reg[18]),
        .I2(inc_V[17]),
        .I3(\ap_return[6]_INST_0_i_26_n_0 ),
        .O(\ap_return[6]_INST_0_i_30_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_31 
       (.I0(inc_V[19]),
        .I1(accumulator_V_0_reg[17]),
        .I2(inc_V[16]),
        .I3(\ap_return[6]_INST_0_i_27_n_0 ),
        .O(\ap_return[6]_INST_0_i_31_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_32 
       (.I0(inc_V[18]),
        .I1(accumulator_V_0_reg[16]),
        .I2(inc_V[15]),
        .I3(\ap_return[6]_INST_0_i_28_n_0 ),
        .O(\ap_return[6]_INST_0_i_32_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_33 
       (.I0(inc_V[17]),
        .I1(accumulator_V_0_reg[15]),
        .I2(inc_V[14]),
        .I3(\ap_return[6]_INST_0_i_29_n_0 ),
        .O(\ap_return[6]_INST_0_i_33_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0_i_34 
       (.CI(\ap_return[6]_INST_0_i_43_n_0 ),
        .CO({\ap_return[6]_INST_0_i_34_n_0 ,\ap_return[6]_INST_0_i_34_n_1 ,\ap_return[6]_INST_0_i_34_n_2 ,\ap_return[6]_INST_0_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[6]_INST_0_i_44_n_0 ,\ap_return[6]_INST_0_i_45_n_0 ,\ap_return[6]_INST_0_i_46_n_0 ,\ap_return[6]_INST_0_i_47_n_0 }),
        .O(\NLW_ap_return[6]_INST_0_i_34_O_UNCONNECTED [3:0]),
        .S({\ap_return[6]_INST_0_i_48_n_0 ,\ap_return[6]_INST_0_i_49_n_0 ,\ap_return[6]_INST_0_i_50_n_0 ,\ap_return[6]_INST_0_i_51_n_0 }));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_35 
       (.I0(inc_V[15]),
        .I1(accumulator_V_0_reg[13]),
        .I2(inc_V[12]),
        .O(\ap_return[6]_INST_0_i_35_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_36 
       (.I0(inc_V[14]),
        .I1(accumulator_V_0_reg[12]),
        .I2(inc_V[11]),
        .O(\ap_return[6]_INST_0_i_36_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_37 
       (.I0(inc_V[13]),
        .I1(accumulator_V_0_reg[11]),
        .I2(inc_V[10]),
        .O(\ap_return[6]_INST_0_i_37_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_38 
       (.I0(inc_V[12]),
        .I1(accumulator_V_0_reg[10]),
        .I2(inc_V[9]),
        .O(\ap_return[6]_INST_0_i_38_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_39 
       (.I0(inc_V[16]),
        .I1(accumulator_V_0_reg[14]),
        .I2(inc_V[13]),
        .I3(\ap_return[6]_INST_0_i_35_n_0 ),
        .O(\ap_return[6]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \ap_return[6]_INST_0_i_4 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[28]),
        .I2(inc_V[30]),
        .I3(accumulator_V_0_reg[29]),
        .I4(inc_V[31]),
        .I5(inc_V[28]),
        .O(\ap_return[6]_INST_0_i_4_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_40 
       (.I0(inc_V[15]),
        .I1(accumulator_V_0_reg[13]),
        .I2(inc_V[12]),
        .I3(\ap_return[6]_INST_0_i_36_n_0 ),
        .O(\ap_return[6]_INST_0_i_40_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_41 
       (.I0(inc_V[14]),
        .I1(accumulator_V_0_reg[12]),
        .I2(inc_V[11]),
        .I3(\ap_return[6]_INST_0_i_37_n_0 ),
        .O(\ap_return[6]_INST_0_i_41_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_42 
       (.I0(inc_V[13]),
        .I1(accumulator_V_0_reg[11]),
        .I2(inc_V[10]),
        .I3(\ap_return[6]_INST_0_i_38_n_0 ),
        .O(\ap_return[6]_INST_0_i_42_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0_i_43 
       (.CI(\ap_return[6]_INST_0_i_52_n_0 ),
        .CO({\ap_return[6]_INST_0_i_43_n_0 ,\ap_return[6]_INST_0_i_43_n_1 ,\ap_return[6]_INST_0_i_43_n_2 ,\ap_return[6]_INST_0_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[6]_INST_0_i_53_n_0 ,\ap_return[6]_INST_0_i_54_n_0 ,\ap_return[6]_INST_0_i_55_n_0 ,\ap_return[6]_INST_0_i_56_n_0 }),
        .O(\NLW_ap_return[6]_INST_0_i_43_O_UNCONNECTED [3:0]),
        .S({\ap_return[6]_INST_0_i_57_n_0 ,\ap_return[6]_INST_0_i_58_n_0 ,\ap_return[6]_INST_0_i_59_n_0 ,\ap_return[6]_INST_0_i_60_n_0 }));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_44 
       (.I0(inc_V[11]),
        .I1(accumulator_V_0_reg[9]),
        .I2(inc_V[8]),
        .O(\ap_return[6]_INST_0_i_44_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_45 
       (.I0(inc_V[10]),
        .I1(accumulator_V_0_reg[8]),
        .I2(inc_V[7]),
        .O(\ap_return[6]_INST_0_i_45_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_46 
       (.I0(inc_V[9]),
        .I1(accumulator_V_0_reg[7]),
        .I2(inc_V[6]),
        .O(\ap_return[6]_INST_0_i_46_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_47 
       (.I0(inc_V[8]),
        .I1(accumulator_V_0_reg[6]),
        .I2(inc_V[5]),
        .O(\ap_return[6]_INST_0_i_47_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_48 
       (.I0(inc_V[12]),
        .I1(accumulator_V_0_reg[10]),
        .I2(inc_V[9]),
        .I3(\ap_return[6]_INST_0_i_44_n_0 ),
        .O(\ap_return[6]_INST_0_i_48_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_49 
       (.I0(inc_V[11]),
        .I1(accumulator_V_0_reg[9]),
        .I2(inc_V[8]),
        .I3(\ap_return[6]_INST_0_i_45_n_0 ),
        .O(\ap_return[6]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_5 
       (.I0(\ap_return[6]_INST_0_i_2_n_0 ),
        .I1(accumulator_V_0_reg[28]),
        .I2(inc_V[30]),
        .I3(inc_V[27]),
        .O(\ap_return[6]_INST_0_i_5_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_50 
       (.I0(inc_V[10]),
        .I1(accumulator_V_0_reg[8]),
        .I2(inc_V[7]),
        .I3(\ap_return[6]_INST_0_i_46_n_0 ),
        .O(\ap_return[6]_INST_0_i_50_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_51 
       (.I0(inc_V[9]),
        .I1(accumulator_V_0_reg[7]),
        .I2(inc_V[6]),
        .I3(\ap_return[6]_INST_0_i_47_n_0 ),
        .O(\ap_return[6]_INST_0_i_51_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0_i_52 
       (.CI(1'b0),
        .CO({\ap_return[6]_INST_0_i_52_n_0 ,\ap_return[6]_INST_0_i_52_n_1 ,\ap_return[6]_INST_0_i_52_n_2 ,\ap_return[6]_INST_0_i_52_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({\ap_return[6]_INST_0_i_62_n_0 ,inc_V[0],accumulator_V_0_reg[0],1'b0}),
        .O(\NLW_ap_return[6]_INST_0_i_52_O_UNCONNECTED [3:0]),
        .S({\ap_return[6]_INST_0_i_63_n_0 ,\ap_return[6]_INST_0_i_64_n_0 ,\ap_return[6]_INST_0_i_65_n_0 ,p_0_in[1]}));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_53 
       (.I0(inc_V[7]),
        .I1(accumulator_V_0_reg[5]),
        .I2(inc_V[4]),
        .O(\ap_return[6]_INST_0_i_53_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_54 
       (.I0(inc_V[6]),
        .I1(accumulator_V_0_reg[4]),
        .I2(inc_V[3]),
        .O(\ap_return[6]_INST_0_i_54_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_55 
       (.I0(inc_V[5]),
        .I1(accumulator_V_0_reg[3]),
        .I2(inc_V[2]),
        .O(\ap_return[6]_INST_0_i_55_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_56 
       (.I0(inc_V[4]),
        .I1(accumulator_V_0_reg[2]),
        .I2(inc_V[1]),
        .O(\ap_return[6]_INST_0_i_56_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_57 
       (.I0(inc_V[8]),
        .I1(accumulator_V_0_reg[6]),
        .I2(inc_V[5]),
        .I3(\ap_return[6]_INST_0_i_53_n_0 ),
        .O(\ap_return[6]_INST_0_i_57_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_58 
       (.I0(inc_V[7]),
        .I1(accumulator_V_0_reg[5]),
        .I2(inc_V[4]),
        .I3(\ap_return[6]_INST_0_i_54_n_0 ),
        .O(\ap_return[6]_INST_0_i_58_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_59 
       (.I0(inc_V[6]),
        .I1(accumulator_V_0_reg[4]),
        .I2(inc_V[3]),
        .I3(\ap_return[6]_INST_0_i_55_n_0 ),
        .O(\ap_return[6]_INST_0_i_59_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_6 
       (.I0(inc_V[29]),
        .I1(accumulator_V_0_reg[27]),
        .I2(inc_V[26]),
        .I3(\ap_return[6]_INST_0_i_3_n_0 ),
        .O(\ap_return[6]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \ap_return[6]_INST_0_i_60 
       (.I0(inc_V[5]),
        .I1(accumulator_V_0_reg[3]),
        .I2(inc_V[2]),
        .I3(\ap_return[6]_INST_0_i_56_n_0 ),
        .O(\ap_return[6]_INST_0_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_return[6]_INST_0_i_61 
       (.I0(inc_V[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \ap_return[6]_INST_0_i_62 
       (.I0(inc_V[1]),
        .I1(inc_V[4]),
        .I2(accumulator_V_0_reg[2]),
        .O(\ap_return[6]_INST_0_i_62_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    \ap_return[6]_INST_0_i_63 
       (.I0(inc_V[4]),
        .I1(accumulator_V_0_reg[2]),
        .I2(inc_V[1]),
        .I3(inc_V[3]),
        .I4(accumulator_V_0_reg[1]),
        .O(\ap_return[6]_INST_0_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \ap_return[6]_INST_0_i_64 
       (.I0(inc_V[3]),
        .I1(accumulator_V_0_reg[1]),
        .I2(inc_V[0]),
        .O(\ap_return[6]_INST_0_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ap_return[6]_INST_0_i_65 
       (.I0(accumulator_V_0_reg[0]),
        .I1(inc_V[2]),
        .O(\ap_return[6]_INST_0_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_return[6]_INST_0_i_66 
       (.I0(inc_V[1]),
        .O(p_0_in[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[6]_INST_0_i_7 
       (.CI(\ap_return[6]_INST_0_i_16_n_0 ),
        .CO({\ap_return[6]_INST_0_i_7_n_0 ,\ap_return[6]_INST_0_i_7_n_1 ,\ap_return[6]_INST_0_i_7_n_2 ,\ap_return[6]_INST_0_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\ap_return[6]_INST_0_i_17_n_0 ,\ap_return[6]_INST_0_i_18_n_0 ,\ap_return[6]_INST_0_i_19_n_0 ,\ap_return[6]_INST_0_i_20_n_0 }),
        .O(\NLW_ap_return[6]_INST_0_i_7_O_UNCONNECTED [3:0]),
        .S({\ap_return[6]_INST_0_i_21_n_0 ,\ap_return[6]_INST_0_i_22_n_0 ,\ap_return[6]_INST_0_i_23_n_0 ,\ap_return[6]_INST_0_i_24_n_0 }));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_8 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[25]),
        .I2(inc_V[24]),
        .O(\ap_return[6]_INST_0_i_8_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \ap_return[6]_INST_0_i_9 
       (.I0(inc_V[26]),
        .I1(accumulator_V_0_reg[24]),
        .I2(inc_V[23]),
        .O(\ap_return[6]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0 
       (.CI(\ap_return[7]_INST_0_i_1_n_0 ),
        .CO({\NLW_ap_return[7]_INST_0_CO_UNCONNECTED [3:1],\ap_return[7]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,inc_V[27]}),
        .O({\NLW_ap_return[7]_INST_0_O_UNCONNECTED [3:2],ap_return[7],\NLW_ap_return[7]_INST_0_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,\ap_return[7]_INST_0_i_2_n_0 ,\ap_return[7]_INST_0_i_3_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0_i_1 
       (.CI(\ap_return[7]_INST_0_i_4_n_0 ),
        .CO({\ap_return[7]_INST_0_i_1_n_0 ,\ap_return[7]_INST_0_i_1_n_1 ,\ap_return[7]_INST_0_i_1_n_2 ,\ap_return[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[26:23]),
        .O(\NLW_ap_return[7]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ap_return[7]_INST_0_i_5_n_0 ,\ap_return[7]_INST_0_i_6_n_0 ,\ap_return[7]_INST_0_i_7_n_0 ,\ap_return[7]_INST_0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_10 
       (.I0(inc_V[22]),
        .I1(accumulator_V_0_reg[23]),
        .O(\ap_return[7]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_11 
       (.I0(inc_V[21]),
        .I1(accumulator_V_0_reg[22]),
        .O(\ap_return[7]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_12 
       (.I0(inc_V[20]),
        .I1(accumulator_V_0_reg[21]),
        .O(\ap_return[7]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_13 
       (.I0(inc_V[19]),
        .I1(accumulator_V_0_reg[20]),
        .O(\ap_return[7]_INST_0_i_13_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0_i_14 
       (.CI(\ap_return[7]_INST_0_i_19_n_0 ),
        .CO({\ap_return[7]_INST_0_i_14_n_0 ,\ap_return[7]_INST_0_i_14_n_1 ,\ap_return[7]_INST_0_i_14_n_2 ,\ap_return[7]_INST_0_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[14:11]),
        .O(\NLW_ap_return[7]_INST_0_i_14_O_UNCONNECTED [3:0]),
        .S({\ap_return[7]_INST_0_i_20_n_0 ,\ap_return[7]_INST_0_i_21_n_0 ,\ap_return[7]_INST_0_i_22_n_0 ,\ap_return[7]_INST_0_i_23_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_15 
       (.I0(inc_V[18]),
        .I1(accumulator_V_0_reg[19]),
        .O(\ap_return[7]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_16 
       (.I0(inc_V[17]),
        .I1(accumulator_V_0_reg[18]),
        .O(\ap_return[7]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_17 
       (.I0(inc_V[16]),
        .I1(accumulator_V_0_reg[17]),
        .O(\ap_return[7]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_18 
       (.I0(inc_V[15]),
        .I1(accumulator_V_0_reg[16]),
        .O(\ap_return[7]_INST_0_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0_i_19 
       (.CI(\ap_return[7]_INST_0_i_24_n_0 ),
        .CO({\ap_return[7]_INST_0_i_19_n_0 ,\ap_return[7]_INST_0_i_19_n_1 ,\ap_return[7]_INST_0_i_19_n_2 ,\ap_return[7]_INST_0_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[10:7]),
        .O(\NLW_ap_return[7]_INST_0_i_19_O_UNCONNECTED [3:0]),
        .S({\ap_return[7]_INST_0_i_25_n_0 ,\ap_return[7]_INST_0_i_26_n_0 ,\ap_return[7]_INST_0_i_27_n_0 ,\ap_return[7]_INST_0_i_28_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_2 
       (.I0(inc_V[28]),
        .I1(accumulator_V_0_reg[29]),
        .O(\ap_return[7]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_20 
       (.I0(inc_V[14]),
        .I1(accumulator_V_0_reg[15]),
        .O(\ap_return[7]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_21 
       (.I0(inc_V[13]),
        .I1(accumulator_V_0_reg[14]),
        .O(\ap_return[7]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_22 
       (.I0(inc_V[12]),
        .I1(accumulator_V_0_reg[13]),
        .O(\ap_return[7]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_23 
       (.I0(inc_V[11]),
        .I1(accumulator_V_0_reg[12]),
        .O(\ap_return[7]_INST_0_i_23_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0_i_24 
       (.CI(\ap_return[7]_INST_0_i_29_n_0 ),
        .CO({\ap_return[7]_INST_0_i_24_n_0 ,\ap_return[7]_INST_0_i_24_n_1 ,\ap_return[7]_INST_0_i_24_n_2 ,\ap_return[7]_INST_0_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[6:3]),
        .O(\NLW_ap_return[7]_INST_0_i_24_O_UNCONNECTED [3:0]),
        .S({\ap_return[7]_INST_0_i_30_n_0 ,\ap_return[7]_INST_0_i_31_n_0 ,\ap_return[7]_INST_0_i_32_n_0 ,\ap_return[7]_INST_0_i_33_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_25 
       (.I0(inc_V[10]),
        .I1(accumulator_V_0_reg[11]),
        .O(\ap_return[7]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_26 
       (.I0(inc_V[9]),
        .I1(accumulator_V_0_reg[10]),
        .O(\ap_return[7]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_27 
       (.I0(inc_V[8]),
        .I1(accumulator_V_0_reg[9]),
        .O(\ap_return[7]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_28 
       (.I0(inc_V[7]),
        .I1(accumulator_V_0_reg[8]),
        .O(\ap_return[7]_INST_0_i_28_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0_i_29 
       (.CI(1'b0),
        .CO({\ap_return[7]_INST_0_i_29_n_0 ,\ap_return[7]_INST_0_i_29_n_1 ,\ap_return[7]_INST_0_i_29_n_2 ,\ap_return[7]_INST_0_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({inc_V[2:0],1'b0}),
        .O(\NLW_ap_return[7]_INST_0_i_29_O_UNCONNECTED [3:0]),
        .S({\ap_return[7]_INST_0_i_34_n_0 ,\ap_return[7]_INST_0_i_35_n_0 ,\ap_return[7]_INST_0_i_36_n_0 ,accumulator_V_0_reg[0]}));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_3 
       (.I0(inc_V[27]),
        .I1(accumulator_V_0_reg[28]),
        .O(\ap_return[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_30 
       (.I0(inc_V[6]),
        .I1(accumulator_V_0_reg[7]),
        .O(\ap_return[7]_INST_0_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_31 
       (.I0(inc_V[5]),
        .I1(accumulator_V_0_reg[6]),
        .O(\ap_return[7]_INST_0_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_32 
       (.I0(inc_V[4]),
        .I1(accumulator_V_0_reg[5]),
        .O(\ap_return[7]_INST_0_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_33 
       (.I0(inc_V[3]),
        .I1(accumulator_V_0_reg[4]),
        .O(\ap_return[7]_INST_0_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_34 
       (.I0(inc_V[2]),
        .I1(accumulator_V_0_reg[3]),
        .O(\ap_return[7]_INST_0_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_35 
       (.I0(inc_V[1]),
        .I1(accumulator_V_0_reg[2]),
        .O(\ap_return[7]_INST_0_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_36 
       (.I0(inc_V[0]),
        .I1(accumulator_V_0_reg[1]),
        .O(\ap_return[7]_INST_0_i_36_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0_i_4 
       (.CI(\ap_return[7]_INST_0_i_9_n_0 ),
        .CO({\ap_return[7]_INST_0_i_4_n_0 ,\ap_return[7]_INST_0_i_4_n_1 ,\ap_return[7]_INST_0_i_4_n_2 ,\ap_return[7]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[22:19]),
        .O(\NLW_ap_return[7]_INST_0_i_4_O_UNCONNECTED [3:0]),
        .S({\ap_return[7]_INST_0_i_10_n_0 ,\ap_return[7]_INST_0_i_11_n_0 ,\ap_return[7]_INST_0_i_12_n_0 ,\ap_return[7]_INST_0_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_5 
       (.I0(inc_V[26]),
        .I1(accumulator_V_0_reg[27]),
        .O(\ap_return[7]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_6 
       (.I0(inc_V[25]),
        .I1(accumulator_V_0_reg[26]),
        .O(\ap_return[7]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_7 
       (.I0(inc_V[24]),
        .I1(accumulator_V_0_reg[25]),
        .O(\ap_return[7]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ap_return[7]_INST_0_i_8 
       (.I0(inc_V[23]),
        .I1(accumulator_V_0_reg[24]),
        .O(\ap_return[7]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ap_return[7]_INST_0_i_9 
       (.CI(\ap_return[7]_INST_0_i_14_n_0 ),
        .CO({\ap_return[7]_INST_0_i_9_n_0 ,\ap_return[7]_INST_0_i_9_n_1 ,\ap_return[7]_INST_0_i_9_n_2 ,\ap_return[7]_INST_0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(inc_V[18:15]),
        .O(\NLW_ap_return[7]_INST_0_i_9_O_UNCONNECTED [3:0]),
        .S({\ap_return[7]_INST_0_i_15_n_0 ,\ap_return[7]_INST_0_i_16_n_0 ,\ap_return[7]_INST_0_i_17_n_0 ,\ap_return[7]_INST_0_i_18_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[0]),
        .O(\int_inc_V[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[10]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[10]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[10]),
        .O(\int_inc_V[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[11]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[11]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[11]),
        .O(\int_inc_V[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[12]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[12]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[12]),
        .O(\int_inc_V[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[13]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[13]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[13]),
        .O(\int_inc_V[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[14]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[14]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[14]),
        .O(\int_inc_V[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[15]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[15]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[15]),
        .O(\int_inc_V[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[16]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[16]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[16]),
        .O(\int_inc_V[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[17]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[17]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[17]),
        .O(\int_inc_V[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[18]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[18]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[18]),
        .O(\int_inc_V[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[19]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[19]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[19]),
        .O(\int_inc_V[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[1]),
        .O(\int_inc_V[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[20]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[20]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[20]),
        .O(\int_inc_V[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[21]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[21]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[21]),
        .O(\int_inc_V[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[22]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[22]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[22]),
        .O(\int_inc_V[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[23]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[23]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(inc_V[23]),
        .O(\int_inc_V[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[24]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[24]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[24]),
        .O(\int_inc_V[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[25]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[25]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[25]),
        .O(\int_inc_V[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[26]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[26]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[26]),
        .O(\int_inc_V[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[27]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[27]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[27]),
        .O(\int_inc_V[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[28]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[28]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[28]),
        .O(\int_inc_V[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[29]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[29]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[29]),
        .O(\int_inc_V[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[2]),
        .O(\int_inc_V[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[30]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[30]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[30]),
        .O(\int_inc_V[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \int_inc_V[31]_i_1 
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(\int_inc_V[31]_i_3_n_0 ),
        .O(\int_inc_V[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[31]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[31]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(inc_V[31]),
        .O(\int_inc_V[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \int_inc_V[31]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\int_inc_V[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[3]),
        .O(\int_inc_V[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[4]),
        .O(\int_inc_V[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[5]),
        .O(\int_inc_V[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[6]),
        .O(\int_inc_V[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(inc_V[7]),
        .O(\int_inc_V[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[8]),
        .O(\int_inc_V[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_inc_V[9]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(inc_V[9]),
        .O(\int_inc_V[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[0] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[0]_i_1_n_0 ),
        .Q(inc_V[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[10] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[10]_i_1_n_0 ),
        .Q(inc_V[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[11] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[11]_i_1_n_0 ),
        .Q(inc_V[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[12] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[12]_i_1_n_0 ),
        .Q(inc_V[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[13] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[13]_i_1_n_0 ),
        .Q(inc_V[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[14] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[14]_i_1_n_0 ),
        .Q(inc_V[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[15] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[15]_i_1_n_0 ),
        .Q(inc_V[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[16] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[16]_i_1_n_0 ),
        .Q(inc_V[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[17] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[17]_i_1_n_0 ),
        .Q(inc_V[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[18] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[18]_i_1_n_0 ),
        .Q(inc_V[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[19] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[19]_i_1_n_0 ),
        .Q(inc_V[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[1] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[1]_i_1_n_0 ),
        .Q(inc_V[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[20] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[20]_i_1_n_0 ),
        .Q(inc_V[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[21] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[21]_i_1_n_0 ),
        .Q(inc_V[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[22] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[22]_i_1_n_0 ),
        .Q(inc_V[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[23] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[23]_i_1_n_0 ),
        .Q(inc_V[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[24] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[24]_i_1_n_0 ),
        .Q(inc_V[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[25] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[25]_i_1_n_0 ),
        .Q(inc_V[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[26] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[26]_i_1_n_0 ),
        .Q(inc_V[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[27] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[27]_i_1_n_0 ),
        .Q(inc_V[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[28] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[28]_i_1_n_0 ),
        .Q(inc_V[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[29] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[29]_i_1_n_0 ),
        .Q(inc_V[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[2] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[2]_i_1_n_0 ),
        .Q(inc_V[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[30] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[30]_i_1_n_0 ),
        .Q(inc_V[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[31] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[31]_i_2_n_0 ),
        .Q(inc_V[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[3] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[3]_i_1_n_0 ),
        .Q(inc_V[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[4] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[4]_i_1_n_0 ),
        .Q(inc_V[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[5] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[5]_i_1_n_0 ),
        .Q(inc_V[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[6] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[6]_i_1_n_0 ),
        .Q(inc_V[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[7] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[7]_i_1_n_0 ),
        .Q(inc_V[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[8] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[8]_i_1_n_0 ),
        .Q(inc_V[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_inc_V_reg[9] 
       (.C(ap_clk),
        .CE(\int_inc_V[31]_i_1_n_0 ),
        .D(\int_inc_V[9]_i_1_n_0 ),
        .Q(inc_V[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \rdata[31]_i_1 
       (.I0(ar_hs),
        .I1(s_axi_AXILiteS_ARADDR[2]),
        .I2(s_axi_AXILiteS_ARADDR[3]),
        .I3(s_axi_AXILiteS_ARADDR[0]),
        .I4(s_axi_AXILiteS_ARADDR[1]),
        .I5(s_axi_AXILiteS_ARADDR[4]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[0]),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[10]),
        .Q(s_axi_AXILiteS_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[11]),
        .Q(s_axi_AXILiteS_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[12]),
        .Q(s_axi_AXILiteS_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[13]),
        .Q(s_axi_AXILiteS_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[14]),
        .Q(s_axi_AXILiteS_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[15]),
        .Q(s_axi_AXILiteS_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[16]),
        .Q(s_axi_AXILiteS_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[17]),
        .Q(s_axi_AXILiteS_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[18]),
        .Q(s_axi_AXILiteS_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[19]),
        .Q(s_axi_AXILiteS_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[1]),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[20]),
        .Q(s_axi_AXILiteS_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[21]),
        .Q(s_axi_AXILiteS_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[22]),
        .Q(s_axi_AXILiteS_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[23]),
        .Q(s_axi_AXILiteS_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[24]),
        .Q(s_axi_AXILiteS_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[25]),
        .Q(s_axi_AXILiteS_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[26]),
        .Q(s_axi_AXILiteS_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[27]),
        .Q(s_axi_AXILiteS_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[28]),
        .Q(s_axi_AXILiteS_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[29]),
        .Q(s_axi_AXILiteS_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[2]),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[30]),
        .Q(s_axi_AXILiteS_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[31]),
        .Q(s_axi_AXILiteS_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[3]),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[4]),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[5]),
        .Q(s_axi_AXILiteS_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[6]),
        .Q(s_axi_AXILiteS_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[7]),
        .Q(s_axi_AXILiteS_RDATA[7]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[8]),
        .Q(s_axi_AXILiteS_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(inc_V[9]),
        .Q(s_axi_AXILiteS_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
