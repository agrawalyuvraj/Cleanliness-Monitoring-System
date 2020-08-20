library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use ieee.numeric_std.all;

entity LED_INDICATOR is -- Entity declaration
port(CLK : in std_logic; -- Clock input of the FSM
RSTN : in std_logic; -- Active low reset input
L_TURN : in std_logic; -- Active high input for left turn
R_TURN : in std_logic; -- Active high input for right turn
HAZ : in std_logic; -- Active hifh input for hazard indication
LA, LB, LC, LD : out std_logic; -- Indicators for left turn
RA, RB, RC, RD : out std_logic); -- Indicators for right turn
end LED_INDICATOR;

architecture FUNCTIONALITY of LED_INDICATOR is


	signal CLK1 : std_logic := '0';								-- 3 Hz clock which needs to be derived
	signal CNT0 : integer range 0 to 1667 := 0;			-- Internal counter to generate 3 Hz from 10KHz

	type STATE_TYPE is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal Q, QPLUS : STATE_TYPE;

begin
	process(CLK) 
	begin											-- Process which is sensitive to CLK
		if rising_edge(CLK) then								-- to generate 10Hz CLK1
			if(CNT0 = 1667) then
				CNT0 <= 0;
				CLK1 <= not CLK1;
			else
				CNT0 <= CNT0 + 1;
			end if;
		end if;
	end process;
	
process(Q, RSTN)
	
	begin
	
	case Q is
	
	when S0 => 
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
	   end if;
		if(HAZ = '1') then
			QPLUS <= S7;
		elsif(R_TURN = '1' and L_TURN = '0') then
			QPLUS <= S4;
		elsif(R_TURN = '0' and L_TURN = '1') then
			QPLUS <= S1;
		elsif(R_TURN = '1' and L_TURN = '1') then 
			QPLUS <= S7;
		else 
			QPLUS <= S0;
		end if;	
		
	when S1 =>
		LA <= '1'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
		end if;
		if(HAZ = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '0') then
			QPLUS <= S0;
		elsif(R_TURN = '0' and L_TURN = '1') then
			QPLUS <= S2;
		elsif(R_TURN = '1' and L_TURN = '1') then 
			QPLUS <= S0;
		else 
			QPLUS <= S0;
		end if;
		
	when S2 =>
		LA <= '0'; LB <= '1'; LC <= '0'; LD <= '1';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
		end if;
		if(HAZ = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '0') then
			QPLUS <= S0;
		elsif(R_TURN = '0' and L_TURN = '1') then
			QPLUS <= S3;
		elsif(R_TURN = '1' and L_TURN = '1') then 
			QPLUS <= S0;
		else 
			QPLUS <= S0;
		end if;
		
	when S3 =>
		LA <= '0'; LB <= '0'; LC <= '1'; LD <= '1';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
		end if;
		if(HAZ = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '0') then
			QPLUS <= S0;
		elsif(R_TURN = '0' and L_TURN = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '1') then 
			QPLUS <= S0;
		else 
			QPLUS <= S0;
		end if;
		
	when S4 =>
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '1'; RB <= '0'; RC <= '0'; RD <= '0';
		if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
		end if;
		if(HAZ = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '0') then
			QPLUS <= S5;
		elsif(R_TURN = '0' and L_TURN = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '1') then 
			QPLUS <= S0;
		else 
			QPLUS <= S0;
		end if;
		
	when S5 =>
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '1'; RC <= '0'; RD <= '1';
		if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
		end if;
		if(HAZ = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '0') then
			QPLUS <= S6;
		elsif(R_TURN = '0' and L_TURN = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '1') then 
			QPLUS <= S0;
		else 
			QPLUS <= S0;
		end if;
		
	when S6 => 
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '1'; RD <= '1';
		if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
		end if;
		if(HAZ = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '0') then
			QPLUS <= S0;
		elsif(R_TURN = '0' and L_TURN = '1') then
			QPLUS <= S0;
		elsif(R_TURN = '1' and L_TURN = '1') then 
			QPLUS <= S0;
		else 
			QPLUS <= S0;
		end if;
			
	when S7 =>
	if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
	end if;
		LA <= '1'; LB <= '1'; LC <= '1'; LD <= '1';
		RA <= '1'; RB <= '1'; RC <= '1'; RD <= '1';
		QPLUS <= S0;
		
	when others =>
	if(RSTN = '0') then
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';
		QPLUS <= S0;
	end if;
		QPLUS <= S0;
		LA <= '0'; LB <= '0'; LC <= '0'; LD <= '0';
		RA <= '0'; RB <= '0'; RC <= '0'; RD <= '0';

	end case;
end process;	

process(CLK1)

	begin
	
	if (CLK1'event and CLK1 = '1') then
		Q <= QPLUS;

	end if;
	
end process;
end FUNCTIONALITY;