-------------------------------------------------------------------------------
-- Copyright (c) abraker
-- 09/28/2016
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;      

ENTITY Core IS 

    PORT 
    (
        SW  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  
END Core;

ARCHITECTURE Logix OF Core IS

    COMPONENT SegDisp IS
        PORT
        (
            BCD: IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
            HEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
        );
    END COMPONENT; 

BEGIN 

    SegDisp1: SegDisp PORT MAP
    (
        BCD => SW,
        HEX => HEX0
    );
  
END Logix;