library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register is
    port (
        ADDR_1      : IN    STD_LOGIC_VECTOR (4 downto 0);
        ADDR_2      : IN    STD_LOGIC_VECTOR (4 downto 0);
        ADDR_3      : IN    STD_LOGIC_VECTOR (4 downto 0);
        WR_Data_3   : IN    STD_LOGIC_VECTOR (31 downto 0);
        CLK_in      : IN    STD_LOGIC;
        WR_EN       : IN    STD_LOGIC;
        RD_Data_1   : OUT   STD_LOGIC_VECTOR (31 downto 0);
        RD_Data_2   : OUT   STD_LOGIC_VECTOR (31 downto 0)
    );
end entity register;

architecture behavioral of register is
TYPE ramtype IS ARRAY (31 DOWNTO 0) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem: ramtype;
begin
    process (all)
    begin
        if (CLK_in(rising) and WR_EN = '0') then
            RD_Data_1 <= mem(conv_integer((ADDR_1)));
			RD_Data_2 <= mem(conv_integer((ADDR_2)));

        





    end process;
end architecture behavioral;