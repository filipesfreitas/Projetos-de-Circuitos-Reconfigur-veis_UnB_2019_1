----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2019 20:33:13
-- Design Name: 
-- Module Name: tb_ping_pong - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_ping_pong is
--  Port ( );
end tb_ping_pong;

architecture Behavioral of tb_ping_pong is
	component ping_pong is
	Port ( clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		sw0 : in STD_LOGIC;
		sw15 : in STD_LOGIC;
		seg : out STD_LOGIC_VECTOR (7 downto 0);
		an : out STD_LOGIC_VECTOR (3 downto 0);
		led : out STD_LOGIC_VECTOR (15 downto 0));
		end component;
		
		signal sw0_aux :  STD_LOGIC :='0';
		signal sw15_aux  : STD_LOGIC:='0';
		signal seg_aux  :  STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
		signal an_aux  :  STD_LOGIC_VECTOR (3 downto 0):= (others => '0');
		signal led_aux  :  STD_LOGIC_VECTOR (15 downto 0):= (others => '0');
    signal clk,reset : STD_LOGIC;
  
    constant period: time := 10ns;
begin
  
UUT1: ping_pong  
port map(clk => clk, reset => reset, sw0 =>sw0_aux , 	sw15 => sw15_aux ,
		seg => seg_aux,
		an => an_aux,
		led => led_aux);

CLK <= not CLK after PERIOD/2;

end Behavioral;
