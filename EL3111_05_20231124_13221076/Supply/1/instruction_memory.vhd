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
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
USE ieee.std_logic_1164.all;
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
	PROCESS (ADDR,mem)
	BEGIN
		IF (reset='1') THEN
			INSTR <= (OTHERS => '0');
		ELSE
			INSTR <= mem(conv_integer (ADDR));
		END IF;
	END PROCESS;
	-- ASSIGN INSTRUCTION Tugas 1
	mem(0) <= X"00000000";	-- initialization
	mem(4) <= X"FFFFFFFF";	-- initialization
	mem(8) <= X"20110000";	-- addi $s1, $0, 0
	mem(12) <= X"20120000";	-- addi $s2, $0, 0
	mem(16) <= X"2008000A";	-- addi $t0, $0, 10
	mem(20) <= X"00000000";	-- nop
	mem(24) <= X"12480020";	-- loop: beq $s2, $t0, finish
	mem(28) <= X"20110001";	-- addi $s1, $0, 1
	mem(32) <= X"20120001";	-- addi $s2, $0, 1
	mem(36) <= X"08000010"; -- j loop
	mem(40) <= X"00000000";	-- nop
END behavior ;