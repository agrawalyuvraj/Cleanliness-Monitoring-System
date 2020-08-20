library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity FOUR_BIT_ADD_SUBT is
port(A,B : in std_logic_vector(3 downto 0);
	  SEL : in std_logic;
	  S : out std_logic_vector(3 downto 0);
	  Cout : OUT std_logic);
end  FOUR_BIT_ADD_SUBT;

architecture FUNCTIONALITY  of FOUR_BIT_ADD_SUBT is
signal BS : std_logic_vector(3 downto 0);

begin
XOR_BANK :
 for i in 0 to 3 generate
 U0 : XOR_1 port map(B(i),SEL,BS(i));
 end generate;
 
 
 U1 : four_bit_adder port map( SEL, A(0), A(1), A(2), A(3), BS(0), BS(1), BS(2), BS(3), S(0), S(1), S(2), S(3), Cout);
end FUNCTIONALITY;