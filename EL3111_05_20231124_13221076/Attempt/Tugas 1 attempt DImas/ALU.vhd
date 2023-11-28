-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul        : 4
-- Tanggal      : 9 November 2023
-- Kelompok     : 9
-- Rombongan    : D
-- Nama (NIM)   : Dimas Ridhwana Shalsareza (13221076)
-- Nama File 	: ALU.vhd

LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY ALU IS
PORT (
	OPRND_1 	: IN std_logic_vector (31 DOWNTO 0); -- Data Input 1
	OPRND_2 	: IN std_logic_vector (31 DOWNTO 0); -- Data Input 2
	OP_SEL 		: IN std_logic; -- Operation Select
	RESULT 		: OUT std_logic_vector (31 DOWNTO 0) -- Data Output
);
END ALU;

ARCHITECTURE Behavioral OF ALU IS
	COMPONENT cla_32 IS 
	PORT (
		OPRND_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Operand 1
		OPRND_2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0); -- Operand 2
		C_IN 	: IN STD_LOGIC;  -- Carry In
		RESULT 	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0); -- Result
		C_OUT 	: OUT STD_LOGIC -- Overflow
	);
	END COMPONENT;
	SIGNAL RES: STD_LOGIC_VECTOR(31 DOWNTO 0);
	BEGIN 
	ADDER: cla_32
	PORT MAP (
		OPRND_1 => OPRND_1,
		OPRND_2 => RES,
		C_IN => OP_SEL,
		RESULT => RESULT
	);
	PROCESS(OPRND_2, OP_SEL)
	BEGIN 
		IF (OP_SEL = '0') THEN
			RES <= OPRND_2; -- nilai asli
		ELSIF (OP_SEL = '1') THEN
			RES <= NOT(OPRND_2) + 1; --NOT (2's complement)
		ELSE
			RES <= (OTHERS => '0');
		END IF;
	END PROCESS;
END Behavioral;
