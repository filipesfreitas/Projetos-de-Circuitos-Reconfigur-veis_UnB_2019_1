----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2019 13:03:44
-- Design Name: 
-- Module Name: clock - Behavioral
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

entity clock is
    generic(Count: integer range 0 to 199999999);
    Port ( clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC;
           reset : in STD_LOGIC);
end clock;

architecture Behavioral of clock is
signal cnt:Integer:= Count;
begin
  process(clk_in,reset)
  variable state: std_logic:='1';
  begin
    if reset = '1' then
      cnt <= 0;
      state:= '1';
      clk_out <= state;
    elsif rising_edge(clk_in) then
      if cnt = count then
        cnt <= 0;
        clk_out <= not state;
      else
        cnt <= cnt + 1;
      end if;
    end if;
  end process;

end Behavioral;
