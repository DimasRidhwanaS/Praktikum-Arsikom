library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity control_unit is
    port (
        OP_In           : IN    STD_LOGIC_VECTOR (31 downto 26);
        FUNCT_In        : IN    STD_LOGIC_VECTOR (5 downto 0);
        Sig_Jmp         : OUT   STD_LOGIC_VECTOR (1 downto 0);
        Sig_Bne         : OUT   STD_LOGIC;
        Sig_Branch      : OUT   STD_LOGIC;
        Sig_MemtoReg	: OUT   STD_LOGIC;
	    Sig_MemRead	    : OUT   STD_LOGIC;
	    Sig_MemWrite	: OUT   STD_LOGIC;
	    Sig_RegDest 	: OUT   STD_LOGIC_VECTOR (1 downto 0);
	    Sig_RegWrite	: OUT   STD_LOGIC;
	    Sig_ALUsrc	    : OUT   STD_LOGIC_VECTOR (1 downto 0);
	    Sig_ALUctrl	    : OUT   STD_LOGIC_VECTOR (1 downto 0)
    );
end entity control_unit;

architecture behavioral of control_unit is
begin
    process (OP_In, FUNCT_In)
    begin
        Sig_Jmp         <= "00";
        Sig_Bne         <= '0';
        Sig_Branch      <= '0';
        Sig_MemtoReg    <= '0';
        Sig_MemRead     <= '0';
        Sig_MemWrite    <= '0';
        Sig_RegDest     <= "00";
        Sig_RegWrite    <= '0';
        Sig_ALUSrc      <= "00";
        Sig_ALUCtrl     <= "00";

        case OP_in is
            when "000000" =>
                if FUNCT_In="100000" then       --Instruksi add
                    Sig_RegDest     <= "01";
                    Sig_RegWrite    <= '1';
                    Sig_ALUCtrl     <= "00";
                else                            --Instruksi sub
                    Sig_RegDest     <= "01";
                    Sig_RegWrite    <= '1';
                    Sig_ALUCtrl     <= "01"; 
                end if;
                
            when "000100" =>    --Instruksi beq
                Sig_Branch      <= '1';

            when "000101" =>    --Instruksi bne
                Sig_Bne         <= '1';

            when "001000" =>    --Instruksi addi
                Sig_RegWrite    <= '1';
                Sig_ALUSrc      <= "01";

            when "100011" =>    --Instruksi lw
                Sig_MemtoReg    <= '1';
                Sig_MemRead     <= '1';
                Sig_RegWrite    <= '1';
                Sig_ALUSrc      <= "01";

            when "101011" =>    --Instruksi sw
                Sig_MemWrite    <= '1';
                Sig_ALUsrc      <= "01";

            when "000010" =>    --Instruksi jmp
                Sig_Jmp         <= "01";
            when others =>

        end case;
            

    end process;
end architecture;