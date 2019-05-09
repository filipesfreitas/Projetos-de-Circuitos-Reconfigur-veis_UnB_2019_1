----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2019 09:19:45
-- Design Name: 
-- Module Name: sigmak - Behavioral
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
use work.fpupack.all;
use work.entities.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sigmak is
port(ready_gk_1: in STD_LOGIC;
     ready_sigma: out STD_LOGIC;
     reset     :  in std_logic;
     ready_sigma_1: in STD_LOGIC;
     sigma_mais: in STD_LOGIC_VECTOR(26 downto 0);
     sigma_z: in STD_LOGIC_VECTOR(26 downto 0);
     start:  in STD_LOGIC;
     clk : in STD_LOGIC;
     gk_mais1: in STD_LOGIC_VECTOR(26 downto 0);
     sigma_1_mais: out STD_LOGIC_VECTOR(26 downto 0) );
     
end sigmak;

architecture Behavioral of sigmak is

     signal res_mult: std_logic_vector(FP_WIDTH-1 downto 0);
     signal ready_add : std_logic := '0';
     signal ready_mul : std_logic := '0';
     
     

begin
-- sigmak+1 = sigmak - Gk+1*sigmak

		mul: multiplierfsm_v2 port map(
			reset 	 => reset,
			clk	 	 => clk,   
			op_a	 	 => gk_mais1,
			op_b	 	 => sigma_mais,
			start_i	 => start,
			mul_out   => res_mult,
			ready_mul => ready_mul);

--sub
	add0: addsubfsm_v6 port map(
		reset 	 => reset,
		clk	 	 => clk,   
		op	 	    => '1',   
		op_a	 	 => res_mult,
		op_b	 	 => sigma_mais,
		start_i	 => start,
		addsub_out   => sigma_1_mais,
		ready_as	 => ready_add);
    ready_sigma <= ready_add;
end Behavioral;
