
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity half_adder is		-- 
  port(I0, I1 : in std_logic;
		 O0, O1 : out std_logic);
		 

end half_adder;


architecture FUNCTIONALITY of half_adder is

begin 

   U0 : XOR_1 port map (I0, I1, O0);
	U1 : AND_1 port map (I0, I1, O1);
	
end FUNCTIONALITY;	