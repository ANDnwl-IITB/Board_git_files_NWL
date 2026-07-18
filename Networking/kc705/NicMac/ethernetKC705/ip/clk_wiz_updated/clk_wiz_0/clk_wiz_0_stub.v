// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Oct  6 16:51:35 2025
// Host        : nwl3 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nwl_3/sbc_original_ai_nic/clk_wiz_kc705_updated/clk_wiz_kc705/clk_wiz_kc705.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_320, clk_200, clk_125, clk_100, reset, locked, 
  clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_320,clk_200,clk_125,clk_100,reset,locked,clk_in1_p,clk_in1_n" */;
  output clk_320;
  output clk_200;
  output clk_125;
  output clk_100;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
