----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2019 09:19:45
-- Design Name: 
-- Module Name: gk_1 - Behavioral
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

entity gk_1 is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           sigmaz : in STD_LOGIC_VECTOR (26 downto 0);
           sigmak : in STD_LOGIC_VECTOR (26 downto 0);
           gk1_mais : out STD_LOGIC_VECTOR (26 downto 0));
end gk_1;

architecture Behavioral of gk_1 is

begin


end Behavioral;
