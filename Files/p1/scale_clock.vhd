library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity scale_clock is
  port (
    clk_10Mhz : in  std_logic;
    rst       : in  std_logic;
    clk_10Hz   : out std_logic);
end scale_clock;

architecture Behavioral of scale_clock is

  signal prescaler : unsigned(23 downto 0);
  signal clk_10Hz_i : std_logic;
begin

  gen_clk : process (clk_10Mhz, rst)
  begin  
    if rst = '1' then
      clk_10Hz_i   <= '0';
      prescaler   <= (others => '0');
		
    elsif rising_edge(clk_10Mhz) then   -- rising clock edge
      if prescaler = X"7A120" then     -- 500 000 in hex
        prescaler   <= (others => '0');
        clk_10Hz_i   <= not clk_10Hz_i;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_10Hz <= clk_10Hz_i;

end Behavioral;