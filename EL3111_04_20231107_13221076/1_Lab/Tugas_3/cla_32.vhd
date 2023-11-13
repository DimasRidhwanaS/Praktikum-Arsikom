-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul        : 4
-- Tanggal      : 9 November 2023
-- Kelompok     : 9
-- Rombongan    : D
-- Nama (NIM)   : Dimas Ridhwana Shalsareza (13221076)
-- Nama File    : cla_32.vhd

LIBRARY IEEE;  -- Mengimport library IEEE untuk menggunakan tipe data dan fungsi standar VHDL
USE IEEE.STD_LOGIC_1164.ALL;  -- Menggunakan paket STD_LOGIC_1164 untuk tipe data logika standar
USE IEEE.STD_LOGIC_ARITH.ALL;  -- Menggunakan paket STD_LOGIC_ARITH untuk operasi aritmetika standar
USE IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Menggunakan paket STD_LOGIC_UNSIGNED untuk operasi unsigned standar
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY cla_32 IS
  PORT (
    OPRND_1   : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Operand 1
    OPRND_2   : IN STD_LOGIC_VECTOR (31 DOWNTO 0); -- Operand 2
    C_IN      : IN STD_LOGIC; -- Carry In
    RESULT    : OUT STD_LOGIC_VECTOR (31 DOWNTO 0); -- Result
    C_OUT     : OUT STD_LOGIC -- Overflow
  );
END cla_32;

ARCHITECTURE behavioral OF cla_32 IS
  SIGNAL c_int : STD_LOGIC_VECTOR(31 DOWNTO 1);
  SIGNAL sum : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL car_generate : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL car_propagate : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
  PROCESS(OPRND_1, OPRND_2, C_IN)
  BEGIN
    sum <= OPRND_1 XOR OPRND_2;
    car_generate <= OPRND_1 AND OPRND_2;
    car_propagate <= OPRND_1 OR OPRND_2;

    c_int(1) <= car_generate(0) OR (car_propagate(0) AND C_IN);
    
    FOR i IN 1 TO 30 LOOP
      c_int(i+1) <= car_generate(i) OR (car_propagate(i) AND c_int(i));
    END LOOP;
    
    C_OUT <= car_generate(31) OR (car_propagate(31) AND c_int(31));
  END PROCESS;

  RESULT(0) <= sum(0) XOR C_IN;
  RESULT(31 DOWNTO 1) <= sum(31 DOWNTO 1) XOR c_int(31 DOWNTO 1);

END behavioral;
