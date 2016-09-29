-------------------------------------------------------------------------------
-- Copyright (c) abraker
-- 04/01/2014
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;      

ENTITY SegDisp IS 
    PORT
    (
        BCD: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  -- 8-bit input 
        HEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  -- ssd outputs
    );
END SegDisp;

ARCHITECTURE Logix OF SegDisp IS

    -- Bit assignment is reversed and INverted from common sence -\(*_*)/-
    CONSTANT d0: STD_LOGIC_VECTOR(6 DOWNTO 0) := "1000000";
    CONSTANT d1: STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111001";
    CONSTANT d2: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0100100";
    CONSTANT d3: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0110000";  
    CONSTANT d4: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011001";   
    CONSTANT d5: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0010010";  
    CONSTANT d6: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000010";   
    CONSTANT d7: STD_LOGIC_VECTOR(6 DOWNTO 0) := "1111000";  
    CONSTANT d8: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000000";
    CONSTANT d9: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0011000";
    CONSTANT dX: STD_LOGIC_VECTOR(6 DOWNTO 0) := "0110110";  -- "1010110";
 
BEGIN 

    -- Converts the BCD to 7 Segment digit
    PROCESS(BCD) BEGIN
           IF BCD = "0000" THEN HEX <= d0;  
        ELSIF BCD = "0001" THEN HEX <= d1; 
        ELSIF BCD = "0010" THEN HEX <= d2; 
        ELSIF BCD = "0011" THEN HEX <= d3; 
        ELSIF BCD = "0100" THEN HEX <= d4; 
        ELSIF BCD = "0101" THEN HEX <= d5; 
        ELSIF BCD = "0110" THEN HEX <= d6; 
        ELSIF BCD = "0111" THEN HEX <= d7;
        ELSIF BCD = "1000" THEN HEX <= d8;
        ELSIF BCD = "1001" THEN HEX <= d9;
        ELSIF BCD = "1111" THEN HEX <= dX;
        ELSE                    HEX <= "0000000";
        END IF;
    END PROCESS;
 
END Logix; 