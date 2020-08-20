
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity four_bit_adder is		-- 
  port(Cin, A0, A1, A2, A3, B0, B1, B2, B3 : in std_logic;
		 S0, S1, S2, S3, Cout : out std_logic);
		 

end four_bit_adder;

architecture FUNCTIONALITY of four_bit_adder is

signal C0 : std_logic;
signal C1 : std_logic;
signal C2 : std_logic;

begin

   U0 : full_adder port map (A0, B0, Cin, S0, C0);
	U1 : full_adder port map (A1, B1, C0, S1, C1);
	U2 : full_adder port map (A2, B2, C1, S2, C2);
	U3 : full_adder port map (A3, B3, C2, S3, Cout);
	
end FUNCTIONALITY;	