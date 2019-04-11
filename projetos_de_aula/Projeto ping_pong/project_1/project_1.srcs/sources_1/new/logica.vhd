----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2019 08:48:04
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity logica is
    Port ( reg : in STD_LOGIC_VECTOR(15 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sw0 : in STD_LOGIC;
           sw15 : in STD_LOGIC;
           cnt0 : out STD_LOGIC_VECTOR (3 downto 0);
           cnt1 : out STD_LOGIC_VECTOR (3 downto 0);
           enable : out STD_LOGIC;
           lr : out STD_LOGIC);
end logica;

architecture Behavioral of logica is
signal player : std_logic := '0';
signal cnt0_s	: integer;
signal cnt1_s	: integer;
begin
	-- process para controlar jogo
	process(clk,reset)
	begin
		if reset = '1' then
			cnt0 <= "0000";
			cnt1 <= "0000";
			lr <= '1';
			enable <= '0'; -- habilita jogo
			player <= '0';
		elsif rising_edge(clk) then
			if cnt0_s = 9 or cnt1_s = 9 then
				lr <= '1'; -- desloca à esquerda
				enable <= '1'; -- habilita o deslocamento
				player <= '0'; -- player 0 começa
				cnt0_s <= 0;
				cnt1_s <= 0;
			elsif reg="0000000000000001" and sw0 = '1' then
				lr <= '1'; -- desloca à esquerda
				enable <= '1'; -- habilita o deslocamento
			elsif reg="0000000000000001" and sw0 = '0' then
				lr <= '0'; -- desloca à direita
				enable <= '0'; -- deshabilita o deslocamento
				player <= '1'; -- player 1 joga
				cnt1_s <= cnt1_s + 1; -- incrementa placar player 1
			elsif reg="1000000000000000" and sw15 = '1' then
				lr <= '0'; -- desloca à direita
				enable <= '1'; -- habilita o deslocamento
			elsif reg="1000000000000000" and sw15 = '0' then
				lr <= '1'; -- desloca à esquerda
				enable <= '0'; -- deshabilita o deslocamento	
				player <= '0'; -- player 0 joga
				cnt0_s <= cnt0_s + 1;	-- incrementa placar player 0	
			end if;		
		end if;
	end process;
cnt0 <= STD_LOGIC_VECTOR(to_unsigned(cnt0_s,4));
cnt1 <= STD_LOGIC_VECTOR(to_unsigned(cnt1_s,4));
end Behavioral;
