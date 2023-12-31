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

ENTITY program_counter IS
PORT (
	clk,reset : IN STD_LOGIC;
	PC_in : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	PC_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END program_counter;

ARCHITECTURE BEHAVIORAL OF program_counter IS
BEGIN
	PROCESS (clk, PC_in)
	BEGIN
		IF (reset = '1') THEN
			PC_out <= x"00000000";
		ELSE --reset = 0
			IF rising_edge (clk) THEN
				PC_out <= PC_in;
			END IF;
		END IF;
	END PROCESS;
END BEHAVIORAL;