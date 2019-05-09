library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity anodo is 
port(clk: in STD_LOGIC;
    reset: in STD_LOGIC;
    sel_mux_port: out std_logic_vector(1 downto 0);
    an : out STD_LOGIC_VECTOR (3 downto 0)
    );

end anodo;

architecture Behavioral of anodo is
	signal s_an 		: unsigned(3 downto 0) := "0000";
	signal sel_mux 		: std_logic_vector(1 downto 0):="00";

begin
-- process para multiplexar anodos
	process(clk,reset)
	begin
		if reset='1' then
			s_an <= "1110";
			sel_mux <= "00";
		elsif rising_edge(clk) then
			s_an <= s_an srl 1;
			sel_mux <= sel_mux + 1;
		end if;
	end process;
	an <= std_logic_vector(s_an);
  sel_mux_port <= sel_mux;
end Behavioral;