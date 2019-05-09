library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ping_pong is 
	Port ( clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		sw0 : in STD_LOGIC;
		sw15 : in STD_LOGIC;
		enable: in STD_LOGIC;
		seg : out STD_LOGIC_VECTOR (7 downto 0);
		an : out STD_LOGIC_VECTOR (3 downto 0);
		led : out STD_LOGIC_VECTOR (15 downto 0));

end ping_pong;

architecture behavioral of ping_pong is

  signal clk_40Hz, clk_10Hz : STD_LOGIC;
  signal sel_mux_connect : std_logic_vector(1 downto 0);
  signal cnt0_connect 		: std_logic_vector(3 downto 0) ;
  signal cnt1_connect		: std_logic_vector(3 downto 0) ;
  signal player_connect		: std_logic;
  signal enable_connect		: std_logic;
  signal lr		: std_logic ;
  
  component div_clock is
  generic(Count: integer);
  Port ( clk_in : in STD_LOGIC;
      clk_out : out STD_LOGIC;
      reset : in STD_LOGIC);
  end component;
  
  component anodo is
  port(clk: in STD_LOGIC;
    reset: in STD_LOGIC;
    sel_mux_port: out std_logic_vector(1 downto 0);
    an : out STD_LOGIC_VECTOR (3 downto 0)
    );
  end component;
  
  component deslocamento is
    Port (clk: in STD_LOGIC;
        reset: in STD_LOGIC;
        enable: in STD_LOGIC;
        player: in std_logic;
        lr: in STD_LOGIC;
        reg_port: out  std_logic_vector(15 downto 0)       
        );
  end component;
  
  component logica is
    port(clk : in STD_LOGIC;
    reset	 : in STD_LOGIC;
    sw0 	 : in STD_LOGIC;
    sw15 	 : in STD_LOGIC;
    reg_port 	 : out std_logic_vector(15 downto 0);
    cnt0 	 : out std_logic_vector(3 downto 0);--player 0
    cnt1 	 : out std_logic_vector(3 downto 0);--player 1
    lr	 	 : out std_logic;--sentido
    enable : out std_logic;
    player : out std_logic);
  
  end component;
  
  component sete_seg is
  port(sel_mux: in std_logic_vector(1 downto 0);
    cnt0 	 : in std_logic_vector(3 downto 0);--player 0
    cnt1 	 : in std_logic_vector(3 downto 0);--player 1
    seg : out STD_LOGIC_VECTOR (7 downto 0));
  end component;
  
begin
 
clock_10Hz: div_clock generic map(Count => 10)
 port map(clk_in => clk, clk_out => clk_10Hz, reset => reset);
clock_40Hz: div_clock generic map(Count => 40)
 port map(clk_in => clk, clk_out => clk_40Hz, reset => reset);
 
 Ulogica:logica 
  port map(clk => clk ,
           reset	=> reset ,
           sw0 => sw0,
           sw15 =>sw15,
          reg_port 	=> led,
          cnt0 => cnt0_connect	 ,
          cnt1 => cnt1_connect	 ,
          lr	=> lr ,
          enable => enable_connect ,
          player => player_connect);
		
 Udeslocamento: deslocamento
  Port map(clk => clk_10Hz,
        reset => reset,
        enable => enable_connect,
        player => player_connect,
        lr=> lr,
        reg_port=> led);
        
 Usete_seg: sete_seg   
  port map(sel_mux => sel_mux_connect,
		cnt0 => cnt0_connect,
		cnt1 => cnt1_connect,
    seg => seg);
    
 Uanodo:anodo 
  port map(clk => clk_40Hz,
    reset => reset,
    sel_mux_port => sel_mux_connect,
    an => an );
 
end behavioral;