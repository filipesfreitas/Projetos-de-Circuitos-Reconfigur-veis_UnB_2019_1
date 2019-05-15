----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2019 17:43:17
-- Design Name: 
-- Module Name: tb_neuronio_GMBH - Behavioral
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
use std.textio.all;
use IEEE.std_logic_textio.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;
use work.fpupack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_neuronio_GMBH is
end tb_neuronio_GMBH;

architecture Behavioral of tb_neuronio_GMBH is
   component neuronio is
      Port ( clk : in STD_LOGIC;
              reset : in STD_LOGIC;
              start : in STD_LOGIC;
              x : in STD_LOGIC_VECTOR (26 downto 0);
              y : out STD_LOGIC_VECTOR (26 downto 0);
              ready: out STD_LOGIC);
      end component;
      signal clk : STD_LOGIC;
      signal reset : STD_LOGIC;
      signal start : STD_LOGIC;
      signal ready : STD_LOGIC;
      signal x_signal  : STD_LOGIC_VECTOR (26 downto 0);
      signal y_signal  : STD_LOGIC_VECTOR (26 downto 0);
      signal WOMenable : std_logic := '0';
      signal first_start : std_logic := '0';
      constant period: time:= 20ns;
      

begin

        -- reset generator
    reset <= '0', '1' after 15 ns, '0' after 25 ns;
        -- cria o start 


      first_start <= '0','1' after 30 ns,'0' after 40 ns;
  
 
    
    CLK_STIMULUS: process
    begin
      clk <= '0';
      wait for period/2;
      clk <= '1';
      wait for period/2;  
    end process;
    
    UUT: neuronio 
      Port map(clk => clk,
               reset => reset,
               start => start,
               x => x_signal,
               y => y_signal,
               ready => ready);

    rom_Xir: process
    file infile	: text is in "Xbin.txt"; -- input file declaration
    variable inline : line; -- line number declaration
    variable dataf  : std_logic_vector(FP_WIDTH-1 downto 0); 
    begin
        while (not endfile(infile)) loop
            wait until rising_edge(clk);
                if first_start='1' or ready='1' then
                    readline(infile, inline);
                    read(inline,dataf);
                    x_signal <= dataf;
                    start <= '1';
                else
                    start <= '0';
                end if;          
        end loop;
        assert not endfile(infile) report "FIM DA LEITURA" severity warning;
        wait;        
    end process;
    
    WOMenable <= ready;
    
    wom_n1 : process(clk) 
    variable out_line : line;
    file out_file     : text is out "Y_bin.txt";
    begin
        -- write line to file every clock
        if (rising_edge(clk)) then
            if WOMenable = '1' then
                write (out_line, y_signal);
                writeline (out_file, out_line);
            end if; 
        end if;  
    end process ;
end Behavioral;
