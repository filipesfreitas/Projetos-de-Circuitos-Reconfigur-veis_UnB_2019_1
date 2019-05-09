----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2019 09:19:45
-- Design Name: 
-- Module Name: x_fus - Behavioral
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

entity x_fus is
    Port ( x_fus_res : out STD_LOGIC_VECTOR (26 downto 0);
           ready : out STD_LOGIC;
           XIR : in STD_LOGIC_VECTOR (26 downto 0);
           XUL : in STD_LOGIC_VECTOR (26 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           gk_1 : in STD_LOGIC_VECTOR (26 downto 0));
end x_fus;

architecture Behavioral of x_fus is
signal ready_sub: STD_LOGIC;--modificar depois
signal ready_add: STD_LOGIC;--modificar depois
signal ready_mul: STD_LOGIC;--modificar depois
signal sub_result: STD_LOGIC_VECTOR (26 downto 0);
signal res_mult: std_logic_vector(FP_WIDTH-1 downto 0);

begin
--sub XIR - XUL
	sub0: addsubfsm_v6 port map(
		reset 	 => reset,
		clk	 	 => clk,   
		op	 	    => '1',   
		op_a	 	 => XIR,
		op_b	 	 => XUL,
		start_i	 => start,
		addsub_out   => sub_result,
		ready_as	 => ready_sub);
		
-- gk_1*(XIR - XUL)
	mul: multiplierfsm_v2 port map(
			reset 	 => reset,
			clk	 	 => clk,   
			op_a	 	 => sub_result,
			op_b	 	 => gk_1,
			start_i	 => ready_sub,--depois da subtra��o come�a a multiplica��o
			mul_out   => res_mult,
			ready_mul => ready_mul);


		
		-- x_fus_res = XUL + gk_1*(XIR - XUL);
	add0: addsubfsm_v6 port map(
		reset 	 => reset,
		clk	 	 => clk,   
		op	 	    => '0',   
		op_a	 	 => res_mult,
		op_b	 	 => XUL,
		start_i	 => start,
		addsub_out   => x_fus_res,
		ready_as	 => ready_add);
		ready <= ready_add;
end Behavioral;
