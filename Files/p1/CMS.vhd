library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use ieee.numeric_std.all;
use work.EE214.all;

entity CMS is
	port (CLK : in std_logic;
			RSTN : in std_logic;
			--Ports for LCD
			D : out std_logic_vector(7 downto 0);
			RS, RW, EN : out std_logic;
			--Ports for counter
			inp1 : in std_logic;
			inp2 : in std_logic;
			X1, X2 : inout std_logic_vector(3 downto 0);
			Y1 : out std_logic_vector(6 downto 0);
			Y2 : out std_logic_vector(6 downto 0)
			);
end CMS;

architecture behaviour of CMS is

	signal CLK1 : std_logic := '0';								-- 10Hz clock which needs to be derived
	signal CNT0 : integer range 0 to 2499999 := 0;			-- Internal counter to generate 10Hz from 50MHz

	--Variables for LCD
	type STATE_TYPE is (S0, S1, S2, S3, S4, S5, S6, IDLE);
	type ARR_TYPE4 is array (0 to 4) of std_logic_vector(7 downto 0);
	type ARR_TYPE2 is array (0 to 2) of std_logic_vector(7 downto 0);
	
	signal CNT_CMD : integer range 0 to 5;
	signal CNT_DATA : integer range 0 to 3;
	signal A2, A1, A0 : integer range 0 to 9 := 0;
	signal X, Y, Z : std_logic_vector(3 downto 0);
	constant LCD_CMD : ARR_TYPE4 := (X"38", X"01", X"0C", X"80", X"06");
	signal LCD_DATA : ARR_TYPE2 := (X"30", X"30", X"30");
	
	signal Q, QPLUS : STATE_TYPE;
	
	--Variables for COUNTER SSD
	signal RSTIN : std_logic ;
	signal COUNTER1 : integer range 0 to 7 := 0;
	signal COUNTER2 : integer range 0 to 7 := 0;
	
	
begin

process(CLK) begin											-- Process which is sensitive to CLK
		if rising_edge(CLK) then								-- to generate 10Hz CLK1
			if(CNT0 = 2499999) then
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
		
	when S3 =>
		if (CNT_DATA < 3) then
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
		
	when S6 =>
		QPLUS <= S0;
	
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
		Q <= S0; CNT_CMD <= 0; CNT_DATA <= 0; RSTIN <= '1';
	elsif (CLK1'event and CLK1 = '1') then
		Q <= QPLUS;
	
		if Q = S2 then
			CNT_CMD <= CNT_CMD + 1;
		end if;
		
		if Q = S5 then
			CNT_DATA <= CNT_DATA + 1;
		end if;
		
		if Q = S6 then	
			CNT_CMD <= 0;
			CNT_DATA <= 0;
			
			if(A2 < 9) then
				A2 <= A2 + 1;
			elsif(A2 = 9) then
				A2 <= 0;
				if(A1 < 9) then
					A1 <= A1 + 1;
				elsif(A1 = 9) then
					A1 <= 0;
					if(A0 < 9) then
						A0 <= A0 + 1;
					elsif(A0 = 9) then
						A0 <= 0;
					end if;
				end if;
			end if;
		end if;				
	end if;
	
end process;

process (CLK1) 
	begin
	X <= std_logic_vector(to_unsigned(A0, 4));
	Y <= std_logic_vector(to_unsigned(A1, 4));
	Z <= std_logic_vector(to_unsigned(A2, 4));
	LCD_DATA(2) <= ('0', '0', '1', '1', Z(3), Z(2), Z(1), Z(0));
	LCD_DATA(1) <= ('0', '0', '1', '1', Y(3), Y(2), Y(1), Y(0));
	LCD_DATA(0) <= ('0', '0', '1', '1', X(3), X(2), X(1), X(0));
end process;

process(RSTIN, inp1)
begin
	if(RSTIN = '1') then
		COUNTER1 <= 0;
	else	
		if(inp1'event and inp1 = '0') then
			COUNTER1 <= COUNTER1 + 1;
		end if;
	end if;	
end process;

process(RSTIN, inp2)
begin
	if(RSTIN = '1') then
		COUNTER2 <= 0;
	else	
		if(inp2'event and inp2 = '0') then
			COUNTER2 <= COUNTER2 + 1;
		end if;
		X2 <= std_logic_vector(to_unsigned(COUNTER2, 4));
	end if;	
end process;
	
U1 : BCD2SSD port map(X1,Y1);
U2 : BCD2SSD port map(X2,Y2); 

	
end behaviour;