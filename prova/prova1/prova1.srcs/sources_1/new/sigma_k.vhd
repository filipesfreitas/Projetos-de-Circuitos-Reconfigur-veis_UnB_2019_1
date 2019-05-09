----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2019 09:19:45
-- Design Name: 
-- Module Name: sigma_k - Behavioral
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

entity sigma_k is
    Port ( start : in STD_LOGIC;
           ready : out STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           sigmak_0 : in STD_LOGIC_VECTOR (26 downto 0);
           sigmak_mais_1 : in STD_LOGIC_VECTOR (26 downto 0);
           sigmak : out STD_LOGIC_VECTOR (26 downto 0));
end sigma_k;

architecture Behavioral of sigma_k is
	signal cnt: integer := 0;

begin
  -- Registra o valor de sigmak+1 para a pr�xima etapa de processamento;
process (clk,reset,start,sigmak_0)
  begin
    if reset ='1' then
      sigmak <= sigmak_0;
    elsif rising_edge(clk) and start = '1' then
      sigmak <= sigmak_mais_1;
    end if;
end process;

  process(clk,reset)
  begin
    if reset = '1' or cnt=4 then
      ready<='0'; 
    elsif rising_edge(clk) then
      if cnt = 2 then
       ready<='1'; 
      else
        cnt <= cnt + 1;
      end if;
    end if;
  end process;
end Behavioral;
