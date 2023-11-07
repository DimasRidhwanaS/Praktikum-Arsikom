-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul : 4
-- Percobaan : 1
-- Tanggal : 18 November 2013
-- Kelompok : VI
-- Rombongan : A
-- Nama (NIM) 1 : Audra Fildza Masita (13211008)
-- Nama (NIM) 2 : Bagus Hanindhito (13211007)
-- Nama File : instruction_memory.vhd

LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY altera_mf;
USE altera_mf.all;

ENTITY instruction_memory IS
    PORT (
        ADDR : IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- alamat
        clock : IN STD_LOGIC := '1'; -- clock
        INSTR : OUT STD_LOGIC_VECTOR (31 DOWNTO 0) -- output
        );
END ENTITY;

ARCHITECTURE structural OF instruction_memory IS
SIGNAL sub_wire0 : STD_LOGIC_VECTOR (31 DOWNTO 0);
-- signal keluaran output
COMPONENT altsyncram 
-- komponen memori
    GENERIC
    (
        init_file : STRING; -- name of the .mif file
        operation_mode : STRING; -- the operation mode
        widthad_a : NATURAL; -- width of address_a[]
        width_a : NATURAL -- width of data_a[] 
    );
    PORT
    (
        clock0 : IN STD_LOGIC ;
        address_a : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        q_a : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
    END COMPONENT;

BEGIN
INSTR <= sub_wire0;
altsyncram_component : altsyncram
    GENERIC MAP
    (
        init_file => "imemory.mif",
        operation_mode => "ROM",
        widthad_a => 8,
        width_a => 32
    )
    PORT MAP
    (
        clock0 => clock,
        address_a => ADDR,
        q_a => sub_wire0
    );
END structural;
