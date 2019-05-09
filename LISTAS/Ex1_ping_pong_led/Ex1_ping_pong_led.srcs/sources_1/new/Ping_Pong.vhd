library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ping_pong is 
	Port ( clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		sw0 : in STD_LOGIC;
		sw15 : in STD_LOGIC;
		seg : out STD_LOGIC_VECTOR (7 downto 0);
		an : out STD_LOGIC_VECTOR (3 downto 0);
		led : out STD_LOGIC_VECTOR (15 downto 0));

end ping_pong;

architecture behavioral of ping_pong is
  signal clk_40Hz, clk_10Hz : STD_LOGIC;
  
  component div_clock is
    generic(Count: integer);
    Port ( clk_in : in STD_LOGIC;
        clk_out : out STD_LOGIC;
        reset : in STD_LOGIC);
  end component;
  
begin

TESTE_10Hz: div_clock generic map(Count => 10) port map(clk_in => clk, clk_out => clk_10Hz, reset => reset);
TESTE_40Hz: div_clock generic map(Count => 40) port map(clk_in => clk, clk_out => clk_40Hz, reset => reset);
	       
end behavioral;