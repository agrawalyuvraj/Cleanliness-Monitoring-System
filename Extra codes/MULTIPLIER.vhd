library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity MULTIPLIER is 
port(A, B : in std_logic_vector(3 downto 0); 
M : out std_logic_vector(7 downto 0)); 
end MULTIPLIER;

architecture FUNCTIONALITY of MULTIPLIER is

signal a1, a2, a3, a4 : std_logic_vector(3 downto 0);
signal c1, c2 : std_logic_vector(2 downto 0);
signal cout : std_logic_vector(1 downto 0);

begin

bank:
for i in 0 to 3 generate
	U0 : AND_1 port map (A(i), B(0), a1(i));
	U1 : AND_1 port map (A(i), B(1), a2(i));
	U2 : AND_1 port map (A(i), B(2), a3(i));
	U3 : AND_1 port map (A(i), B(3), a4(i));
end generate;

	M(0) <= a1(0);
	U4 : four_bit_adder port map ('0', a1(1), a1(2), a1(3), '0', a2(0), a2(1), a2(2), a2(3), M(1), c1(0), c1(1), c1(2), cout(0));
	U5 : four_bit_adder port map ('0', c1(0), c1(1), c1(2), cout(0), a3(0), a3(1), a3(2), a3(3), M(2), c2(0), c2(1), c2(2), cout(1));
	U6 : four_bit_adder port map ('0', c2(0), c2(1), c2(2), cout(1), a4(0), a4(1), a4(2), a4(3), M(3), M(4), M(5), M(6), M(7));

end FUNCTIONALITY;
