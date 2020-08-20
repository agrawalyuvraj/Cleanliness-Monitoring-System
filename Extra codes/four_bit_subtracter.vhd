
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity four_bit_subtracter is		-- 
  port(A0, A1, A2, A3, B0, B1, B2, B3, I0 : in std_logic;
		 S0, S1, S2, S3, Cout : out std_logic);
		 

end four_bit_subtracter;

architecture FUNCTIONALITY of four_bit_subtracter is

signal B0not : std_logic;
signal B1not : std_logic;
signal B2not : std_logic;
signal B3not : std_logic;

begin 
	
	U0 : NOT_1 port map (B0, B0not);
	U1 : NOT_1 port map (B1, B1not);
	U2 : NOT_1 port map (B2, B2not);
	U3 : NOT_1 port map (B3, B3not);
	U4 : four_bit_adder  port map (I0, A0, A1, A2, A3, B0not, B1not, B2not, B3not, S0, S1, S2, S3, Cout);
  
	
end FUNCTIONALITY;	