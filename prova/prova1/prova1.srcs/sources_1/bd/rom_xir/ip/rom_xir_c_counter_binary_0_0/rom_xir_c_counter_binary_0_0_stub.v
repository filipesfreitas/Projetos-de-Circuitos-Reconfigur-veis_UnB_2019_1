// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri May 10 11:20:29 2019
// Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
// Command     : write_verilog -force -mode synth_stub
//               /home/filipe/Documentos/Matérias/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/prova/prova1/prova1.srcs/sources_1/bd/rom_xir/ip/rom_xir_c_counter_binary_0_0/rom_xir_c_counter_binary_0_0_stub.v
// Design      : rom_xir_c_counter_binary_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *)
module rom_xir_c_counter_binary_0_0(CLK, CE, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,Q[6:0]" */;
  input CLK;
  input CE;
  input SCLR;
  output [6:0]Q;
endmodule