library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use ieee.numeric_std.all;

entity LCD_FSM is
	port (CLK : in std_logic;
			RSTN : in std_logic;
			D : out std_logic_vector(7 downto 0);
			RS, RW, EN : out std_logic
			);
end LCD_FSM;			

architecture FUNCTIONALITY of LCD_FSM is


	signal CLK1 : std_logic := '0';								-- 10Hz clock which needs to be derived
	signal CNT0 : integer range 0 to 500 := 0;			-- Internal counter to generate 10Hz from 50MHz

	type STATE_TYPE is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, IDLE);
	type ARR_TYPE4 is array (0 to 4) of std_logic_vector(7 downto 0);
	type ARR_TYPE6 is array (0 to 6) of std_logic_vector(7 downto 0);
	
	signal Q, QPLUS : STATE_TYPE;
	signal CNT_CMD : integer range 0 to 5;
	signal CNT_DATA : integer range 0 to 7;
	signal CNT_DATA1 : integer range 0 to 5;

constant LCD_CMD : ARR_TYPE4 := (X"38", X"01", X"0E", X"80", X"06");
constant LCD_DATA : ARR_TYPE6 := (X"49", X"49", X"54", X"20", X"47", X"4F", X"41");
constant LCD_CMD1 : std_logic_vector(7 downto 0) := X"C0";
constant LCD_DATA1 : ARR_TYPE4 := (X"43", X"53", X"32", X"35", X"34");
constant LCD_CMD2 : std_logic_vector(7 downto 0) := X"1C";

begin

process(CLK) begin											-- Process which is sensitive to CLK
		if rising_edge(CLK) then								-- to generate 10Hz CLK1
			if(CNT0 = 500) then
				CNT0 <= 0;
				CLK1 <= not CLK1;
			else
				CNT0 <= CNT0 + 1;
			end if;
		end if;
	end process;

process(Q)
	
	begin
	
	case Q is
	
		-- Initialization of LCD display	
	
	when S0 => 
		if (CNT_CMD < 5) then
			QPLUS <= S1;
			D <= LCD_CMD(CNT_CMD); RS <= '0'; RW <= '0'; EN <='0';
		else
			QPLUS <= S3;
		end if;
		
	when S1 =>
		QPLUS <= S2;
		D <= LCD_CMD(CNT_CMD); RS <= '0'; RW <= '0'; EN <='1';
		
	when S2 =>
		QPLUS <= S0;
		D <= LCD_CMD(CNT_CMD); RS <= '0'; RW <= '0'; EN <='0';
				
		-- Output = IIT GOA		
		
	when S3 =>
		if (CNT_DATA < 7) then
			QPLUS <= S4;
			D <= LCD_DATA(CNT_DATA); RS <= '1'; RW <= '0'; EN <='0';
		else
			QPLUS <= S6;
		end if;
		
	when S4 =>
		QPLUS <= S5;
		D <= LCD_DATA(CNT_DATA); RS <= '1'; RW <= '0'; EN <='1';
		
	when S5 =>
		QPLUS <= S3;
		D <= LCD_DATA(CNT_DATA); RS <= '1'; RW <= '0'; EN <='0';
		
		-- Changing to line 2
	
	when S6 => 
			QPLUS <= S7;
			D <= LCD_CMD1;
			RS <= '0'; 
			RW <= '0'; 
			EN <='0';

		
	when S7 =>
		QPLUS <= S8;
		D <= LCD_CMD1; RS <= '0'; RW <= '0'; EN <='1';
		
	when S8 =>
		QPLUS <= S9;
		D <= LCD_CMD1; RS <= '0'; RW <= '0'; EN <='0';
	
	-- Output = CS214
		
	when S9 =>	
		if (CNT_DATA1 < 5) then
			QPLUS <= S10;
			D <= LCD_DATA1(CNT_DATA1); RS <= '1'; RW <= '0'; EN <='0';
		else
			QPLUS <= S12;
		end if;	
		
	when S10 =>
		QPLUS <= S11;
		D <= LCD_DATA1(CNT_DATA1); RS <= '1'; RW <= '0'; EN <='1';
	
	when S11 =>
		QPLUS <= S9;
		D <= LCD_DATA1(CNT_DATA1); RS <= '1'; RW <= '0'; EN <='0';
		
		-- Adding scrolling function
	
	when S12 => 
			QPLUS <= S13;
			D <= LCD_CMD2;
			RS <= '0'; 
			RW <= '0'; 
			EN <='0';

		
	when S13 =>
		QPLUS <= S14;
		D <= LCD_CMD2; RS <= '0'; RW <= '0'; EN <='1';
		
	when S14 =>
		QPLUS <= S12;
		D <= LCD_CMD2; RS <= '0'; RW <= '0'; EN <='0';		
	
	when IDLE =>
		QPLUS <= IDLE;
		D <= X"00"; RS <= '0'; RW <= '0'; EN <='0';
		
	when others =>
		QPLUS <= S0;
		D <= X"00"; RS <= '0'; RW <= '0'; EN <='0';

	end case;
end process;

process(RSTN, CLK1)-- ­­ Process for reset and state change

	begin

	if RSTN = '0' then
		Q <= S0; CNT_CMD <= 0; CNT_DATA <= 0; CNT_DATA1 <= 0;
	elsif (CLK1'event and CLK1 = '1') then
		Q <= QPLUS;
	
		if Q = S2 then
			CNT_CMD <= CNT_CMD + 1;
		end if;
		
		if Q = S5 then
			CNT_DATA <= CNT_DATA + 1;
		end if;
		
		if Q = S11 then
			CNT_DATA1 <= CNT_DATA1 + 1;
		end if;
	
	end if;
	
end process;
end FUNCTIONALITY;