library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity AND_4 is		-- 
  port(I0 : in std_logic;
		 I1 : in std_logic;
		 I2 : in std_logic;
		 I3 : in std_logic;
		 O0 : out std_logic);
		 

end AND_4;


architecture FUNCTIONALITY of AND_4 is

signal a1, a2 : std_logic;

begin 
   U0 : AND_1 port map(I0, I1, a1);
	U1 : AND_1 port map(I2, I3, a2);
	U2 : AND_1 port map(a1, a2, O0);
end FUNCTIONALITY;	