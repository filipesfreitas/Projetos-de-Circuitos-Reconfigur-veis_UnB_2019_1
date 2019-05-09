library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
entity div_clock is
    generic(Count: integer);
    Port ( clk_in : in STD_LOGIC;
        clk_out : out STD_LOGIC;
        reset : in STD_LOGIC);
end div_clock;

architecture Behavioral of div_clock is
	signal cnt: integer := 0;
begin

  process(clk_in,reset)
  variable state: std_logic:='1';
  begin
    if reset = '1' then
      cnt <= 0;
      state := '1';
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