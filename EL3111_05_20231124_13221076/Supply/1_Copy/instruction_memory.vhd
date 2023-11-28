library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity instruction_memory is
    port (
        ADDR    : IN    STD_LOGIC_VECTOR (7 downto 0);
        CLK_in  : IN    STD_LOGIC;
        INSTR   : OUT   STD_LOGIC_VECTOR (31 downto 0)
    );
end entity instruction_memory;

architecture structural of instruction_memory is
signal sub_wire0 : STD_LOGIC_VECTOR (31 downto 0);

component altsyncram
    generic (
        init_file       : STRING; -- name of the .mif file
        operation_mode  : STRING; -- the operation mode
        widthad_a       : NATURAL; -- width of address_a[]
        width_a         : NATURAL -- width of data_a[] 
    );

    port(
        clock0          : IN STD_LOGIC;
        address_a : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        q_a : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
end component;

begin
    INSTR <= sub_wire0;
    altsyncram_component : altsyncram

    generic map (
        init_file => "imemory2.mif",
        operation_mode => "ROM",
        widthad_a => 8,
        width_a => 32
    )
    
    port map (
        clock0 => CLK_in,
        address_a => ADDR,
        q_a => sub_wire0
    );
end architecture structural;