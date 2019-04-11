// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Apr  9 09:49:25 2019
// Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
// Command     : write_verilog -force -mode synth_stub
//               /home/filipe/Documentos/Matrias/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/ula_ponto_fixo/ula_ponto_fixo.srcs/sources_1/ip/div_gen_1/div_gen_1_stub.v
// Design      : div_gen_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_14,Vivado 2018.3" *)
module div_gen_1(aclk, s_axis_divisor_tvalid, 
  s_axis_divisor_tready, s_axis_divisor_tdata, s_axis_dividend_tvalid, 
  s_axis_dividend_tready, s_axis_dividend_tdata, m_axis_dout_tvalid, m_axis_dout_tuser, 
  m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_divisor_tvalid,s_axis_divisor_tready,s_axis_divisor_tdata[7:0],s_axis_dividend_tvalid,s_axis_dividend_tready,s_axis_dividend_tdata[7:0],m_axis_dout_tvalid,m_axis_dout_tuser[0:0],m_axis_dout_tdata[15:0]" */;
  input aclk;
  input s_axis_divisor_tvalid;
  output s_axis_divisor_tready;
  input [7:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  output s_axis_dividend_tready;
  input [7:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  output [0:0]m_axis_dout_tuser;
  output [15:0]m_axis_dout_tdata;
endmodule
