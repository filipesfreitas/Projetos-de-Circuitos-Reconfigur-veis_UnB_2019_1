-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Apr  9 09:49:25 2019
-- Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
-- Command     : write_vhdl -force -mode synth_stub
--               /home/filipe/Documentos/Matrias/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/ula_ponto_fixo/ula_ponto_fixo.srcs/sources_1/ip/div_gen_1/div_gen_1_stub.vhdl
-- Design      : div_gen_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_gen_1 is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tready : out STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tready : out STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end div_gen_1;

architecture stub of div_gen_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_divisor_tvalid,s_axis_divisor_tready,s_axis_divisor_tdata[7:0],s_axis_dividend_tvalid,s_axis_dividend_tready,s_axis_dividend_tdata[7:0],m_axis_dout_tvalid,m_axis_dout_tuser[0:0],m_axis_dout_tdata[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "div_gen_v5_1_14,Vivado 2018.3";
begin
end;
