
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity XOR_1 is		-- 
  port(I0, I1 : in std_logic;
		 O0 : out std_logic);
		 

end XOR_1;


architecture FUNCTIONALITY of XOR_1 is

signal I0_comp : std_logic;
signal I1_comp : std_logic;
signal I0_AND_I1_comp : std_logic;
signal I0_comp_AND_I1 : std_logic;

begin 

   U0 : NOT_1 port map (I0, I0_comp);
	U1 : NOT_1 port map (I1, I1_comp);
	U2 : AND_1 port map (I0, I1_comp, I0_AND_I1_comp);
	U3 : AND_1 port map (I1, I0_comp, I0_comp_AND_I1);
	U4 : OR_1 port map (I0 => I0_AND_I1_comp, I1 => I0_comp_AND_I1, O0 => O0);
	
end FUNCTIONALITY;	