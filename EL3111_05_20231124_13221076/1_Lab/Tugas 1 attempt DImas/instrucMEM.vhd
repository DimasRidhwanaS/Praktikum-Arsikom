-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul : 3
-- Percobaan : 1
-- Tanggal : 27 Oktober 2023
-- Kelompok : 2
-- Rombongan : D
-- Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13221076)
-- Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13221079)
-- Nama File : instrucMEM.vhd
-- Deskripsi : Implementasi instruction memory

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY instrucMEM IS
	PORT (
			ADDR : IN std_logic_vector (31 DOWNTO 0);
			clock : IN std_logic;
			reset : IN std_logic;
			INSTR : OUT std_logic_vector (31 DOWNTO 0)
		 );
END ENTITY;

ARCHITECTURE behavior OF instrucMEM IS
TYPE ramtype IS ARRAY (31 DOWNTO 0) OF std_logic_vector (31 DOWNTO 0);
SIGNAL mem: ramtype;
	BEGIN
		PROCESS (clock,reset)
		BEGIN
			IF (reset='1') THEN
				INSTR <= (OTHERS => '0');
			ELSIF (rising_edge(clock)) THEN
				INSTR <= mem(to_integer(unsigned(ADDR)));
			END IF;
		END PROCESS;
	-- Isi dalam instruction memory
	mem(0) <= X"00000022";
	mem(1) <= X"8c010000";
	mem(2) <= X"8c020004";
	mem(3) <= X"8c030008";
	mem(4) <= X"00842022";
	mem(5) <= X"00822020";
	mem(6) <= X"0043282a";
	mem(7) <= X"10a00002";
	mem(8) <= X"00411020";
	mem(9) <= X"1000fffb";
	mem(10) <= X"ac040000";
	mem(11) <= X"1000ffff";
END behavior;
