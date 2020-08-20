library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity MUX_2_1 is		-- 
  port(I0, I1, S0 : in std_logic;
		 O0 : out std_logic);
		 

end MUX_2_1;

architecture FUNCTIONALITY of MUX_2_1 is

signal S0ANDI1 : std_logic;
signal S0not : std_logic;
signal S0notANDI0 : std_logic;

begin 

   U0 : AND_1 port map (S0, I1, S0ANDI1);
	U1 : NOT_1 port map (S0, S0not);
	U2 : AND_1 port map (S0not, I0, S0notANDI0);
	U3 : OR_1 port map (S0notANDI0, S0ANDI1, O0);
	
end FUNCTIONALITY;	