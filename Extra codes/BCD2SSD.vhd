 library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity BCD2SSD is 
port(X : in std_logic_vector(3 downto 0);
Y : out std_logic_vector(6 downto 0);
F : out std_logic);
end BCD2SSD;

architecture FUNCTIONALITY of BCD2SSD is

signal Xnot : std_logic_vector(3 downto 0);
signal a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11: std_logic;
signal o1, o2: std_logic;

begin 

bank:
for i in 0 to 3 generate
	U0 : NOT_1 port map (X(i), Xnot(i));
end generate;

	U1 : AND_1 port map (X(1), X(3), a1);
	U2 : AND_1 port map (Xnot(1), Xnot(3), a2);
	U3 : AND_1 port map (X(2), X(3), a3);
	U4 : AND_1 port map (Xnot(2), Xnot(3), a4);
	U5 : AND_1 port map (X(2), Xnot(3), a5);
	U6 : AND_1 port map (X(1), Xnot(2), a6);
	U7 : AND_1 port map (X(1), X(2), a7);
	U8 : AND_1 port map (Xnot(1), X(2), a8);
	U9 : AND_1 port map (Xnot(0), a8, a9);
	U10 : AND_1 port map (X(3), a6, a10);
	U11 : AND_1 port map (Xnot(3), a7, a11);
	
	U12 : OR_4 port map (X(0), X(2), a1, a2, Y(0));
	U13 : OR_4 port map (a4, a3, Xnot(1), '0', Y(1));
	U14 : OR_4 port map (X(1), X(3), Xnot(2), '0', Y(2));
	U15 : OR_4 port map (X(0), a2, a5, a9, o1);
	U19 : OR_1 port map (o1, a10, Y(3));
	U16 : OR_4 port map (a2, a5, '0', '0', Y(4));
	U17 : OR_4 port map (X(0), a4, a6, a11, Y(5));
	U18 : OR_4 port map (X(0), a8, a6, a5, Y(6));
	
	U21 : OR_1 port map (X(1), X(2), o2);
	U20 : AND_1 port map (o2, X(0), F);
	

end FUNCTIONALITY;