-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri May 10 11:20:29 2019
-- Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
-- Command     : write_vhdl -force -mode synth_stub
--               /home/filipe/Documentos/Matérias/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/prova/prova1/prova1.srcs/sources_1/bd/rom_xir/ip/rom_xir_c_counter_binary_0_0/rom_xir_c_counter_binary_0_0_stub.vhdl
-- Design      : rom_xir_c_counter_binary_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rom_xir_c_counter_binary_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end rom_xir_c_counter_binary_0_0;

architecture stub of rom_xir_c_counter_binary_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CE,SCLR,Q[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_12,Vivado 2018.3";
begin
end;
