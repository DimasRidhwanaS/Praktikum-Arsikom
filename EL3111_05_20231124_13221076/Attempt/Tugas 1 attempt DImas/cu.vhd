-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul        : 4
-- Tanggal      : 9 November 2023
-- Kelompok     : 9
-- Rombongan    : D
-- Nama (NIM)   : Dimas Ridhwana Shalsareza (13221076)
-- Nama File    : cu.vhd

LIBRARY IEEE;  -- Mengimport library IEEE untuk menggunakan tipe data dan fungsi standar VHDL
USE IEEE.STD_LOGIC_1164.ALL;  -- Menggunakan paket STD_LOGIC_1164 untuk tipe data logika standar
USE IEEE.STD_LOGIC_ARITH.ALL;  -- Menggunakan paket STD_LOGIC_ARITH untuk operasi aritmetika standar
USE IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Menggunakan paket STD_LOGIC_UNSIGNED untuk operasi unsigned standar
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY cu IS
PORT (
  OP_In         : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
  FUNCT_In      : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
  Sig_Jmp       : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
  Sig_Bne       : OUT STD_LOGIC;
  Sig_Branch    : OUT STD_LOGIC;
  Sig_MemtoReg  : OUT STD_LOGIC;
  Sig_MemRead   : OUT STD_LOGIC;
  Sig_MemWrite  : OUT STD_LOGIC;
  Sig_RegDest   : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
  Sig_RegWrite  : OUT STD_LOGIC;
  Sig_ALUSrc    : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
  Sig_ALUCtrl   : OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
);
END cu;

ARCHITECTURE behavioral OF cu IS
BEGIN
  PROCESS(OP_In, FUNCT_In)
  BEGIN
    Sig_Jmp       <= "00";
    Sig_Bne       <= '0';
    Sig_Branch    <= '0';
    Sig_MemtoReg  <= '0';
    Sig_MemRead   <= '0';
    Sig_MemWrite  <= '0';
    Sig_ALUSrc    <= "00";
    Sig_RegDest   <= "00";
    Sig_RegWrite  <= '0';
    Sig_ALUCtrl   <= "00";
    
    IF (OP_In = "000000") THEN  -- R-type instructions
      IF (FUNCT_In = "000000") THEN
        Sig_RegDest   <= "00";
        Sig_RegWrite  <= '0';
        Sig_ALUCtrl   <= "00";
      ELSIF (FUNCT_In = "100010") THEN
        Sig_ALUCtrl   <= "01";
      END IF;
    ELSE
      Sig_ALUCtrl <= "00";
      
      IF (OP_In = "000010") THEN  -- Jump instruction
        Sig_Jmp <= "01";
      ELSIF (OP_In = "000100") THEN  -- Branch instructions
        Sig_Branch <= '1';
      ELSIF (OP_In = "000101") THEN  -- Bne instruction
        Sig_Bne <= '1';
      ELSIF (OP_In = "001000" OR OP_In = "100011") THEN  -- Load and Store instructions
        Sig_RegWrite <= '1';
        Sig_ALUSrc <= "01";
        Sig_MemtoReg <= '1';
        Sig_MemRead <= '1';
      ELSIF (OP_In = "101011") THEN  -- Store instruction
        Sig_MemWrite <= '1';
      END IF;
    END IF;
  END PROCESS;
END behavioral;
