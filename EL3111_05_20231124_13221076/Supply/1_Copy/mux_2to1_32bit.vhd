-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul : 5
-- Percobaan : 1
-- Tanggal : 1 Desember 2014
-- Kelompok : III
-- Rombongan : A
-- Nama (NIM) 1 : Damon Prasetyo Arso (13212001)
-- Nama (NIM) 2 : Muhammad Mustadi (13210056)
-- Nama File : mux_2to1_32bit.vhd
-- Deskripsi : Program Multiplecer 2-to-1 bit 32 bit

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
--2-to-1 multiplexer
--32 bit
ENTITY mux_2to1_32bit IS
 PORT (
  D1 : IN std_logic_vector (31 DOWNTO 0); -- Data Input 1 
  D2 : IN std_logic_vector (31 DOWNTO 0); -- Data Input 2 
  Y : OUT std_logic_vector (31 DOWNTO 0); -- Selected Data
  S : IN std_logic -- Selector
 );
END mux_2to1_32bit;

ARCHITECTURE arch OF mux_2to1_32bit IS
 BEGIN
		PROCESS (S,D1,D2)
		BEGIN
			IF (S='0') THEN
				Y <= D1;
			ELSE
				Y <= D2;
			END IF;
		END PROCESS; 
END arch;
