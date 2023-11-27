library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register is
    port (
        ADDR_1      : IN    STD_LOGIC_VECTOR (25 downto 21);
        ADDR_2      : IN    STD_LOGIC_VECTOR (20 downto 16);
        ADDR_3      : IN    STD_LOGIC_VECTOR (4 downto 0);
        WR_Data_3   : IN    STD_LOGIC_VECTOR (31 downto 0);
        CLK_in      : IN    STD_LOGIC;
        WR_EN       : IN    STD_LOGIC;
        RD_Data_1   : OUT   STD_LOGIC_VECTOR (31 downto 0);
        RD_Data_2   : OUT   STD_LOGIC_VECTOR (31 downto 0)
    );
end entity register;

architecture behavioral of register is
begin
    process (all)
    begin
        
    end process;
end architecture behavioral;