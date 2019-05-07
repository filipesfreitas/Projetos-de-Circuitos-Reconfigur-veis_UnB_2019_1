----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2019 09:19:45
-- Design Name: 
-- Module Name: x_fus - Behavioral
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

entity x_fus is
    Port ( x_fus_res : out STD_LOGIC_VECTOR (26 downto 0);
           ready : out STD_LOGIC;
           XIR : in STD_LOGIC_VECTOR (26 downto 0);
           XUL : in STD_LOGIC_VECTOR (26 downto 0);
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           gk_1 : in STD_LOGIC_VECTOR (26 downto 0));
end x_fus;

architecture Behavioral of x_fus is

begin


end Behavioral;
