----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2019 08:34:45
-- Design Name: 
-- Module Name: Reg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Reg is
    Port ( l_r    : in STD_LOGIC;
           enable : in STD_LOGIC;
           clk    : in STD_LOGIC;
           reset  : in STD_LOGIC;
           reg_out    : out STD_LOGIC_VECTOR (15 downto 0));
end Reg;

architecture Behavioral of Reg is
signal reg 			:unsigned(15 downto 0) := (others=>'0');
begin
  process(clk,reset,enable)
  begin
    if reset ='0' then
      reg <= (others=>'0');
    elsif  rising_edge(clk) then
      if enable = '1' and l_r = '1' then
       reg <= reg sll 1;
      elsif enable ='1' and l_r = '0' then
       reg <= reg srl 1;
      end if;
    end if;
  end process;
  reg_out <= STD_LOGIC_VECTOR(reg);
end Behavioral;
