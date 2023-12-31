-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul : 5
-- Percobaan : 1
-- Tanggal : 1 Desember 2014
-- Kelompok : III
-- Rombongan : A
-- Nama (NIM) 1 : Damon Prasetyo Arso (13212001)
-- Nama (NIM) 2 : Muhammad Mustadi (13210056)
-- Nama File : instruction_memory.vhd
-- Deskripsi : Program Instruction Memory


LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY instruction_memory IS
PORT (
ADDR : IN STD_LOGIC_VECTOR (15 DOWNTO 0); -- alamat
clock,reset : IN STD_LOGIC; -- clock
INSTR : OUT STD_LOGIC_VECTOR (31 DOWNTO 0) -- output
);
END ENTITY;

ARCHITECTURE behavior OF instruction_memory IS 
TYPE ramtype IS ARRAY (255 DOWNTO 0) OF STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL mem: ramtype;
BEGIN
	PROCESS (ADDR, mem)
	BEGIN
		IF (reset='1') THEN
			INSTR <= (OTHERS => '0');
		ELSE
			INSTR <= mem(TO_INTEGER(SIGNED(ADDR)));
		END IF;
	END PROCESS;
	-- ASSIGN INSTRUCTION Tugas 1b
	mem(0) <= X"00000000";	-- 0: initialization
	mem(4) <= X"FFFFFFFF";	-- 1: initialization
	mem(8) <= X"20100013";	-- 2: addi $s0, $0, 19
	mem(12) <= X"20110015";	-- 3: addi $s1, $0, 21
	mem(16) <= X"1653000D";	-- 4: bne $s2, $s3, 52
	mem(20) <= X"00000000";	-- 5: nop
	mem(24) <= X"02119822";	-- 6: sub $s3, $s0, $s1
	mem(28) <= X"22730000";	-- 7: addi $s3, $s3, 0
	mem(32) <= X"22140004";	-- 8: addi $s4, $s0, 4
	mem(36) <= X"AE910000"; -- 9: sw $s1, ($s4)
	mem(40) <= X"8E950000";	-- 10: lw $s5, ($s4)
	mem(44) <= X"02A0A820";	-- 11: addi $s5, $s5, $0
	mem(48) <= X"08000002";	-- 12: j 00000008
	mem(52) <= X"00000000";	-- 13: nop
END behavior ;