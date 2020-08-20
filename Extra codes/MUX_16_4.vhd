library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity MUX_16_4 is 
port(I0, I1, I2, I3 : in std_logic_vector(3 downto 0);
S : in std_logic_vector(1 downto 0);
O0 : out std_logic_vector(3 downto 0)); 
end MUX_16_4;

architecture FUNCTIONALITY of MUX_16_4 is



begin 
bank:
for i in 0 to 3 generate

   U0 : MUX_4_1 port map (I0(i), I1(i), I2(i), I3(i), S(1 downto 0), O0(i));
	
end generate;	
	
end FUNCTIONALITY;