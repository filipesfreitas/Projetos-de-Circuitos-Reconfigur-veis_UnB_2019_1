----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2019 08:40:40
-- Design Name: 
-- Module Name: top_level_4 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level_4 is
    Port ( clk : in STD_LOGIC;
           start : in STD_LOGIC;
           reset : in STD_LOGIC;
           ready : out STD_LOGIC;
           Xfus : out STD_LOGIC_VECTOR (26 downto 0));
end top_level_4;

architecture Behavioral of top_level_4 is


   COMPONENT dis_est is
          Port ( start : in STD_LOGIC;
              reset: in STD_LOGIC;
              clk : in STD_LOGIC;
              XIR : in STD_LOGIC_VECTOR (26 downto 0);
              XUL : in STD_LOGIC_VECTOR (26 downto 0);
              ready : out STD_LOGIC;
              x_fus_est : out STD_LOGIC_VECTOR (26 downto 0));
   end component;
   component addres_handle is
  Port (start : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk   : in STD_LOGIC ;
        ready : in STD_LOGIC;
        address: out STD_LOGIC_VECTOR(6 downto 0));
   end component;
     signal      en_aux, ready_aux,start_aux   :  STD_LOGIC;
     signal addr_aux: STD_LOGIC_VECTOR(6 downto 0);
     signal dout_xir_aux: STD_LOGIC_VECTOR(26 downto 0) := (others => '1');
     signal dout_xul_aux: STD_LOGIC_VECTOR(26 downto 0) := (others => '1');
      
begin

   address_handle: addres_handle
      Port map(start => start_aux,
         reset => reset,
         clk   => clk,
         ready => ready_aux,
         address => addr_aux);
           
   x_fus_comp: dis_est
      Port map( start => start,
         reset => reset,
         clk => clk,
         XIR => dout_xir_aux,
         XUL =>dout_xul_aux,
         ready => ready_aux,
         x_fus_est => Xfus);
         
end Behavioral;
