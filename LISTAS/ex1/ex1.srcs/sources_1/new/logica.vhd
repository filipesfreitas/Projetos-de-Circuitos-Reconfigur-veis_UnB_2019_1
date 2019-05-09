----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2019 14:03:09
-- Design Name: 
-- Module Name: logica - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;


entity logica is
	port(clk : in STD_LOGIC;
		reset	 : in STD_LOGIC;
		sw0 	 : in STD_LOGIC;
		sw15 	 : in STD_LOGIC;
		reg_port 	 : out std_logic_vector(15 downto 0);
		cnt0 	 : out std_logic_vector(3 downto 0);--player 0
		cnt1 	 : out std_logic_vector(3 downto 0);--player 1
		lr	 	 : out std_logic;--sentido
		enable : out std_logic;
		player : out std_logic);

end logica;

architecture Behavioral of logica is
	signal cnt0_aux : std_logic_vector(3 downto 0);
	signal cnt1_aux : std_logic_vector(3 downto 0);
	signal reg			: std_logic_vector(15 downto 0);

begin
-- process para controlar jogo

	process(clk,reset)
	begin
		if reset = '1' then
			cnt0_aux <= "0000";
			cnt1_aux <= "0000";
			lr <= '1';
			enable <= '0'; -- habilita jogo
			player <= '0';
		elsif rising_edge(clk) then
			if cnt0_aux = "1001" or cnt1_aux = "1001" then
				lr <= '1'; -- desloca � esquerda
				enable <= '1'; -- habilita o deslocamento
				player <= '0'; -- player 0 come�a
				cnt0_aux <= "0000";
				cnt1_aux <= "0000";
			elsif reg="0000000000000001" and sw0 = '1' then
				lr <= '1'; -- desloca � esquerda
				enable <= '1'; -- habilita o deslocamento
			elsif reg="0000000000000001" and sw0 = '0' then
				lr <= '0'; -- desloca � direita
				enable <= '0'; -- deshabilita o deslocamento
				player <= '1'; -- player 1 joga
				cnt1_aux <= cnt1_aux + 1; -- incrementa placar player 1
			elsif reg="1000000000000000" and sw15 = '1' then
				lr <= '0'; -- desloca � direita
				enable <= '1'; -- habilita o deslocamento
			elsif reg="1000000000000000" and sw15 = '0' then
				lr <= '1'; -- desloca � esquerda
				enable <= '0'; -- deshabilita o deslocamento	
				player <= '0'; -- player 0 joga
				cnt0_aux <= cnt0_aux + 1;	-- incrementa placar player 0	
			end if;		
		end if;
	end process;

	cnt0 <= cnt0_aux;
	cnt1_aux <= cnt1_aux;
  reg_port <= reg;
end Behavioral;
