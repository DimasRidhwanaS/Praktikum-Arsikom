library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux_2to1_1bit is
    port (
        IN1     : IN    STD_LOGIC;
        IN2     : IN    STD_LOGIC;
        s0      : IN    STD_LOGIC;
        OUTPUT  : OUT   STD_LOGIC 
    );
end entity mux_2to1_1bit;

architecture behavioral of mux_2to1_1bit is
begin
    process (all)
    begin
        case s0 is
            when '0' => OUTPUT <= IN1;
            when '1' => OUTPUT <= IN2;
        end case;
    end process;  
end architecture behavioral;