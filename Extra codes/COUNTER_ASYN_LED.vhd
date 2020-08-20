library ieee;
use ieee.std_logic_1164.all;
use work.cs254.all;

entity COUNTER_ASYN_LED is -- Entity declaration
	port(CLK : in std_logic; -- Clock input of the counter
		RSTN : in std_logic; -- Active low reset input of the counter
		Q : inout std_logic_vector(3 downto 0); -- Output of the counter
		Y:OUT std_logic_vector (6 downto 0);
      F : out std_logic);
end COUNTER_ASYN_LED;

architecture FUNCTIONALITY of COUNTER_ASYN_LED is 

	signal A, B, Bnot, RST: std_logic;
	signal Qn, Ql: std_logic_vector(3 downto 0);
	
begin
	--Reset
	U0: OR_1 port map (Q(2), Q(1), A);
	U1: AND_1 port map (Q(3), A, B);
	U2: NOT_1 port map (B, Bnot);
	U3: AND_1 port map (Bnot, RSTN, RST);
	
	U4: D_FF port map (Qn(0), CLK, '1', RST, Q(0), Qn(0));
	U5: D_FF port map (Qn(1), Qn(0), '1', RST, Q(1), Qn(1));
	U6: D_FF port map (Qn(2), Qn(1), '1', RST, Q(2), Qn(2));
	U7: D_FF port map (Qn(3), Qn(2), '1', RST, Q(3), Qn(3));
	
	Ql(0) <= Q(3);
	Ql(1) <= Q(2);
	Ql(2) <= Q(1);
	Ql(3) <= Q(0);
	
	U8: BCD2SSD port map (Ql(3 downto 0), Y(6 downto 0), F);
	
end FUNCTIONALITY;