library ieee;
use ieee.std_logic_1164.all;
--use work.cs254.all;

entity TONE_GEN is
port(CLK, RSTN: in std_logic;
	  TONE_OUT: out std_logic);
end TONE_GEN;

architecture FUNCTIONALITY of TONE_GEN is

signal SA, RE, GA, MA, PA, DA, NI, SA1 : std_logic := '0';

begin process(clk)
variable COUNT_SA : integer range 0 to 21 := 0;
variable COUNT_RE : integer range 0 to 19 := 0;
variable COUNT_GA : integer range 0 to 17 := 0;
variable COUNT_MA : integer range 0 to 16 := 0;
variable COUNT_PA : integer range 0 to 14 := 0;
variable COUNT_DA : integer range 0 to 13 := 0;
variable COUNT_NI : integer range 0 to 11 := 0;
variable COUNT_SA1 : integer range 0 to 10 := 0;

variable TONE_TIME : integer range 0 to 5000 := 0;
variable COUNTER_MASTER : integer range 0 to 7 := 0;
begin

	if(RSTN = '0') then
		COUNT_SA := 0;
		COUNT_RE := 0;
		COUNT_GA := 0;
		COUNT_MA := 0;
		COUNT_PA := 0;
		COUNT_DA := 0;
		COUNT_NI := 0;
		COUNT_SA1 := 0;
	elsif (CLK'event and CLK = '0') then
		if (COUNT_SA = 21) then -- 240 Hz
			COUNT_SA := 0;
			SA <= not SA;
		else
			COUNT_SA := COUNT_SA + 1;
		end if;

		if (COUNT_RE = 19) then -- 270 Hz
			COUNT_RE := 0;
			RE <= not RE;
		else
			COUNT_RE := COUNT_RE + 1;
		end if;
	
		if (COUNT_GA = 17) then -- 300 Hz
			COUNT_GA := 0;
			GA <= not GA;
		else
			COUNT_GA := COUNT_GA + 1;
		end if;
	
		if (COUNT_MA = 16) then -- 320 Hz
			COUNT_MA := 0;
			MA <= not MA;
		else
			COUNT_MA := COUNT_MA + 1;
		end if;

		if (COUNT_PA = 14) then -- 360 Hz
			COUNT_PA	:= 0;
			PA <= not PA;
		else
			COUNT_PA := COUNT_PA + 1;
		end if;

		if (COUNT_DA = 13) then -- 400 Hz
			COUNT_DA	:= 0;
			DA <= not DA;
		else
			COUNT_DA := COUNT_DA + 1;
		end if;
	
		if (COUNT_NI = 11) then -- 450 Hz
			COUNT_NI	:= 0;
			NI <= not NI;
		else
			COUNT_NI := COUNT_NI + 1;
		end if;
	
		if (COUNT_SA1 = 10) then -- 480 Hz
			COUNT_SA1	:= 0;
			SA1 <= not SA1;
		else
			COUNT_SA1 := COUNT_SA1 + 1;
		end if;
	
	

	
		if (TONE_TIME <= 5000) then --for 5000
			if (COUNTER_MASTER = 0) then
				TONE_OUT <= SA;
			elsif (COUNTER_MASTER = 1) then
				TONE_OUT <= RE;
			elsif (COUNTER_MASTER = 2) then
				TONE_OUT <= GA;
			elsif (COUNTER_MASTER = 3) then
				TONE_OUT <= MA;
			elsif (COUNTER_MASTER = 4) then
				TONE_OUT <= PA;
			elsif (COUNTER_MASTER = 5) then
				TONE_OUT <= DA;
			elsif (COUNTER_MASTER = 6) then
				TONE_OUT <= NI;
			elsif (COUNTER_MASTER = 7) then
				TONE_OUT <= SA1;
			end if;	
		end if;
		
		if (TONE_TIME = 5000) then
			COUNTER_MASTER := COUNTER_MASTER + 1;
			TONE_TIME := 0;
			else
			TONE_TIME := TONE_TIME + 1;	
		end if;

	end if;
	
end process;

end FUNCTIONALITY;