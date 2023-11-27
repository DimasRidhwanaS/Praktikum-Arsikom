library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_2to1_32bit is
    port (
        IN1     : IN    STD_LOGIC_VECTOR (31 DOWNTO 0);
        IN2     : IN    STD_LOGIC_VECTOR (31 DOWNTO 0);
        s0      : IN    STD_LOGIC;
        OUTPUT  : OUT   STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
end entity mux_2to1_32bit;

architecture behavioral of mux_2to1_32bit is
begin
    process (IN1, IN2, s0)
    begin       
        if s0 = '0' then
            OUTPUT <= IN1;
        else  
            OUTPUT <= IN2;
        end if;
    end process;
end architecture behavioral;

