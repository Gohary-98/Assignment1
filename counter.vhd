LIBRARY ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY counter IS
port(clk:IN std_logic;
pause:IN std_logic;
reset:IN std_logic;
timecount:OUT integer);
end;

ARCHITECTURE def of counter IS
signal c:integer:=0;
begin
process (clk,reset)
begin
if (reset='1')
then c<=0;
elsif (clk'EVENT AND clk='1')
 then
 if(pause='0')then
  if(c=59)
   then c <= 0;
   else 
   c<=c+1;
  end if;
 end if;
end if;
end process;
timecount<=c;
end def;