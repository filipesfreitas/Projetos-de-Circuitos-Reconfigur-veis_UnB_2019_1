----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2019 23:52:15
-- Design Name: 
-- Module Name: ping_pong - Behavioral
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
use IEEE.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ping_pong is
    Port ( clk : in STD_LOGIC;
           reset: in STD_LOGIC;
           enable: in STD_LOGIC;
           sw0   : in STD_LOGIC;
           sw1   : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0)
           );
end ping_pong;

architecture Behavioral of ping_pong is
  --sginals
  signal cnt_10Hz 	: integer range 0 to 5000000 := 0;
  signal clk_10Hz 	: std_logic := '0';
  signal cnt_40Hz 	: integer range 0 to 1250000 := 0;
  signal clk_40Hz 	: std_logic := '0';
  
  signal  cnt0_signal   :  STD_LOGIC_VECTOR(3 downto 0);
  signal  cnt1_signal   :  STD_LOGIC_VECTOR(3 downto 0);
  signal l_r_signal ,enable_signal,clk_10_signal: STD_LOGIC;--register signals
  signal reg_out_signal : STD_LOGIC_VECTOR (15 downto 0);    
  
  
  --components
  component Reg
    Port(    l_r      : in STD_LOGIC;
             enable   : in STD_LOGIC;
             clk_reg  : in STD_LOGIC;
             reset    : in STD_LOGIC;
             reg_out  : out STD_LOGIC_VECTOR (15 downto 0));
  
  end component;
  
  component display
    Port (   clk_display    : in STD_LOGIC;
             reset  : in STD_LOGIC;
             cnt0   :  in STD_LOGIC_VECTOR(3 downto 0);
             cnt1   :  in STD_LOGIC_VECTOR(3 downto 0);
             seg    : out STD_LOGIC_VECTOR(7 downto 0);
             an     : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  
  component logica
    Port (   reg    : in STD_LOGIC_VECTOR(15 downto 0);
             clk_logica    : in STD_LOGIC;
             reset  : in STD_LOGIC;
             sw0    : in STD_LOGIC;
             sw15   : in STD_LOGIC;
             cnt0   : out STD_LOGIC_VECTOR (3 downto 0);
             cnt1   : out STD_LOGIC_VECTOR (3 downto 0);
             enable : out STD_LOGIC;
             lr     : out STD_LOGIC);
  end component;
--  component clock
--    generic (count    : integer);
--    Port    (clk_in   : in STD_LOGIC;
--             clk_out  : out STD_LOGIC;
--             reset    : in STD_LOGIC);
--  end component;
--  signal clk_; STD_LOGIC;
  begin
--  clk_10: clock generic map(count => 19999999) port map(clk,clk_reg,reset);
--  clk_40: clock generic map(count => 4999999) port map();
			-- process para dividir o clock 10Hz
	process(clk,reset)
	begin
		if reset='1' then
			cnt_10Hz <= 0;
			clk_10Hz <= '0';
		elsif rising_edge(clk) then
			if cnt_10Hz = 5000000 then
				cnt_10Hz <= 0;
				clk_10Hz <= not clk_10Hz;
			else
				cnt_10Hz <= cnt_10Hz + 1;
			end if;
		end if;
	end process;

	-- process para divisor de clock do multiplexador de anodos a 40Hz
	process(clk,reset)
	begin
		if reset='1' then
			cnt_40Hz <= 0;
			clk_40Hz <= '0';
		elsif rising_edge(clk) then
			if cnt_40Hz = 500000 then
				cnt_40Hz <= 0;
				clk_40Hz <= not clk_40Hz;
			else
				cnt_40Hz <= cnt_40Hz + 1;
			end if;
		end if;	
	end process;		
	
  reg1: reg port map(l_r_signal,enable,clk_10Hz,reset,led);
  display1: display port map(clk_40Hz ,reset,cnt0_signal,cnt1_signal,display,anodes);
  logica1: logica port map(reg_out_signal,clk,reset,sw0,sw1,cnt0_signal,cnt1_signal,enable,l_r_signal);

end Behavioral;














