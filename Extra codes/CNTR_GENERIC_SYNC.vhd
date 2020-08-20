-- VHDL program for a one bit up/down counter
-- Latest version completed on 18/02/2018 by Nandakumar

library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use work.CS254.all;		-- Use EE214_CS254 package from the user defined library work

entity CNTR_GENERIC_SYNC is				-- Entity declaration
	port(	CLK : in std_logic;				-- Clock input of the counter
			EN : in std_logic;				-- Enable input of the counter
			UP_DNN : in std_logic;			-- Up/downn input of the counter
			LDN : in std_logic;				-- Active low load input of the counter
			D : in std_logic;					-- Value to be assigned to the counter when LDN is active
			C : out std_logic;				-- Carry out of the counter
			Q : inout std_logic);			-- Output of the counter
end CNTR_GENERIC_SYNC;

architecture STRUCTURE of CNTR_GENERIC_SYNC is	-- Architecture description of the counter

signal SIG0, SIG1, SIG2, SIG_D, QN : std_logic;

begin															-- Instantiation of various gates

	U0 : D_FF port map(SIG_D, CLK, '1', '1', Q, QN);
	U2 : XOR_1 port map(EN, Q, SIG0);
	U3 : MUX_2_1 port map(D, SIG0, LDN, SIG_D);
	U4 : NOT_1 port map(UP_DNN, SIG1);
	U5 : XOR_1 port map(SIG1, Q, SIG2);
	U6 : AND_1 port map(EN, SIG2, C);
	
end STRUCTURE;