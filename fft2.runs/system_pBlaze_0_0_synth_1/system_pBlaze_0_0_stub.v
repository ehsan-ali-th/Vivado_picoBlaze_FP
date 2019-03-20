// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Feb 11 02:14:02 2019
// Host        : LAPTOP-N4P8E4G3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_pBlaze_0_0_stub.v
// Design      : system_pBlaze_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pBlaze,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset_in, uart_top_tx, uart_top_rx, 
  external_mem_ena, external_mem_wea, external_mem_addra, external_mem_dina, 
  external_mem_douta, address, instruction, bram_enable, irqs)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_in,uart_top_tx,uart_top_rx,external_mem_ena,external_mem_wea[0:0],external_mem_addra[11:0],external_mem_dina[7:0],external_mem_douta[7:0],address[11:0],instruction[17:0],bram_enable,irqs[0:0]" */;
  input clk;
  input reset_in;
  output uart_top_tx;
  input uart_top_rx;
  output external_mem_ena;
  output [0:0]external_mem_wea;
  output [11:0]external_mem_addra;
  output [7:0]external_mem_dina;
  input [7:0]external_mem_douta;
  output [11:0]address;
  input [17:0]instruction;
  output bram_enable;
  output [0:0]irqs;
endmodule
