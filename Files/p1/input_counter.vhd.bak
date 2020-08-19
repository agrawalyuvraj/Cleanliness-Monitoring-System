library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.EE214.all;

entity input_counter is 
	port (	CLK : in std_logic;
			RSTN : in std_logic;
			inp1 : in std_logic;
			inp2 : in std_logic;
			A1 : inout std_logic_vector(3 downto 0);
			A2 : inout std_logic_vector(3 downto 0);
			Y1 : out std_logic_vector(6 downto 0);
			Y2 : out std_logic_vector(6 downto 0));
end input_counter;

architecture behaviour of input_counter is 

	TYPE STATE_TYPE is (S10,S11,S12,S13,S14,S15,S16,S17,S20,S21,S22,S23,S24,S25,S26,S27); 
	signal Q1,Q1PLUS,Q2,Q2PLUS: STATE_TYPE;
	signal clk_1 : integer range 0 to 2499999 :=0;
	

begin 
	process(Q1,Q2)
		begin 
			case Q1 is 
				when S10=>
					A1 <="0000";
					
				when S11=>
					A1 <="0001";
					
				when S12=>
					A1 <="0010";
					
				when S13=>
					A1 <="0011";

				when S14=>
					A1 <="0100";

				when S15=>
					A1 <="0101";
					
				when S16=>
					A1 <="0110";
					
				when S17=>
					A1 <="0111";
					
				when S20=>
					A1 <="0000";
					
				when S21=>
					A1 <="0001";
					
				when S22=>
					A1 <="0010";
					
				when S23=>
					A1 <="0011";

				when S24=>
					A1 <="0100";

				when S25=>
					A1 <="0101";
					
				when S26=>
					A1 <="0110";
					
				when S27=>
					A1 <="0111";
			end case;


			case Q2 is 
				when S10=>
					A2 <="0000";
					
				when S11=>
					A2 <="0001";
					
				when S12=>
					A2 <="0010";
					
				when S13=>
					A2 <="0011";

				when S14=>
					A2 <="0100";

				when S15=>
					A2 <="0101";
					
				when S16=>
					A2 <="0110";
					
				when S17=>
					A2 <="0111";
					
				when S20=>
					A2 <="0000";
					
				when S21=>
					A2 <="0001";
					
				when S22=>
					A2 <="0010";
					
				when S23=>
					A2 <="0011";

				when S24=>
					A2 <="0100";

				when S25=>
					A2 <="0101";
					
				when S26=>
					A2 <="0110";
					
				when S27=>
					A2 <="0111";
			end case;

	end process;

	process(clk, RSTN, inp1, inp2)
		begin 
			if(RSTN='0') then
				Q1<= S10;
				Q2<= S20;

			else
				if( CLK'event and CLK = '1' ) then 
					if (clk_1=2499999) then 
						clk_1<=0;
				

						if( inp1='1') then 
							
								if q1 = S10 then 
									q1plus <= s11;
									
								elsif q1 = S11 then
									q1plus <= s12;
								
								elsif q1 = S12 then
									q1plus <= s13;
								
								elsif q1 = S13 then
									q1plus <= s14;
							
								elsif q1 = S14 then
									q1plus <= s15;
								
								elsif q1 = S15 then
									q1plus <= s16;
								
								elsif q1 = S16 then
									q1plus <= s17;

								elsif q1 = S17 then
									q1plus <= s10;
								end if;
						
						else 
							q1plus<= q1;
						end if;

					   q1<=q1plus;	


						if( inp2='1') then 
							
								if q2 = S20 then 
									q2plus <= s21;
									
								elsif q2 = S21 then
									q2plus <= s22;
								
								elsif q2 = S22 then
									q2plus <= s23;
								
								elsif q2 = S23 then
									q2plus <= s24;
							
								elsif q2 = S24 then
									q2plus <= s25;
								
								elsif q2 = S25 then
									q2plus <= s26;
								
								elsif q2 = S26 then
									q2plus <= s27;

								elsif q2 = S27 then
									q2plus <= s20;
								end if;
						
					

						else 
							q2plus<= q2;
						end if;

						q2<=q2plus;	

					else 
						clk_1 <= clk_1 + 1 ;
					end if;
			end if;
		end if;
		
			
						
	end process;
	
	U1 : BCD2SSD port map(A1,Y1);
	U2 : BCD2SSD port map(A2,Y2);
end behaviour;