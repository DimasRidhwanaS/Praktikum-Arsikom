library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity d_flipflop is
    port (
        D : IN STD_LOGIC_VECTOR (30 downto 0) ;
        Clk : IN STD_LOGIC ;
        Q : OUT STD_LOGIC_VECTOR (30 downto 0)
    );
end entity d_flipflop;

architecture behavioral of d_flipflop is
begin
    process (all)
    begin
        if RISING_EDGE(Clk) THEN
            Q <= D;
        end if;
    end process;    
end architecture behavioral;