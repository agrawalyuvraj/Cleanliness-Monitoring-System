library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity XS3_ADD_SUB_LED is -- Entity declaration
port(A, B : in std_logic_vector(3 downto 0); -- Input XS3 numbers
A_SBAR : in std_logic; -- 1 for addition, 0 for subtraction
Y : out std_logic_vector(6 downto 0); -- Output SSD code
F : out std_logic); -- Invalid output indicator

end XS3_ADD_SUB_LED;

architecture FUNCTIONALITY of XS3_ADD_SUB_LED is

signal O0 : std_logic_vector(7 downto 0);
signal T0 : std_logic_vector(3 downto 0);

begin

	U1 : XS3_ADD_SUB port map (A(3 downto 0), B(3 downto 0), A_SBAR, O0(7 downto 0));
		T0(0) <= O0(3);
		T0(1) <= O0(2);
		T0(2) <= O0(1);
		T0(3) <= O0(0);
	U2 : BCD2SSD port map (T0(3 downto 0), Y(6 downto 0), F);
	
end FUNCTIONALITY;	