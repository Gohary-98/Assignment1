LIBRARY ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY freq_div IS
port (old_clk: IN std_logic;
new_clk:OUT std_logic);
END;

ARCHITECTURE def of freq_div IS
signal sig:std_logic ;
signal count : integer := 0;
begin
process(old_clk)
begin
if (old_clk'EVENT AND old_clk='1') then 
   if (count= 24999999)then 
	   sig <=NOT sig;
		count<=0;
	else
		count<=count +1;
	end if;
end if;
end process;
new_clk<=sig;
END def;