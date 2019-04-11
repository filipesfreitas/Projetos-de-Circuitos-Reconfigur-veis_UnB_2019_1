--dontpad link dontpad.com/pcrestacionemanto
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity estacionamento is
port( S: in STD_LOGIC_VECTOR(1 downto 0);
      clk: in STD_LOGIC;
      rst: in STD_LOGIC;
      semaforo: out STD_LOGIC);
end estacionamento;



architecture comportamental of estacionamento is
   type state is (espera,inicial,entrada1,entrada2,entrada3,saida1,saida2,saida3);
   
   signal vagas         : integer range 0 to 10:=3;
   signal current_state : state;
   signal next_state    : state;
   
begin
   -- architecture body
   process(clk,rst)
   begin
     if rst ='1' then
         
     elsif rising_edge(clk) then
      current_state <= next_state;
     end if;
   end process;
   
   process(current_state,S)
   begin
    case current_state is
      when inicial  =>
        next_state<= espera;
      when espera   =>
        if S = "10" then
          next_state <= entrada1;
        elsif S = "01" then
          next_state <= saida1;
        else
          next_state<=espera;
        end if;
      when entrada1 =>
        if S = "11" then
          next_state <= entrada2;
        elsif S = "00" then
          next_state <= espera;
        else
          next_state<=entrada1;
        end if;
      when entrada2 =>
        if S = "01" then
          next_state <= entrada3;
        elsif S = "10" then
          next_state <= entrada1;
        else
          next_state<=entrada2;
        end if;      
      when entrada3 =>
        if S = "00" then
          next_state <= espera;
        elsif S = "01" then
          next_state <= entrada2;
        else
          next_state<= entrada3;
        end if;      
      when saida1   =>
        if S = "10" then
          next_state <= saida2;
        elsif S = "00" then
          next_state <= espera;
        else
          next_state<= saida1;
        end if;      
      when saida2   =>
        if S = "10" then
          next_state <= saida3;
        elsif S = "01" then
          next_state <= saida1;
        else
          next_state<= saida2;
        end if;       
      when saida3   =>
        if S = "00" then
          next_state <= espera;
        elsif S = "11" then
          next_state <= saida2;
        else
          next_state<= saida3;
        end if;      
      when others   =>
        next_state <= espera;      
      end case;
   end process;
   
   	-- processo sequencial para o semaforo
	process(clk,rst)
	begin
		if rst = '1' then
			semaforo <= '1';
		elsif rising_edge(clk) then
			if vagas = 10 then
				semaforo <= '0';
			 else
			 	semaforo <= '1';
			end if;
		end if;
	end process;
	
		-- processo sequencial para saidas
	process(clk,rst)
	begin
		if rst='1' then
			vagas <= 3;
		elsif rising_edge(clk) then
			case current_state is
				when entrada3 =>
					if S="00" then
						vagas <= vagas + 1;
					end if;
				when saida3 =>
					if s="00" then
						vagas <= vagas + 1;
					end if;
				when others => null;
			end case;
		end if;
	end process;
		
end comportamental;
			
			
