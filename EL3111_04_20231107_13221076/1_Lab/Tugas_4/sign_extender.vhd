-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul        : 4
-- Tanggal      : 9 November 2023
-- Kelompok     : 9
-- Rombongan    : D
-- Nama (NIM)   : Dimas Ridhwana Shalsareza (13221076)
-- Nama File 	: sign_extender.vhd

LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY sign_extender IS
PORT (
	D_In  : IN std_logic_vector (15 DOWNTO 0); -- Data Input 1
	D_Out :OUT std_logic_vector (31 DOWNTO 0) -- Data Input 2
);
END sign_extender;

ARCHITECTURE Behavioral OF sign_extender IS
BEGIN
	D_OUT(15 DOWNTO 0) <= D_IN(15 DOWNTO 0);
	D_OUT(31 DOWNTO 16) <= (OTHERS => D_IN (15));
END Behavioral;
