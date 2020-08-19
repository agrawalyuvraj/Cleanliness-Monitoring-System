LIBRARY IEEE;
USE IEEE.STD_Logic_1164.ALL;
package EE214 is
component NOT_1 is
port ( I1: in std_logic;
		 O1: out std_logic);
end component;
component AND_2 is
port(I1,I2: in std_logic;
      O1: out std_logic);
end component;
component OR_2 is
port(I1,I2: in std_logic;
      O1: out std_logic);
end component;

component BCD2SSD is
port(X:in std_logic_vector(3 downto 0);
     Y:out std_logic_vector(6 downto 0)
	  );
end component;

component input_counter is 
	port (	CLK : in std_logic;
			RSTN : in std_logic;
			inp1 : in std_logic;
			inp2 : in std_logic;
			A1 : inout std_logic_vector(3 downto 0);
			A2 : inout std_logic_vector(3 downto 0);
			Y1 : out std_logic_vector(6 downto 0);
			Y2 : out std_logic_vector(6 downto 0));
end component;

end EE214;
