library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity BCD4_DN_CNTR_1 is
	port(CLK : in std_logic;
		  EN_DVD : in std_logic;
		  RSTN : in std_logic;
		  LDN : in std_logic;
		  DIG : in std_logic_vector( 1 downto 0);
		  D : in std_logic_vector(3 downto 0);
		  COUT : inout std_logic;
		  S : inout std_logic_vector(7 downto 0);
		  Q : inout std_logic_vector(3 downto 0);
		  S11:out std_logic_vector(3 downto 0));
end BCD4_DN_CNTR_1;

architecture FUNCTIONALITY of BCD4_DN_CNTR_1 is
	component D_LATCH is
	port(D : in std_logic;
		  CLK : in std_logic;
		  Q : buffer std_logic;
		  QN : inout std_logic);
	end component;
	component D_FF is
		port(D : in std_logic;
			  CLK : in std_logic;
			  PREN : in std_logic;
			  CLRN : in std_logic;
			  Q : buffer std_logic;
			  QN : inout std_logic);
	end component;
	component CLK_DVD is
	port(CLK : in std_logic;
		  EN_DVD : in std_logic;
		  Q : inout std_logic_vector(7 downto 0));
	end component;
	component LATCH_4_BANK is
	port(L : in std_logic_vector(3 downto 0);
		  DIG : in std_logic_vector(1 downto 0);
		  A,B,C,D : inout std_logic_vector(3 downto 0));
	end component;
	component COUNTER_SYNC is
	port(CLK : in std_logic;
		  EN : in std_logic;
		  RSTN : in std_logic;
		  LDN : in std_logic;
		  D : in std_logic_vector(3 downto 0);
		  C : out std_logic;
		  Q : inout std_logic_vector(3 downto 0)
		  );
	end component;
	component MUX_16X4 is
	port(I0,I1,I2,I3 : in std_logic_vector(3 downto 0);
		  S : in std_logic_vector(1 downto 0);
		  O0 : out std_logic_vector(3 downto 0));
	end component;
	
	signal A1,B1,C1,D1,QA,QB,QC,QD : std_logic_vector(3 downto 0);
	signal CA,CB,CC,S0N,S1N: std_logic;
	
	begin
--	U0 : LATCH_4_BANK port map(D,DIG,A1,B1,C1,D1);
	U1 : CLK_DVD port map(CLK,EN_DVD,S);
	U2 : COUNTER_SYNC port map(S(7),'1',RSTN,LDN,A1,CA,QA);
	U3 : COUNTER_SYNC port map(S(7),CA,RSTN,LDN,B1,CB,QB);
	U4 : COUNTER_SYNC port map(S(7),CB,RSTN,LDN,C1,CC,QC);
	U5 : COUNTER_SYNC port map(S(7),CC,RSTN,LDN,D1,COUT,QD);
	--U6 : MUX_16X4 port map(QA,QB,QC,QD,S(4 DOWNTO 3),Q);
	U12:NOT_1 PORT MAP(S(3),S0N);
	U13:NOT_1 PORT MAP(S(4),S1N);
	U7 : OR_1 PORT MAP(S(3),S(4),S11(0));
	U8 : OR_1 PORT MAP(S0N,S(4),S11(1));
	U9 : OR_1 PORT MAP(S(3),S1N,S11(2));
	U10 : OR_1 PORT MAP(S0N,S1N,S11(3));
	
	
	
end FUNCTIONALITY;

	
