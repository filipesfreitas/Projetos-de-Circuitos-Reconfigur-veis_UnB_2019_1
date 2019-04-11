
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_clock is
--  Port ( );
end TB_clock;

architecture Behavioral of TB_clock is
  
  constant clk_period: time:= 10ns;
  
  signal reset : std_logic :='0';
  signal CLK : std_logic :='0';
  
  signal clk_out_10: STD_LOGIC;
  signal clk_out_40: STD_LOGIC;  
  
  component clock 
  Port ( clk_in : in STD_LOGIC;
           clk_out_10: out STD_LOGIC;
           clk_out_40: out STD_LOGIC;
         reset : in STD_LOGIC);
  end component;

begin
  uut: clock 
  port map(clk_in => clk,
           clk_out_10 => clk_out_10,
           clk_out_40 => clk_out_40,
           reset => reset);

  clk_process: process
  begin
    clk<='0';
    wait for clk_period/2;
    clk<='1';
    wait for clk_period/2;
  end process;
  
  --stimulus process
    stim_process: process
    begin
    wait for clk_period/2;
    reset<='1';
    wait for clk_period/2;
    reset<='0';
    end process;

end Behavioral;
