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

ENTITY comparator IS
  PORT (
    D_1 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    D_2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    EQ : OUT STD_LOGIC -- Hasil Perbandingan EQ
  );
END comparator;

ARCHITECTURE comp OF comparator IS
  BEGIN
  PROCESS (D_1,D_2)
		BEGIN
			IF (D_1 = D_2) THEN
				EQ <= '1';
			ELSE 
				EQ <= '0';
			END IF;
		END PROCESS;
  END comp;