
library ieee;
use ieee.std_logic_1164.all;

entity NAND_1 is		-- 
  port(I0, I1 : in std_logic;
		 O0 : out std_logic);
		 

end NAND_1;


architecture FUNCTIONALITY of NAND_1 is

component NOT_1 is		-- 
  port(I0 : in std_logic;
		 O0 : out std_logic);

end component;

component AND_1 is		-- 
  port(I0 : in std_logic;
		 I1 : in std_logic;
		 O0 : out std_logic);
		 

end component;

signal I0_AND_I1 : std_logic;

begin 

   U0 : AND_1 port map (I0, I1, I0_AND_I1);
	U1 : NOT_1 port map (I0 => I0_AND_I1, O0 => O0);
	
end FUNCTIONALITY;	