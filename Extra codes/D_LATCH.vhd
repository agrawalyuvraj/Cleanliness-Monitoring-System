library ieee;
use ieee.std_logic_1164.all;
use work.CS254.all;

entity d_latch is
port( D : in std_logic;
      clk : in std_logic;
      Q : buffer std_logic;
      QN : out std_logic);
end d_latch;

architecture FUNCTIONALITY of d_latch is

begin
    process(clk) begin
        if clk = '1' then
            Q <= D ;
        end if;
    end process;
    	QN <= not Q;
end FUNCTIONALITY;