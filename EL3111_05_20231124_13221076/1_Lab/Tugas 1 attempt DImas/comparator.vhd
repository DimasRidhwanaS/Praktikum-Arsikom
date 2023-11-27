LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY comparator IS
  PORT (
    D_1 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    D_2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    EQ : OUT STD_LOGIC -- Comparison result EQ
  );
END comparator;

ARCHITECTURE Behavioral OF comparator IS
BEGIN
  PROCESS(D_1, D_2)
  BEGIN
    IF D_1 = D_2 THEN
      EQ <= '1'; -- Output high when inputs are equal
    ELSE
      EQ <= '0'; -- Output low when inputs are different
    END IF;
  END PROCESS;
END Behavioral;