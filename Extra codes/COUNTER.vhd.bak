-- VHDL program for a three bit COUNTER which updates every 1s
-- Latest version completed on 28/10/2019 by Nandakumar

library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use ieee.numeric_std.all;		-- Use numeric_std package for type conversion

entity COUNTER is													-- Entity declaration
	port(CLK : in std_logic;									-- Global clock, 50MHz
		  CNT_OUT : out std_logic_vector(2 downto 0));	-- Three  bit count output
end COUNTER;

architecture FUNCTIONALITY of COUNTER is					-- Architecture description of the D flipflop

signal CLK1 : std_logic := '0';								-- 1Hz clock which needs to be derived
signal CNT0 : integer range 0 to 24999999 := 0;			-- Internal counter to generate 1Hz from 50MHz
signal CNT1 : integer range 0 to 7 := 0;					-- Internal counter which counts 0 to 7
signal CNT2 : std_logic_vector(2 downto 0) := "000";	-- Internal three bit count

begin
	
	process(CLK) begin											-- Process which is sensitive to CLK
		if rising_edge(CLK) then								-- to generate 1Hz CLK1
			if(CNT0 = 24999999) then
				CNT0 <= 0;
				CLK1 <= not CLK1;
			else
				CNT0 <= CNT0 + 1;
			end if;
		end if;
	end process;
	
	process(CLK1) begin											-- Process which is sensitive to CLK1
		if rising_edge(CLK1) then								-- to count 0 to 7 (integer)
			if(CNT1 = 7) then
				CNT1 <= 0;
			else
				CNT1 <= CNT1 + 1;
			end if;
		end if;
	end process;
	
	CNT2 <= std_logic_vector(to_unsigned(CNT1, CNT_OUT'length));
																		-- Type conversion from integer to std_logic_vector
	CNT_OUT(0) <= not CNT2(0);									-- Final output from internal count
	CNT_OUT(1) <= not CNT2(1);
	CNT_OUT(2) <= not CNT2(2);
	
end FUNCTIONALITY;	