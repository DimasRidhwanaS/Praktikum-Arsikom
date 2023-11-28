-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul        : 5
-- Percobaan    : 1
-- Tanggal      : 24 November 2023
-- Kelompok     : 9
-- Rombongan    : D
-- Nama (NIM) 1 : Dimas Ridhwana Shalsareza 	(13221076)
-- Nama (NIM) 2 : Muhammad Zhafran Arrafi Anwar (13221079)


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY sign_extender IS
PORT (
	D_in	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	D_out	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END sign_extender;

ARCHITECTURE BEHAVIORAL OF sign_extender IS
BEGIN
	D_out (31 DOWNTO 16) <= (OTHERS => D_in (15));
	D_out (15 DOWNTO 0) <= D_in;
END BEHAVIORAL;