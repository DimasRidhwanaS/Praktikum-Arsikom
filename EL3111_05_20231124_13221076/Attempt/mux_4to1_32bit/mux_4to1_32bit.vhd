library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity mux_4to1_32bit is
    port (
        IN1     : IN    STD_LOGIC_VECTOR (31 downto 0);
        IN2     : IN    STD_LOGIC_VECTOR (31 downto 0);
        IN3     : IN    STD_LOGIC_VECTOR (31 downto 0);
        IN4     : IN    STD_LOGIC_VECTOR (31 downto 0);
        s0      : IN    STD_LOGIC_VECTOR (1 downto 0);
        OUTPUT  : OUT   STD_LOGIC_VECTOR (31 downto 0)
    );
end entity mux_4to1_32bit;

architecture behavioral of mux_4to1_32bit is
begin
    process (IN1,IN2,IN3,IN4,s0)
    begin
        if s0="00" then
            OUTPUT <= IN1;
        elsif s0="01" then
            OUTPUT <= IN2;
        elsif s0="10" then
            OUTPUT <= IN3;
        else
            OUTPUT <= IN4; 
        end if;
    end process;
end architecture;