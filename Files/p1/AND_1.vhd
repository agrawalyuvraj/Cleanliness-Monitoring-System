
library ieee;
use ieee.std_logic_1164.all;

entity AND_1 is		-- 
  port(I0 : in std_logic;
		 I1 : in std_logic;
		 O0 : out std_logic);
		 

end AND_1;


architecture FUNCTIONALITY of AND_1 is

begin 
   O0 <= I0 and I1;
end FUNCTIONALITY;	