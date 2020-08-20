library ieee;
use ieee.std_logic_1164.all;
use work.cs254.all;

entity SYN_BIT_1 is
port (CLK : in std_logic; -- Clock input of the counter
		EN : in std_logic; -- Enable input of the counter
		RSTN : in std_logic; -- Active low reset input of the counter
		B: in std_logic;
		LDN : in std_logic; -- Active low load input of the counter
		D : in std_logic; -- Value to be assigned to the counter
		C : out std_logic; -- Carry output from the counter
		Q : inout std_logic); -- Output of the counter
end SYN_BIT_1;
 
architecture functionality of SYN_BIT_1 is 
signal O1,L, R, QN, C1: std_logic;
begin 
U0: XOR_1 port map (EN, Q, O1);
U1: MUX_2_1 port map (D, O1, LDN, L);
U2: MUX_2_1 port map (B, L, RSTN, R);
U3: D_FF port map (R, CLK, '1', '1', Q, QN);
U4: MUX_2_1 port map (Q, QN, '1', C1);
U5: AND_1 port map (EN, C1, C);
end functionality;