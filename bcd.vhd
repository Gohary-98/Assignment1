LIBRARY ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY bcd IS
port(count: IN integer;
bcd1:OUT std_logic_vector (6 downto 0);
bcd2:OUT std_logic_vector (6 downto 0));
end;

ARCHITECTURE def of bcd IS
signal i1:integer;
signal i2:integer;
signal b1:std_logic_vector (6 downto 0);
signal b2:std_logic_vector (6 downto 0);
begin
process (count)
begin
i1<= count/10;
i2<= count rem 10;
case i1 is
when 0 =>
b1 <= "1000000"; 
when 1 =>
b1 <= "1111001";
when 2 =>
b1 <= "0100100"; 
when 3 =>
b1 <= "0110000"; 
when 4 =>
b1 <= "0011001"; 
when 5 =>
b1 <= "0010010"; 
when others =>
b1 <= "1111111"; ---null
end case;
case i2 is
when 0 =>
b2 <= "1000000"; 
when 1 =>
b2 <= "1111001";
when 2 =>
b2 <= "0100100"; 
when 3 =>
b2 <= "0110000"; 
when 4 =>
b2 <= "0011001"; 
when 5 =>
b2 <= "0010010"; 
when 6 =>
b2 <= "0000010"; 
when 7 =>
b2 <= "1111000";
when 8 =>
b2 <= "0000000"; 
when 9 =>
b2 <= "0010000";
when others =>
b2 <= "1111111"; ---null
end case;
 
end process;
bcd1<=b1;
bcd2<=b2;
end def;