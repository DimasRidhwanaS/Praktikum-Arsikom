library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_4to1_32bit is
  port (
    D1 : in std_logic_vector(31 downto 0); -- Data Input 1
    D2 : in std_logic_vector(31 downto 0); -- Data Input 2
    D3 : in std_logic_vector(31 downto 0); -- Data Input 3
    D4 : in std_logic_vector(31 downto 0); -- Data Input 4
    Y  : out std_logic_vector(31 downto 0); -- Selected Data
    S  : in std_logic_vector(1 downto 0)     -- 2-bit Selector
  );
end entity mux_4to1_32bit;

architecture Behavioral of mux_4to1_32bit is
begin
  process(S, D1, D2, D3, D4)
  begin
    case S is
      when "00" =>
        Y <= D1;  -- Select Data Input 1
      when "01" =>
        Y <= D2;  -- Select Data Input 2
      when "10" =>
        Y <= D3;  -- Select Data Input 3
      when others =>
        Y <= D4;  -- Select Data Input 4
    end case;
  end process;
end architecture Behavioral;
