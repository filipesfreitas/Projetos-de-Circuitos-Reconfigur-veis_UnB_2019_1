----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2019 15:27:58
-- Design Name: 
-- Module Name: neuronio - Behavioral
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
-- x*x e b*x são operações paralelas e são exexutadas ao mesmo tempo
-- a*x é realizada após x*x estar pronta
-- após a*x*x e b*x estarem prontas, então, são realizadas as somas sequencialmente

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

entity neuronio is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           x : in STD_LOGIC_VECTOR (26 downto 0);
           y : out STD_LOGIC_VECTOR (26 downto 0);
           ready: out STD_LOGIC);
end neuronio;

architecture Behavioral of neuronio is

   component addsubfsm_v6 is
      port (reset     :  in std_logic;
          clk        :  in std_logic;
          op			:  in std_logic;
          op_a 		:  in std_logic_vector(FP_WIDTH-1 downto 0);
          op_b 		:  in std_logic_vector(FP_WIDTH-1 downto 0);
          start_i    :  in std_logic;
          addsub_out : out std_logic_vector(FP_WIDTH-1 downto 0);
          ready_as   : out std_logic);
   end component;		 
   
   component multiplierfsm_v2 is
       port (reset 	 :  in std_logic; 
             clk	 	 :  in std_logic;          
             op_a	 	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
             op_b	 	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
             start_i	 :  in std_logic;
             mul_out  : out std_logic_vector(FP_WIDTH-1 downto 0);
             ready_mul: out std_logic);
   end component;	
   signal ready_mult_x_x : STD_LOGIC;
   signal ready_mult_a_xx : STD_LOGIC;
   signal ready_mult_b_x : STD_LOGIC;
   signal ready_axx_bx : STD_LOGIC;
   signal add_axx_bx  : STD_LOGIC_VECTOR (26 downto 0);
   signal mult_bx  : STD_LOGIC_VECTOR (26 downto 0);
   signal mult_ax  : STD_LOGIC_VECTOR (26 downto 0);
   signal mult_xx  : STD_LOGIC_VECTOR (26 downto 0);
   signal a_signal : STD_LOGIC_VECTOR (26 downto 0):= "000000000000000000000000001";
   signal b_signal : STD_LOGIC_VECTOR (26 downto 0):= "000000000000000000000000001";
   signal c_signal : STD_LOGIC_VECTOR (26 downto 0):= "000000000000000000000000001";
   signal ready_axx_e_bx: STD_LOGIC;
begin

-- x*x = x²
x_x: multiplierfsm_v2
       port map(reset => reset, 
                clk	 	 => clk,          
                op_a	 	 => x,
                op_b	 	 => x,
                start_i	 => start,
                mul_out  => mult_xx,
                ready_mul => ready_mult_x_x); 
                
-- a*x²                
a_x: multiplierfsm_v2 
       port map(reset => reset, 
                clk	 	  => clk,          
                op_a	 	  => mult_xx,
                op_b	 	  => a_signal,
                start_i	  => ready_mult_x_x,
                mul_out   => mult_ax,
                ready_mul => ready_mult_a_xx);
-- b*x
b_x: multiplierfsm_v2 
       port map(reset => reset, 
                clk	 	 => clk,          
                op_a	 	 => x,
                op_b	 	 => b_signal,
                start_i	 => ready_mult_x_x,
                mul_out  => mult_bx,
                ready_mul => ready_mult_b_x);
                
ready_axx_e_bx <= ready_mult_a_xx and ready_mult_b_x;                
-- a*x²+b*x
 axx_bx: addsubfsm_v6
 port map(reset    => reset,
          clk      => clk,
          op		=> '0',
          op_a 	=> mult_ax,
          op_b 	=> mult_bx,
          start_i => ready_axx_e_bx,
          addsub_out => add_axx_bx,
          ready_as  => ready_axx_bx);
-- a*x²+b*x+c               
 axx_bx_c: addsubfsm_v6
 port map(reset    => reset,
          clk      => clk,
          op		=> '0',
          op_a 	=> add_axx_bx,
          op_b 	=> c_signal,
          start_i => ready_axx_bx,
          addsub_out => y,-- saida com a soma das tres operações de adição
          ready_as  => ready);               
             
end Behavioral;
