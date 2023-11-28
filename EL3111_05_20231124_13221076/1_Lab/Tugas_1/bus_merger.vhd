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

ENTITY bus_merger IS
PORT (
DATA_IN1 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
DATA_IN2 : IN STD_LOGIC_VECTOR (27 DOWNTO 0);
DATA_OUT : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
END bus_merger;

ARCHITECTURE bmerge OF bus_merger IS
BEGIN
DATA_OUT(31 DOWNTO 28) <= DATA_IN1;
DATA_OUT(27 DOWNTO 0) <= DATA_IN2;
END bmerge;
