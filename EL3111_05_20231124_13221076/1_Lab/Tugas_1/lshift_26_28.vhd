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
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY lshift_26_28 IS
PORT (
	D_IN : IN STD_LOGIC_VECTOR (25 DOWNTO 0); -- Input 32-bit;
	D_OUT : OUT STD_LOGIC_VECTOR (27 DOWNTO 0) -- Output 32-bit;
	);
END lshift_26_28;

ARCHITECTURE BEHAVIORAL OF lshift_26_28 IS
BEGIN
	PROCESS (D_IN)
	BEGIN
		D_OUT ( 23 DOWNTO 0) <= D_IN (25 DOWNTO 2);
		D_OUT ( 27 DOWNTO 24) <= (OTHERS => '0');
	END PROCESS;
END BEHAVIORAL;