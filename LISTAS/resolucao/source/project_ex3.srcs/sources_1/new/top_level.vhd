----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2019 20:12:20
-- Design Name: 
-- Module Name: top_level - Behavioral
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

entity top_level is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0);
           btnU : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           btnD : in STD_LOGIC);
end top_level;

architecture Behavioral of top_level is
   component neuronio is
       Port ( clk : in STD_LOGIC;
              reset : in STD_LOGIC;
              start : in STD_LOGIC;
              x : in STD_LOGIC_VECTOR (26 downto 0);
              y : out STD_LOGIC_VECTOR (26 downto 0);
              ready: out STD_LOGIC);
   end component;
   signal x_signal : STD_LOGIC_VECTOR(26 downto 0);
   signal y_signal : STD_LOGIC_VECTOR(26 downto 0);
   signal ready: STD_LOGIC;
begin
UN: neuronio 
   Port map(clk => clk,
            reset => reset,
            start => start,
            x => x_signal,
            y => y_signal,
            ready => ready);
    
    set_x: process(reset,btnU)
    begin
    if btnU = '1' then
      x_signal(26 downto 11) <= sw;
    elsif btnU = '0' then
      x_signal(10 downto 0) <= sw(15 downto 5);
    end if;  
    end process;
    
    set_y: process(y_signal,btnD)
    begin
      if btnD = '1' then
         led <= y_signal(26 downto 11);
      elsif btnD = '0' then
         led(10 downto 0) <= y_signal(10 downto 0);--foi necessario adaptar
      end if;
    end process;

end Behavioral;
