----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2019 08:45:27
-- Design Name: 
-- Module Name: addres_handle - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity addres_handle is
  Port (start : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk   : in STD_LOGIC ;
        ready : in STD_LOGIC;
        address: out STD_LOGIC_VECTOR(6 downto 0));
end addres_handle;

architecture Behavioral of addres_handle is
   signal cnt: INTEGER := 0 ;
   signal cnt_addr:  STD_LOGIC_VECTOR(6 downto 0) := (others => '1');
   
begin
   process(clk,start,reset)
      
   begin
      if reset = '1' or cnt_addr = "111111" then
         cnt <= 0;
         cnt_addr <= (others => '0');
      elsif rising_edge(clk) or start = '1' then
         if cnt = 2 then
          cnt_addr <= cnt_addr + 1;
         else
          cnt <= cnt + 1;  
         end if;
      end if;
   end process;
  address <= cnt_addr;
 
end Behavioral;
