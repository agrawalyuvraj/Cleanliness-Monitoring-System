library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity OR_4 is		-- 
  port(I0 : in std_logic;
		I1 : in std_logic;
		I2 : in std_logic;
		I3 : in std_logic;
		 O0 : out std_logic);
		 

end OR_4;


architecture FUNCTIONALITY of OR_4 is

signal o1, o2 : std_logic;

begin 
	U1 : OR_1 port map (I0, I1, o1);
	U2 : OR_1 port map (I2, I3, o2);
   U3 : OR_1 port map (o1, o2, O0);
end FUNCTIONALITY;	