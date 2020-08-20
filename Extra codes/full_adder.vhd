
library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity full_adder is		-- 
  port(I0, I1, I2 : in std_logic;
		 O0, O1 : out std_logic);
		 

end full_adder;


architecture FUNCTIONALITY of full_adder is

signal I0xorI1 : std_logic;
signal I0andI1 : std_logic;
signal I0xorI1andI2 : std_logic;
signal sum : std_logic;
signal carry : std_logic;

begin 

   U0 : half_adder port map (I0, I1, I0xorI1, I0andI1);
	U1 : half_adder port map (I0xorI1, I2, O0, I0xorI1andI2);
	U2 : OR_1 port map (I0andI1, I0xorI1andI2, O1);	
	
end FUNCTIONALITY;	