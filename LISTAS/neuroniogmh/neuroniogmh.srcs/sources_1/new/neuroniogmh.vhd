library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.fpupack.all;
entity neuroniogmh is
generic(qtd: integer;length: integer);
  port(clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       start : in STD_LOGIC;
       input: in STD_LOGIC_VECTOR(length-1 downto 0);
       output: out STD_LOGIC_VECTOR(length-1 downto 0));
end neuroniogmh;

architecture Behavioral of neuroniogmh is
 component div_clock is 
    generic(Count: integer);
    Port ( clk_in : in STD_LOGIC;
        clk_out : out STD_LOGIC;
        reset : in STD_LOGIC);
  end component;
  signal outmul : STD_LOGIC_VECTOR := (others => (others=>'0'));

begin
mult_gen: for i in outmul'range generate
  div: div_clock generic map(Count => i) port map(clk_in => clk,reset => reset,clk_out => outmul(i));
end generate mult_gen;
end Behavioral;