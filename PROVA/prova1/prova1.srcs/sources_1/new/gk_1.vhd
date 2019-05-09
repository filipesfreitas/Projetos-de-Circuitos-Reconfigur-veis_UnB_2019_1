library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.fpupack.all;
use work.entities.all;


entity gk_1 is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           sigmaz : in STD_LOGIC_VECTOR (26 downto 0);
           sigmak : in STD_LOGIC_VECTOR (26 downto 0);
           gk1_mais : out STD_LOGIC_VECTOR (26 downto 0));
end gk_1;

architecture Behavioral of gk_1 is
  signal add_res: STD_LOGIC_VECTOR (26 downto 0);
  signal ready_div_aux: STD_LOGIC;
  signal ready_add_aux: STD_LOGIC;
   
begin
  process(clk,start,reset)
  begin
    if reset = '1' then
    end if;
  end process;
add0: addsubfsm_v6 port map(
		reset 	 => reset,
		clk	 	 => clk,   
		op	 	    => '0',   
		op_a	 	 => sigmaz,
		op_b	 	 => sigmak,
		start_i	 => start,
		addsub_out   => add_res,
		ready_as	 => ready_add_aux);
		
-- Gk+1 = sigmak/(sigmak + sigmaz)
divGk: divNR
 port map(reset => reset,
      clk    =>clk,
      op_a =>sigmak,
      op_b =>add_res,
      start_i	=> ready_add_aux,
      div_out  =>gk1_mais,
      ready_div => ready_div_aux);
      ready <= ready_div_aux;
end Behavioral;
