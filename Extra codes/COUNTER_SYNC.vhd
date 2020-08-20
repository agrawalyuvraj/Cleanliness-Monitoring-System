-- VHDL program for a synchronous BCD down counter
-- Latest version completed on 18/02/2018 by Nandakumar

library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use work.CS254.all;		-- Use EE214_CS254 package from the user defined library work

entity COUNTER_SYNC is										-- Entity declaration
	port(	CLK : in std_logic;								-- Clock input of the counter
			EN : in std_logic;								-- Enable input of the counter
			RSTN : in std_logic;								-- Active low reset input of the counter
			LDN : in std_logic;								-- Active low load input of the counter
			D : in std_logic_vector(3 downto 0);		-- Value to be assigned to the counter when LDN is active
			C : out std_logic;								-- Carry output from the counter
			Q : inout std_logic_vector(3 downto 0));	-- Output of the counter
end COUNTER_SYNC;

architecture STRUCTURE of COUNTER_SYNC is		-- Architecture description of the counter

signal SIG_C : std_logic_vector(4 downto 0) := "00000";
signal SIG_R : std_logic_vector(3 downto 0) := "1001";
signal SIG_D : std_logic_vector(3 downto 0) := "0000";
signal LD_RST_N : std_logic_vector(1 downto 0);
signal SIG : std_logic_vector(7 downto 0);
signal RSTN_INT, EN_AND_LDN : std_logic;

begin														-- Instantiation of various gates
	
	SIG_C(0) <= EN_AND_LDN;
	C <= SIG_C(4);
	
MUX_2X1_bank:
	for i in 0 to 3 generate
		U0 : MUX_2_1 port map(SIG_R(i), D(i), LD_RST_N(0), SIG_D(i));
	end generate;
	
	U1 : OR_1 port map(Q(3), Q(2), SIG(0));
	U2 : OR_1 port map(Q(1), Q(0), SIG(1));
	U3 : OR_1 port map(SIG(0), SIG(1), SIG(2));
	U4 : NOT_1 port map(SIG(2), SIG(3));
	U5 : OR_1 port map(Q(2), Q(1), SIG(4));
	U6 : AND_1 port map(Q(3), SIG(4), SIG(5));
	U7 : OR_1 port map(SIG(3), SIG(5), SIG(6));
	U8 : AND_1 port map(SIG(6), EN, SIG(7));
	U9 : NOT_1 port map(SIG(7), RSTN_INT);
		
	U10 : AND_1 port map(RSTN, RSTN_INT, LD_RST_N(0));
	U11 : AND_1 port map(LDN, LD_RST_N(0), LD_RST_N(1));
	
CNTR_GENERIC_SYNC_bank:
	for i in 0 to 3 generate
		U12 : CNTR_GENERIC_SYNC port map(CLK, SIG_C(i), '0', LD_RST_N(1), SIG_D(i), SIG_C(i+1), Q(i));
	end generate;
	
	U13 : AND_1 port map(EN, LDN, EN_AND_LDN);
	
end STRUCTURE;