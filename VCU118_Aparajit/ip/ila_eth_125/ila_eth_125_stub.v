// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri May 29 01:14:15 2026
// Host        : vivado running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madhav/VCU118/VCU118_ip_generated/mig/mig.srcs/sources_1/ip/ila_eth_125/ila_eth_125_stub.v
// Design      : ila_eth_125
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ila_eth_125(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[9:0],probe1[0:0],probe2[0:0],probe3[9:0],probe4[0:0],probe5[0:0],probe6[109:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[0:0],probe13[32:0],probe14[0:0],probe15[0:0]" */;
  input clk;
  input [9:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [9:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [109:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [32:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
endmodule
