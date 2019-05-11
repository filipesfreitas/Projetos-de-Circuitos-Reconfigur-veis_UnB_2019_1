library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dis_est is
    Port ( start : in STD_LOGIC;
           reset: in STD_LOGIC;
           clk : in STD_LOGIC;
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
             reset : in STD_LOGIC;
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
    ready_sigma: out STD_LOGIC;
    reset     :  in std_logic;
    ready_sigma_1: in STD_LOGIC;
    sigma_mais: in STD_LOGIC_VECTOR(26 downto 0);
    clk : in STD_LOGIC;
    gk_mais1: in STD_LOGIC_VECTOR(26 downto 0);
    sigma_1_mais: out STD_LOGIC_VECTOR(26 downto 0) );
  end component;


  signal ready_gk_sigma_k, ready_sigmak_sigma_k, ready_x_fus_aux : STD_LOGIC;
  signal gk_1_aux : STD_LOGIC_VECTOR(26 downto 0);
  signal sigma_aux :STD_LOGIC_VECTOR(26 downto 0);
  signal sigma_mais_1aux :STD_LOGIC_VECTOR(26 downto 0);
  signal ready_sigma_mais_aux : STD_LOGIC;
  signal sigma_z :  STD_LOGIC_VECTOR (26 downto 0):= "001111110110010101000110100";
  signal sigmak_0 : STD_LOGIC_VECTOR (26 downto 0):= "001111110011111010100001001";

  
begin

sigma_kcomp: sigma_k
 Port map( start  => start,
  ready  => ready_sigmak_sigma_k,-- sigma k pronto
  reset  =>reset,
  clk => CLK,
  sigmak_mais_1 => sigma_mais_1aux,
  sigmak_0  => sigmak_0,
  sigmak  => sigma_aux);

gk_1comp: gk_1
  Port map ( reset =>reset,
  start=>ready_sigmak_sigma_k,
  ready =>ready_gk_sigma_k,
  sigmaz =>sigma_z,
  sigmak => sigma_aux,
  clk=>CLK,
  gk1_mais =>gk_1_aux);

sigmak_comp: sigmak
  port map(ready_gk_1 => ready_gk_sigma_k,
  ready_sigma_1=> ready_sigmak_sigma_k,
  ready_sigma => ready_sigma_mais_aux,
  sigma_mais => sigma_aux,
  reset=> reset,
  clk => CLK,
  gk_mais1=>gk_1_aux,
  sigma_1_mais => sigma_mais_1aux);
     
x_fus_comp:x_fus
  Port map( x_fus_res => x_fus_est,
  ready => ready,
  XIR => XIR,
  reset => reset,
  XUL => XUL,
  clk => CLK,
  start => ready_sigma_mais_aux,
  gk_1 => gk_1_aux);
           
end Behavioral;
