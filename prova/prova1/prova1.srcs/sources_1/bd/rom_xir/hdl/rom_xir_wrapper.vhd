--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Fri May 10 11:14:47 2019
--Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
--Command     : generate_target rom_xir_wrapper.bd
--Design      : rom_xir_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rom_xir_wrapper is
  port (
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 26 downto 0 );
    en : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end rom_xir_wrapper;

architecture STRUCTURE of rom_xir_wrapper is
  component rom_xir is
  port (
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  end component rom_xir;
begin
rom_xir_i: component rom_xir
     port map (
      clk => clk,
      dout(26 downto 0) => dout(26 downto 0),
      en => en,
      reset => reset
    );
end STRUCTURE;
