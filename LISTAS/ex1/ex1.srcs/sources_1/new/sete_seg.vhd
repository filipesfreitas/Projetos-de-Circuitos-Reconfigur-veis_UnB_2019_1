library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;


entity sete_seg is
port(sel_mux: in std_logic_vector(1 downto 0);
		cnt0 	 : in std_logic_vector(3 downto 0);--player 0
		cnt1 	 : in std_logic_vector(3 downto 0);--player 1
    seg : out STD_LOGIC_VECTOR (7 downto 0));
end sete_seg;

architecture Behavioral of sete_seg is
signal s_bin: std_logic_vector(3 downto 0) := "0000";
begin
	-- mux para decodificador
	with sel_mux select
		s_bin <= cnt0 when "00",
					"1111" when "01", 
					"1111" when "10", 
					cnt1 when "11"; 
	process(s_bin)
	begin
		case s_bin is
			when "0000" => seg <= "11000000";
			when "0001" => seg <= "11111001";
			when "0010" => seg <= "10100100";
			when "0011" => seg <= "10110000";
			when "0100" => seg <= "10011001";
			when "0101" => seg <= "10010010";
			when "0110" => seg <= "10000010";
			when "0111" => seg <= "11111000";
			when "1000" => seg <= "10000000";
			when "1001" => seg <= "10010000";
			when "1111" => seg <= "11111111";
			when others => seg <= "11111111";
		end case;
	end process;
end Behavioral;