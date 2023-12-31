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
use ieee.numeric_std.all; 

ENTITY ALU IS 
	PORT ( 
			OPRND_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Operand 1 
			OPRND_2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0); -- Operand 2 
			OP_SEL : IN std_logic; -- Operation Select
			RESULT: OUT STD_LOGIC_VECTOR (31 DOWNTO 0) -- Result  
		); 
END ALU ;

ARCHITECTURE behavior OF ALU IS
signal cout1,cout2,cout3,temp1,temp2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	BEGIN 
		PROCESS (OPRND_1,OPRND_2,OP_SEL)
		begin
			if (OP_SEL = '0') then
				cout1(0) <= OPRND_1(0) and OPRND_2(0); 
				RESULT(0) <= OPRND_1(0) xor OPRND_2(0);
				for i in 1 to 31 loop
					cout1(i) <= (OPRND_1(i) and OPRND_2(i)) or (OPRND_1(i) and cout1(i-1)) or (OPRND_2(i) and cout1(i-1));
					RESULT(i) <= OPRND_1(i) xor OPRND_2(i) xor cout1(i-1);
				end loop;
			elsif (OP_SEL = '1') then
				for i in 0 to 31 loop
					temp1(i) <= not OPRND_2(i);
				end loop;
				cout1(0) <= temp1(0);
				temp2(0) <= temp1(0) xor '1';
				for i in 1 to 31 loop
					temp2(i) <= temp1(i) xor cout1(i-1);
					cout1(i) <= temp1(i) and cout1(i-1);
				end loop;
				cout2(0) <= OPRND_1(0) and temp2(0);
				RESULT(0) <= OPRND_1(0) xor temp2(0);
				for i in 1 to 31 loop
					cout2(i) <= (OPRND_1(i) and temp2(i)) or (OPRND_1(i) and cout2(i-1)) or (temp2(i) and cout2(i-1));
					RESULT(i) <= OPRND_1(i) xor temp2(i) xor cout2(i-1);
				end loop;
			end if;
			
		END PROCESS; 
END behavior ;
	