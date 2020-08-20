library ieee;
use ieee.std_logic_1164.all;

package CS254 is

component NOT_1 is		-- 
  port(I0 : in std_logic;
		 O0 : out std_logic);

end component;

component AND_1 is		-- 
  port(I0 : in std_logic;
		 I1 : in std_logic;
		 O0 : out std_logic);
		 

end component;

component AND_4 is		-- 
  port(I0 : in std_logic;
		 I1 : in std_logic;
		 I2 : in std_logic;
		 I3 : in std_logic;
		 O0 : out std_logic);
		 

end component;

component OR_1 is		-- 
  port(I0 : in std_logic;
		 I1 : in std_logic;
		 O0 : out std_logic);
		 

end component;

component OR_4 is		-- 
  port(I0 : in std_logic;
		I1 : in std_logic;
		I2 : in std_logic;
		I3 : in std_logic;
		 O0 : out std_logic);
		 

end component;

component NAND_2 is		-- 
  port(I0, I1 : in std_logic;
		 O0 : out std_logic);
		 

end component;

component XOR_1 is		-- 
  port(I0, I1 : in std_logic;
		 O0 : out std_logic);
		 

end component;

component half_adder is		-- 
  port(I0, I1 : in std_logic;
		 O0, O1 : out std_logic);
		 

end component;

component full_adder is		-- 
  port(I0, I1, I2 : in std_logic;
		 O0, O1 : out std_logic);
		 

end component full_adder;

component four_bit_adder is		-- 
  port(Cin, A0, A1, A2, A3, B0, B1, B2, B3 : in std_logic;
		 S0, S1, S2, S3, Cout : out std_logic);
end component;

component four_bit_subtracter is		-- 
  port(A0, A1, A2, A3, B0, B1, B2, B3 : in std_logic;
		 S0, S1, S2, S3, Cout : out std_logic);
		 

end component;

component FOUR_BIT_ADD_SUBT is
port(A,B : in std_logic_vector(3 downto 0);
	  SEL : in std_logic;
	  S : out std_logic_vector(3 downto 0);
	  Cout : OUT std_logic);
end  component;

component MUX_2_1 is		-- 
  port(I0, I1, S0 : in std_logic;
		 O0 : out std_logic);
		 

end component;

component MUX_4_1 is 
port(I0, I1, I2, I3 : in std_logic; 
S : in std_logic_vector(1 downto 0);
O0 : out std_logic); 
end component;

component MUX_16_4 is 
port(I0, I1, I2, I3 : in std_logic_vector(3 downto 0);
S : in std_logic_vector(1 downto 0);
O0 : out std_logic_vector(3 downto 0)); 
end component;

component shifter is 
port(I0, I1, I2, I3 : in std_logic;
S : in std_logic_vector(1 downto 0);
D : in std_logic;
O0 : out std_logic_vector(3 downto 0)); 
end component;

component BCD2SSD is 
port(X : in std_logic_vector(3 downto 0);
Y : out std_logic_vector(6 downto 0);
F : out std_logic);
end component;

component XS3_ADD_SUB is -- Entity declaration
port(A, B : in std_logic_vector(3 downto 0); -- Input XS3 numbers
A_SBAR : in std_logic; -- 1 for addition, 0 for subtraction
Y : out std_logic_vector(7 downto 0)); -- Output BCD number
end component;

component D_FF is -- Entity declaration
	port(D : in std_logic; -- Data input of the D flipflop
		CLK : in std_logic; -- Clock input of the D flipflop
		PREN : in std_logic; -- Preset input of the D flipflop
		CLRN : in std_logic; -- Clear input of the D flipflop
		Q : buffer std_logic; -- Q output of the D flipflop
		QN : inout std_logic); -- Q_bar output of the D flipflop
end component;

component SYN_BIT_1 is
port (CLK : in std_logic; -- Clock input of the counter
		EN : in std_logic; -- Enable input of the counter
		RSTN : in std_logic; -- Active low reset input of the counter
		B: in std_logic;
		LDN : in std_logic; -- Active low load input of the counter
		D : in std_logic; -- Value to be assigned to the counter
		C : out std_logic; -- Carry output from the counter
		Q : inout std_logic); -- Output of the counter
end component;

component d_latch is
port( D : in std_logic;
      clk : in std_logic;
      Q : buffer std_logic;
      QN : out std_logic);
end component;

component COUNTER_SYNC_1 is -- Entity declaration
port (CLK : in std_logic; -- Clock input of the counter
		EN : in std_logic; -- Enable input of the counter
		RSTN : in std_logic; -- Active low reset input of the counter
		LDN : in std_logic; -- Active low load input of the counter
		D : in std_logic_vector(3 downto 0); -- Value to be assigned to the counter
		C : out std_logic; -- Carry output from the counter
		Q : inout std_logic_vector(3 downto 0)); -- Output of the counter
end component;

component CLK_DVD is
	port(CLK : in std_logic;
		  EN_DVD : in std_logic;
		  Q : inout std_logic_vector(7 downto 0));
end component;
component CNTR_GENERIC_SYNC is				-- Entity declaration
	port(	CLK : in std_logic;				-- Clock input of the counter
			EN : in std_logic;				-- Enable input of the counter
			UP_DNN : in std_logic;			-- Up/downn input of the counter
			LDN : in std_logic;				-- Active low load input of the counter
			D : in std_logic;					-- Value to be assigned to the counter when LDN is active
			C : out std_logic;				-- Carry out of the counter
			Q : inout std_logic);			-- Output of the counter
end component;

end CS254;