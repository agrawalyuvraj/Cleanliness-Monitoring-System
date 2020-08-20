library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity MUX_4_1 is 
port(I0, I1, I2, I3 : in std_logic; 
S : in std_logic_vector(1 downto 0);
O0 : out std_logic); 
end entity;

architecture FUNCTIONALITY of MUX_4_1 is

signal MUX_1 : std_logic;
signal MUX_2 : std_logic;

begin 

   U0 : MUX_2_1 port map (I0, I1, S(0), MUX_1);
	U1 : MUX_2_1 port map (I2, I3, S(0), MUX_2);
	U2 : MUX_2_1 port map (MUX_1, MUX_2, S(1), O0);
	
end FUNCTIONALITY;