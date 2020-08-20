library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity BCD4_DN_CNTR is -- Entity declaration
port(   CLK : in std_logic; -- Clock input of the counter
        EN_DVD : in std_logic; -- Active low reset input of the clock divider
        RSTN : in std_logic; -- Active low reset input of the counter
        LDN : in std_logic; -- Active low load input of the counter
        DIG : in std_logic_vector(1 downto 0); -- Select signals to select a digit
        I : in std_logic_vector(3 downto 0); -- Value to be assigned to the counter
                                             -- when LDN is active
        COUT : inout std_logic; -- Carry out from the fourth digit
        S : inout std_logic_vector(1 downto 0); -- Output of the clock divider
        Q : inout std_logic_vector(3 downto 0));-- Output of the counter
        end BCD4_DN_CNTR;

architecture FUNCTIONALITY of BCD4_DN_CNTR is
 
    signal DIGN, SN : std_logic_vector(1 downto 0);
	 signal CLKL, QA, QB, QC, QD, QAN, QBN, QCN, QDN, CA, OA, OB, OC, OD : std_logic_vector(3 downto 0);
	 signal CLKN : std_logic;

begin    

    U1 : NOT_1 port map(DIG(1), DIGN(1));
    U2 : NOT_1 port map(DIG(0), DIGN(0));
 

    U3 : AND_1 port map(DIGN(1),DIGN(0),CLKL(0));
    bank_1 :
        for j in 0 to 3 generate 
        U4 : D_LATCH port map(I(j),CLKL(0),QA(j),QAN(j));
    end generate;
	 U20 : COUNTER_SYNC_1 port map(S(1),'1',RSTN,LDN,QA,CA(0),OA);

	 U5 : AND_1 port map(DIGN(1),DIG(0),CLKL(1));
    bank_2 :
        for j in 0 to 3 generate 
        U6 : D_LATCH port map(I(j),CLKL(1),QB(j),QBN(j));
    end generate;
	 U7 : COUNTER_SYNC_1 port map(S(1),CA(0),RSTN,LDN,QB,CA(1),OB);

	U8 : AND_1 port map(DIG(1),DIGN(0),CLKL(2));
    bank_3 :
        for j in 0 to 3 generate 
        U9 : D_LATCH port map(I(j),CLKL(2),QC(j),QCN(j));
    end generate;
	 U10 : COUNTER_SYNC_1 port map(S(1),CA(1),RSTN,LDN,QC,CA(2),OC);

   U11 : AND_1 port map(DIG(1),DIG(0),CLKL(3));
    bank_4 :
        for j in 0 to 3 generate 
        U12 : D_LATCH port map(I(j),CLKL(3),QD(j),QDN(j));
    end generate;
	 U13 : COUNTER_SYNC_1 port map(S(1),CA(2),RSTN,LDN,QD,CA(3),OD);
	 
    U14 : MUX_16_4 port map(OA, OB, OC, OD, S, Q);
	
	COUT<=CA(3);
	CLKN <= not CLK;

	 U15 : D_FF port map(SN(0) , CLK, '1', EN_DVD, S(0), SN(0));
	 U16 : D_FF port map(SN(1), SN(0), '1', EN_DVD, S(1), SN(1));
	 
end FUNCTIONALITY;