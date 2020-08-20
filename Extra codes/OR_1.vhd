
library ieee;
use ieee.std_logic_1164.all;

entity OR_1 is		-- 
  port(I0 : in std_logic;
		 I1 : in std_logic;
		 O0 : out std_logic);
		 

end OR_1;


architecture FUNCTIONALITY of OR_1 is

begin 
   O0 <= I0 or I1;
end FUNCTIONALITY;	