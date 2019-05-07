----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2019 09:19:45
-- Design Name: 
-- Module Name: dis_est - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dis_est is
    Port ( sigmak_0 : in STD_LOGIC_VECTOR (26 downto 0);
           start : in STD_LOGIC;
           reset: in STD_LOGIC;
           clk : in STD_LOGIC;
           sigma_z : in STD_LOGIC_VECTOR (26 downto 0);
           XIR : in STD_LOGIC_VECTOR (26 downto 0);
           XUL : in STD_LOGIC_VECTOR (26 downto 0);
           ready : out STD_LOGIC;
           x_fus_est : out STD_LOGIC_VECTOR (26 downto 0));
end dis_est;

architecture Behavioral of dis_est is
component x_fus is
   Port ( x_fus_res : out STD_LOGIC_VECTOR (26 downto 0);
           ready : out STD_LOGIC;
           XIR : in STD_LOGIC_VECTOR (26 downto 0);
           clk : in STD_LOGIC;
           XUL : in STD_LOGIC_VECTOR (26 downto 0);
           start : in STD_LOGIC;
           gk_1 : in STD_LOGIC_VECTOR (26 downto 0));
end component;

component gk_1 is
  Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           ready : out STD_LOGIC;
           sigmaz : in STD_LOGIC_VECTOR (26 downto 0);
           sigmak : in STD_LOGIC_VECTOR (26 downto 0);
           gk1_mais : out STD_LOGIC_VECTOR (26 downto 0));
end component;

component sigma_k is
  Port ( start : in STD_LOGIC;
           ready : out STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           sigmak_mais_1 : in STD_LOGIC_VECTOR (26 downto 0);
           sigmak_0 : in STD_LOGIC_VECTOR (26 downto 0);
           sigmak : out STD_LOGIC_VECTOR (26 downto 0));
end component;

component sigmak is
  port(ready_gk_1: in STD_LOGIC;
     ready_sigma_1: in STD_LOGIC;
     sigma_mais: in STD_LOGIC_VECTOR(26 downto 0);
     sigma_z: in STD_LOGIC_VECTOR(26 downto 0);
     clk : in STD_LOGIC;
     start:  in STD_LOGIC;
     gk_mais1: in STD_LOGIC_VECTOR(26 downto 0);
     sigma_1_mais: out STD_LOGIC_VECTOR(26 downto 0) );
end component;

signal ready_gk_sigma_k, ready_sigmak_sigma_k, ready_x_fus_aux : STD_LOGIC;
signal gk_1_aux : STD_LOGIC_VECTOR(26 downto 0);
signal sigma_aux :STD_LOGIC_VECTOR(26 downto 0);
signal sigma_mais_1aux :STD_LOGIC_VECTOR(26 downto 0);
begin

gk_1comp: gk_1  Port map ( reset =>reset,
           start=>start,
           ready =>ready_gk_sigma_k,
           sigmaz =>sigma_z,
           sigmak => sigma_aux,
           clk=>CLK,
           gk1_mais =>gk_1_aux);

sigma_kcomp: sigma_k Port map( start  => start,
           ready  =>ready_sigmak_sigma_k,
           reset  =>reset,
           clk => CLK,
           sigmak_mais_1 => sigma_mais_1aux,
           sigmak_0  => sigmak_0,
           sigmak  => sigma_aux);

sigmak_comp: sigmak
 port map(ready_gk_1 => ready_gk_sigma_k,
     ready_sigma_1=> ready_sigmak_sigma_k,
     sigma_mais => sigma_aux,
     sigma_z => sigma_z,
     start=>start,
     clk => CLK,
     gk_mais1=>gk_1_aux,
     sigma_1_mais => sigma_mais_1aux);
     
x_fus_comp:x_fus Port map( x_fus_res => x_fus_est,
           ready => ready,
           XIR => XIR,
           XUL => XUL,
           clk => CLK,
           start => start,
           gk_1 => gk_1_aux);

end Behavioral;
