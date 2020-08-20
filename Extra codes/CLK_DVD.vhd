library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity CLK_DVD is
	port(CLK : in std_logic;
		  EN_DVD : in std_logic;
		  Q : inout std_logic_vector(7 downto 0));
end CLK_DVD;

architecture FUNCTIONALITY of CLK_DVD is
	component D_FF is
		port(D : in std_logic;
			  CLK : in std_logic;
			  PREN : in std_logic;
			  CLRN : in std_logic;
			  Q : buffer std_logic;
			  QN : inout std_logic);
	end component;
	
	signal QN : std_logic_vector(7 downto 0);
	
	begin
		U0 : D_FF port map(QN(0),CLK,'1',EN_DVD,Q(0),QN(0));
		U1 : D_FF port map(QN(1),QN(0),'1',EN_DVD,Q(1),QN(1));
		U2 : D_FF port map(QN(2),QN(1),'1',EN_DVD,Q(2),QN(2));
		U3 : D_FF port map(QN(3),QN(2),'1',EN_DVD,Q(3),QN(3));
		U4 : D_FF port map(QN(4),QN(3),'1',EN_DVD,Q(4),QN(4));
		U5 : D_FF port map(QN(5),QN(4),'1',EN_DVD,Q(5),QN(5));
		U6 : D_FF port map(QN(6),QN(5),'1',EN_DVD,Q(6),QN(6));
		U7 : D_FF port map(QN(7),QN(6),'1',EN_DVD,Q(7),QN(7));
end FUNCTIONALITY;