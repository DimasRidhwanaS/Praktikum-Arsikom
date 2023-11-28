-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul        : 4
-- Tanggal      : 9 November 2023
-- Kelompok     : 9
-- Rombongan    : D
-- Nama (NIM)   : Dimas Ridhwana Shalsareza (13221076)
-- Nama File    : lshift_26_28.vhd

LIBRARY IEEE;  -- Mengimport library IEEE untuk menggunakan tipe data dan fungsi standar VHDL
USE IEEE.STD_LOGIC_1164.ALL;  -- Menggunakan paket STD_LOGIC_1164 untuk tipe data logika standar
USE IEEE.STD_LOGIC_ARITH.ALL;  -- Menggunakan paket STD_LOGIC_ARITH untuk operasi aritmetika standar
USE IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Menggunakan paket STD_LOGIC_UNSIGNED untuk operasi unsigned standar
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY lshift_26_28 IS
PORT (
  D_IN : IN STD_LOGIC_VECTOR (25 DOWNTO 0); -- Input 32-bit;
  D_OUT : OUT STD_LOGIC_VECTOR (27 DOWNTO 0) -- Output 32-bit;
);
END lshift_26_28;

ARCHITECTURE behavior OF lshift_26_28 IS
BEGIN
    D_OUT <= D_IN(25 DOWNTO 0) & "00"; -- Menggeser input sebanyak dua bit ke kiri, dan menambahkan dua bit 0 di kanan.
END behavior;

