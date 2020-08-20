library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity PRIORITY_ENC is 
port(X : in std_logic_vector(7 downto 0);
Y : out std_logic_vector(2 downto 0); 
Z : out std_logic); 
end PRIORITY_ENC;

architecture FUNCTIONALITY of PRIORITY_ENC is

signal Xnot : std_logic_vector(7 downto 0);
signal a1, a2, a3, a4, a5, a6, a7, a8 : std_logic;
signal b1, b2 : std_logic;

begin 
	
bank:

for i in 0 to 7 generate
	U0 : NOT_1 port map (X(i), Xnot(i));
end generate;	
	
	a1 <= X(0);
	U1 : AND_1 port map (Xnot(0), X(1), a2);
	U2 : AND_4 port map (Xnot(0), Xnot(1), X(2), '1', a3);
	U3 : AND_4 port map (Xnot(0), Xnot(1), Xnot(2), X(3), a4);
	
	U4 : AND_4 port map (Xnot(0), Xnot(1), Xnot(2), Xnot(3), b1);
	U5 : AND_1 port map (b1, X(4), a5);
	
	U6 : AND_4 port map (b1, Xnot(4), X(5), '1', a6);
	U7 : AND_4 port map (b1, Xnot(4), Xnot(5), X(6), a7);
	U8 : AND_4 port map (b1, Xnot(4), Xnot(5), Xnot(6), b2);
	U9 : AND_1 port map (b2, X(7), a8);
	
	U10 : OR_4 port map (a2, a4, a6, a8, Y(0));
	U11 : OR_4 port map (a3, a4, a7, a8, Y(1));
	U12 : OR_4 port map (a5, a6, a7, a8, Y(2));
	
	U13 : AND_1 port map (b2, Xnot(7), Z);
	
end FUNCTIONALITY;