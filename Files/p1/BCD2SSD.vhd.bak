library ieee;
use ieee.std_logic_1164.all;
use work.EE214.all;

entity BCD2SSD is
port(X:in std_logic_vector(3 downto 0);
     Y:out std_logic_vector(6 downto 0));
	  
end BCD2SSD;

architecture func of BCD2SSD is
signal a,b,c,d : std_logic;
begin
a <=X(3);
b <=X(2);
c <=X(1);
d <=X(0);
Y(6) <= a or c or (b and d) or (not b and not d);
Y(5) <= (not c and not d)or( c and d)or (not b);
Y(4) <= b or d or (not c);
Y(3) <= a or (not d and not b)or(c and not d)or(not a and not b and c)or(b and not c and d);
Y(2) <=(not b and not d)or(c and not d);
Y(1)<= a or (not c and not d)or(b and not c)or(b and c and not d);
Y(0)<=a or ( c and not b)or (b and not  c)or(c and not d);

end func;




