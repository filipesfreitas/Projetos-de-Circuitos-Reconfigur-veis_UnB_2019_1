----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2019 09:17:05
-- Design Name: 
-- Module Name: tb_addr - Behavioral
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


entity tb_addr is
--  Port ( );
end tb_addr;

architecture Behavioral of tb_addr is
  component addres_handle is
  Port (start : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk   : in STD_LOGIC ;
        ready : in STD_LOGIC;
        en    : out STD_LOGIC;
        address: out STD_LOGIC_VECTOR(6 downto 0));
  end component;
   signal clk,start,reset,ready,en: STD_LOGIC := '0';
   signal addr_aux: STD_LOGIC_VECTOR(6 downto 0) := (others => '0');

begin
        -- clock generator
    clk <= not clk after 5 ns; 
        -- reset generator
    reset <= '0', '1' after 15 ns, '0' after 25 ns;
        -- cria o start 
    start <= '0', '1' after 55 ns, '0' after 65 ns; 
    
   UUT: addres_handle
   Port map(start => start,
      reset => reset,
      clk   => clk,
      ready => ready,
      en    => en,
      address => addr_aux);

end Behavioral;
