library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity NIBBLE_ALU is
port(A, B : in std_logic_vector(3 downto 0);
S : in std_logic_vector(2 downto 0);
F : out std_logic_vector(3 downto 0); 
O : out std_logic); 
end NIBBLE_ALU;

architecture FUNCTIONALITY of NIBBLE_ALU is

signal x1, x2, x3, x4, x5, x6, x7, x8, T1, T2 : std_logic_vector(3 downto 0);
signal O1, O2, O3, I1, I2, O2not, O3not : std_logic;
signal sh : std_logic_vector(1 downto 0);

begin

	U0 : four_bit_adder port map ('0', A(0), A(1), A(2), A(3), B(0), B(1), B(2), B(3), x1(0), x1(1), x1(2), x1(3), O1);
	U1 : four_bit_subtracter port map (A(0), A(1), A(2), A(3), B(0), B(1), B(2), B(3), x2(0), x2(1), x2(2), x2(3), O2);
	U2 : four_bit_subtracter port map (B(0), B(1), B(2), B(3), A(0), A(1), A(2), A(3), x3(0), x3(1), x3(2), x3(3), O3);
	
bank:
for i in 0 to 3 generate	
	U3 : AND_1 port map (A(i), B(i), x4(i));
	U4 : OR_1 port map (A(i), B(i), x5(i));
	U5 : XOR_1 port map (A(i), B(i), x6(i));
	U6 : NOT_1 port map (A(i), x7(i));
end generate;
	sh(0) <= '1';
	sh(1) <= '0';
	U7 : shifter port map(A(0), A(1), A(2), A(3), sh(1 downto 0), '0', x8(3 downto 0));
	U8 : MUX_16_4 port map(x1(3 downto 0), x2(3 downto 0), x3(3 downto 0), x4(3 downto 0), S(1 downto 0), T1(3 downto 0));
	U9 : MUX_16_4 port map(x5(3 downto 0), x6(3 downto 0), x7(3 downto 0), x8(3 downto 0), S(1 downto 0), T2(3 downto 0));

ank:
for i in 0 to 3 generate	
	U10 : MUX_2_1 port map(T1(i), T2(i), S(2), F(i));
end generate;
	
	U11 : NOT_1 port map(O2, O2not);
	U12 : NOT_1 port map(O3, O3not);
	U13 : MUX_4_1 port map(O1, O2not, O3not, '0', S(1 downto 0), I1);
	U14 : MUX_4_1 port map('0','0' ,'0','0', S(1 downto 0), I2);
	U15 : MUX_2_1 port map(I1, I2, S(2), O);

	
end FUNCTIONALITY;