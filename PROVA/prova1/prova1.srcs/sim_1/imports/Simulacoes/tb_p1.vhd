----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2018 15:42:50
-- Design Name: 
-- Module Name: tb_filtroSobel3_3 - Behavioral
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

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2017 09:33:21
-- Design Name: 
-- Module Name: tb_sobel2 - Behavioral
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

entity tb_p1 is
--  Port ( );
end tb_p1;

architecture Behavioral of tb_p1 is

--FILE input_file  : text OPEN read_mode IS sim_file;
signal reset : std_logic := '0';
signal clk : std_logic := '0';
signal start : std_logic := '0';

signal sigmak_0_aux : std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');
signal sigma_z_aux : std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');

signal Xir_aux : std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');
signal Xul_aux : std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');
signal x_fus_est_aux : std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');

signal neuronout : std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');
signal ready : std_logic := '0';
-- conter for WOMenable
 signal WOMenable : std_logic := '0';
-- signal cnt_ena : integer range 1 to 205 := 1;

--constant num_mult_neuronio : integer := 4;
--subtype saida_mult is std_logic_vector( FP_WIDTH-1 downto 0 );
--type t_mult  is array( 0 to num_mult_neuronio-1 ) of saida_mult;

component dis_est is
  Port ( sigmak_0 : in STD_LOGIC_VECTOR (26 downto 0);
  start : in STD_LOGIC;
  reset: in STD_LOGIC;
  clk : in STD_LOGIC;
  sigma_z : in STD_LOGIC_VECTOR (26 downto 0);
  XIR : in STD_LOGIC_VECTOR (26 downto 0);
  XUL : in STD_LOGIC_VECTOR (26 downto 0);
  ready : out STD_LOGIC;
  x_fus_est : out STD_LOGIC_VECTOR (26 downto 0));
end component;

signal first_start : std_logic := '0';
signal next_start : std_logic := '0';

-- enderecamento das memorias ROM e WOM
signal ROMaddress : std_logic_vector(7 downto 0) := (others=>'0');

begin
   
    -- reset generator
    reset <= '0', '1' after 15 ns, '0' after 25 ns;
    
    -- clock generator
    clk <= not clk after 5 ns; 
    
    -- cria o start 
    first_start <= '0', '1' after 55 ns, '0' after 65 ns; 
    
    -- sobel architecture intanciation                    
    uut: dis_est port map(
        reset     => reset,  
        clk       => clk,
        start     => start,
        ready     => ready,
        sigmak_0 => sigmak_0_aux,
        sigma_z => sigma_z_aux,
        XIR => Xir_aux,
        XUL => Xul_aux,
        x_fus_est => x_fus_est_aux);
	
        rom_sigmak_0: process
        file infile	: text is in "sk_arq_bin.txt"; -- input file declaration
        variable inline : line; -- line number declaration
        variable dataf  : std_logic_vector(FP_WIDTH-1 downto 0); 
        begin
            while (not endfile(infile)) loop
                wait until rising_edge(clk);
                    if first_start='1' or ready='1' then
                        readline(infile, inline);
                        read(inline,dataf);
                        sigmak_0_aux <= dataf;
                        start <= '1';
                    else
                        start <= '0';
                    end if;
                    
            end loop;
            assert not endfile(infile) report "FIM DA LEITURA" severity warning;
            wait;        
        end process;

        rom_sigma_z: process
        file infile	: text is in "sz_arq_bin.txt"; -- input file declaration
        variable inline : line; -- line number declaration
        variable dataf  : std_logic_vector(FP_WIDTH-1 downto 0); 
        begin
            while (not endfile(infile)) loop
                wait until rising_edge(clk);
                    if first_start='1' or ready='1' then
                        readline(infile, inline);
                        read(inline,dataf);
                        sigma_z_aux <= dataf;
                        start <= '1';
                    else
                        start <= '0';
                    end if;
                    
            end loop;
            assert not endfile(infile) report "FIM DA LEITURA" severity warning;
            wait;        
        end process;
        
    rom_Xul: process
    file infile	: text is in "Xul_arq_bin.txt"; -- input file declaration
    variable inline : line; -- line number declaration
    variable dataf  : std_logic_vector(FP_WIDTH-1 downto 0); 
    begin
        while (not endfile(infile)) loop
            wait until rising_edge(clk);
                if first_start='1' or ready='1' then
                    readline(infile, inline);
                    read(inline,dataf);
                    Xul_aux <= dataf;
                    start <= '1';
                else
                    start <= '0';
                end if;
                
        end loop;
        assert not endfile(infile) report "FIM DA LEITURA" severity warning;
        wait;        
    end process;

    rom_Xir: process
    file infile	: text is in "Xir_arq_bin.txt"; -- input file declaration
    variable inline : line; -- line number declaration
    variable dataf  : std_logic_vector(FP_WIDTH-1 downto 0); 
    begin
        while (not endfile(infile)) loop
            wait until rising_edge(clk);
                if first_start='1' or ready='1' then
                    readline(infile, inline);
                    read(inline,dataf);
                    Xir_aux <= dataf;
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
    file out_file     : text is out "Xfus_arq_float_est_vhdl.txt";
    begin
        -- write line to file every clock
        if (rising_edge(clk)) then
            if WOMenable = '1' then
                write (out_line, x_fus_est_aux);
                writeline (out_file, out_line);
            end if; 
        end if;  
    end process ;

end Behavioral;







