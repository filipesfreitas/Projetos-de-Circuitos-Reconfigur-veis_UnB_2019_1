library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_level is
    Port ( clk_in : in STD_LOGIC;
           clk_out_10: out STD_LOGIC;
           clk_out_40: out STD_LOGIC;
           reset : in STD_LOGIC);
end top_level;

architecture Behavioral of top_level is

component clock 
    generic(Count: integer range 0 to 199999999);
    Port ( clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC;
           reset : in STD_LOGIC);
end component;

begin
TESTE_10Hz: clock generic map(Count => 10) port map(clk_in => clk_in, clk_out => clk_out_10, reset => reset);
TESTE_40Hz: clock generic map(Count => 40) port map(clk_in => clk_in, clk_out => clk_out_40, reset => reset);
end Behavioral;
