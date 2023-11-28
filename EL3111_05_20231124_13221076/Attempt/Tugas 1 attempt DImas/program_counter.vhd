-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul        : 4
-- Tanggal      : 9 November 2023
-- Kelompok     : 9
-- Rombongan    : D
-- Nama (NIM)   : Dimas Ridhwana Shalsareza (13221076)
-- Nama File    : program_counter.vhd

LIBRARY IEEE;  -- Mengimport library IEEE untuk menggunakan tipe data dan fungsi standar VHDL
USE IEEE.STD_LOGIC_1164.ALL;  -- Menggunakan paket STD_LOGIC_1164 untuk tipe data logika standar
USE IEEE.STD_LOGIC_ARITH.ALL;  -- Menggunakan paket STD_LOGIC_ARITH untuk operasi aritmetika standar
USE IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Menggunakan paket STD_LOGIC_UNSIGNED untuk operasi unsigned standar
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;


ENTITY program_counter IS
  PORT (
    clk : IN STD_LOGIC;  -- Port input clock.
    PC_in : IN STD_LOGIC_VECTOR (31 DOWNTO 0);  -- Port input data 32-bit.
    PC_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)  -- Port output data 32-bit.
  );
END program_counter;

ARCHITECTURE behavior OF program_counter IS
  SIGNAL PC_reg : STD_LOGIC_VECTOR (31 DOWNTO 0) := (OTHERS => '0');  -- Sinyal internal untuk merepresentasikan nilai register 32-bit, diinisialisasi dengan nilai 0.

BEGIN
  PROCESS(clk)  -- Proses yang akan dieksekusi ketika ada perubahan pada clock.
  BEGIN
    IF RISING_EDGE(clk) THEN  -- Pengecekan apakah clock berada pada rising edge.
      PC_reg <= PC_in;  -- Jika ya, update nilai register dengan nilai input.
    END IF;
  END PROCESS;

  PC_out <= PC_reg;  -- Keluaran mengikuti nilai dari register PC_reg.
END behavior;

