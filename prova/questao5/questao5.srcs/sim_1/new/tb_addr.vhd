----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2019 21:25:24
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
   signal reset, start,clk, ready_aux, en_aux: STD_LOGIC:='0';
   signal addr_aux: STD_LOGIC_VECTOR(6 downto 0);
   constant PERIOD : time := 5ns;
begin
 -- reset generator
    reset <= '0', '1' after 15 ns, '0' after 25 ns;
    
    -- clock generator
    clk <= not clk after PERIOD/2;

    -- cria o start 
    start <= not start after 4*PERIOD; 
    
   UUT1: addres_handle
      Port map(start => start,
         reset => reset,
         clk   => clk,
         ready => ready_aux,
         en    => en_aux ,
         address => addr_aux);
           
end Behavioral;
