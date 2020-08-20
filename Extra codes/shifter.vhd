library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity shifter is 
port(I0, I1, I2, I3 : in std_logic;
S : in std_logic_vector(1 downto 0);
D : in std_logic;
O0 : out std_logic_vector(3 downto 0)); 
end shifter;

architecture FUNCTIONALITY of shifter is

signal a1, a2, a3, a4 : std_logic_vector(3 downto 0);
signal Dnot : std_logic;
signal e1, e2, e3, e4 : std_logic;

begin 

		U0 : NOT_1 port map (D, Dnot);
		U1 : AND_1 port map (I1, Dnot, a1(1));
		U2 : AND_1 port map (I2, Dnot, a1(2));
		U3 : AND_1 port map (I3, Dnot, a1(3));
		a1(0) <= I0;
		
		U4 : AND_1 port map (I2, Dnot, e1);
		U5 : AND_1 port map (I0, D, e2);
		U6 : OR_1 port map (e1, e2, a2(1));		
		U7 : AND_1 port map (I3, Dnot, a2(2));
		a2(0) <= I1;
		a2(3) <= '0';
		
		U8 : AND_1 port map (I3, Dnot, e3);
		U9 : AND_1 port map (I1, D, e4);
		U10 : OR_1 port map (e3, e4, a3(1));
		U11 : AND_1 port map (I0, D, a3(2));
		a3(0) <= I2;
		a3(3) <= '0';
		
		U12 : AND_1 port map (I2, D, a4(1));
		U13 : AND_1 port map (I1, D, a4(2));
		U14 : AND_1 port map (I0, D, a4(3));
		a4(0) <= I3;
		
		U15 : MUX_16_4 port map (a1(3 downto 0), a2(3 downto 0), a3(3 downto 0), a4(3 downto 0), S(1 downto 0), O0(3 downto 0));
		
	
end FUNCTIONALITY;