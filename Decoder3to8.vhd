LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Decoder3to8 IS
    PORT (
        A : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        EN : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );

END Decoder3to8;

ARCHITECTURE Behavioral OF Decoder3to8 IS
BEGIN
    PROCESS (A, EN)
    BEGIN
        IF (EN = '1') THEN
            CASE A IS
                WHEN "000" => Y <= "00000001";
                WHEN "001" => Y <= "00000010";
                WHEN "010" => Y <= "00000100";
                WHEN "011" => Y <= "00001000";
                WHEN "100" => Y <= "00010000";
                WHEN "101" => Y <= "00100000";
                WHEN "110" => Y <= "01000000";
                WHEN "111" => Y <= "10000000";
                WHEN OTHERS => Y <= "00000000";
            END CASE;
        ELSE
            Y <= "00000000";
        END IF;
    END PROCESS;
END Behavioral;