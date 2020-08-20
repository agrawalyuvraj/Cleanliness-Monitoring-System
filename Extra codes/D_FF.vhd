library ieee;
use ieee.std_logic_1164.all;
use work.cs254.all;

entity D_FF is -- Entity declaration
	port(D : in std_logic; -- Data input of the D flipflop
		CLK : in std_logic; -- Clock input of the D flipflop
		PREN : in std_logic; -- Preset input of the D flipflop
		CLRN : in std_logic; -- Clear input of the D flipflop
		Q : buffer std_logic; -- Q output of the D flipflop
		QN : inout std_logic); -- Q_bar output of the D flipflop
end D_FF;

architecture BEHAVE of D_FF is

begin
	process(CLK, PREN, CLRN)
	begin
		if CLRN = '0' then
			Q <= '0';
		elsif PREN = '0' then
			Q <=	'1';
		elsif CLK' event and CLK = '1' then
			Q <= D;
		end if;
	end process;

		QN <= not Q;
		
end BEHAVE;		