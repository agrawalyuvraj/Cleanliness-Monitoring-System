library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity XS3_ADD_SUB is -- Entity declaration
port(A, B : in std_logic_vector(3 downto 0); -- Input XS3 numbers
A_SBAR : in std_logic; -- 1 for addition, 0 for subtraction
Y : out std_logic_vector(7 downto 0)); -- Output BCD number

end XS3_ADD_SUB;

architecture FUNCTIONALITY of XS3_ADD_SUB is


signal A_SBARnot : std_logic;
signal O1, O2, S1, T1 : std_logic_vector(3 downto 0);
signal C1, C2, CS : std_logic;

begin 
	
	T1(0) <= '0';
	T1(1) <= '1';
	T1(2) <= '1';
	T1(3) <= '0';
	
	U1 : NOT_1 port map (A_SBAR, A_SBARnot);
	U2 : four_bit_add_subt port map (A(3 downto 0), B(3 downto 0), A_SBARnot, O1(3 downto 0), C1);
	U3 : four_bit_add_subt port map (O1(3 downto 0), T1(3 downto 0),'1', O2(3 downto 0), C2);

bank1:	
for i in 0 to 3 generate	
	U4 : MUX_2_1 port map(O2(i), O1(i), C1, S1(i));
end generate;

bank2:	
for i in 0 to 3 generate	
	U5 : MUX_2_1 port map(S1(i), O1(i), A_SBARnot, Y(i));
end generate;

	U6 : MUX_2_1 port map('0', '1', C1, CS);
	U7 : MUX_2_1 port map(CS, '0', A_SBARnot, Y(4));
	
	Y(5) <='0';
	Y(6) <='0';
	Y(7) <='0';
	
end FUNCTIONALITY;	