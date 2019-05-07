----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2019 09:19:45
-- Design Name: 
-- Module Name: sigmak - Behavioral
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

entity sigmak is
port(ready_gk_1: in STD_LOGIC;
     ready_sigma_1: in STD_LOGIC;
     sigma_mais: in STD_LOGIC_VECTOR(26 downto 0);
     sigma_z: in STD_LOGIC_VECTOR(26 downto 0);
     start:  in STD_LOGIC;
     clk : in STD_LOGIC;
     gk_mais1: in STD_LOGIC_VECTOR(26 downto 0);
     sigma_1_mais: out STD_LOGIC_VECTOR(26 downto 0) );
     
end sigmak;

architecture Behavioral of sigmak is

begin


end Behavioral;
