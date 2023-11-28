library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_2to1_32bit is
  port (
    D1 : in std_logic_vector(31 downto 0); -- Data Input 1
    D2 : in std_logic_vector(31 downto 0); -- Data Input 2
    Y  : out std_logic_vector(31 downto 0); -- Selected Data
    S  : in std_logic
  );
end entity mux_2to1_32bit;

architecture Behavioral of mux_2to1_32bit is
begin
  process(S, D1, D2)
  begin
    if S = '0' then
      Y <= D1; -- Select Data Input 1
    else
      Y <= D2; -- Select Data Input 2
    end if;
  end process;
end architecture Behavioral;