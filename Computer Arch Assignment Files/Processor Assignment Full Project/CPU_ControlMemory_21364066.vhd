----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Faith Olopade
-- 
-- Create Date: 17.10.2022 22:35:00
-- Design Name: 
-- Module Name: CPU_ControlMemory_21364066 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_ControlMemory_21364066 is
    port (
        Address : in std_logic_vector (16 downto 0);
        NA : out std_logic_vector (16 downto 0); -- 34-50
        MS : out std_logic_vector (2 downto 0); -- 31-33
        MC : out std_logic; -- 30
        IL : out std_logic; -- 29
        PI : out std_logic; -- 28
        PL : out std_logic; -- 27
        TD : out std_logic_vector (3 downto 0); -- 23-26
        TA : out std_logic_vector (3 downto 0); -- 19-22
        TB : out std_logic_vector (3 downto 0); -- 15-18
        MB : out std_logic; -- 14
        FS : out std_logic_vector (4 downto 0); -- 09-13
        MD : out std_logic; -- 08
        RW : out std_logic; -- 07
        MM : out std_logic; -- 06
        MW : out std_logic; -- 05
        RV : out std_logic; -- 04
        RC : out std_logic; -- 03
        RN : out std_logic; -- 02
        RZ : out std_logic; -- 01
        FL : out std_logic -- 00
        );
end CPU_ControlMemory_21364066;

architecture Behavioral of CPU_ControlMemory_21364066 is

    -- we use the least significant 7 bit of the Address - array(0 to 127)
type ROM_array is array(0 to 127) of std_logic_vector (50 downto 0);
signal ROM : ROM_array :=(
    --00 to 15--
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000000000000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 00
"00000000000000001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 01
"00000000000000010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 02
"00000000000000011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 03
"00000000000000100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 04
"00000000000000101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 05
"00000000000000110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 06
"00000000000000111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 07
"00000000000001000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 08
"00000000000001001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 09
"00000000000001010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 0A
"00000000000001011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 0B
"00000000000001100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 0C
"00000000000001101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 0D
"00000000000001110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 0E
"00000000000001111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 0F

--16 to 31
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000000010000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 10
"00000000000010001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 11
"00000000000010010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 12
"00000000000010011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 13
"00000000000010100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 14
"00000000000010101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 15
"00000000000010110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 16
"00000000000010111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 17
"00000000000011000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 18
"00000000000011001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 19
"00000000000011010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 1A
"00000000000011011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 1B
"00000000000011100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 1C
"00000000000011101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 1D
"00000000000011110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 1E
"00000000000011111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 1F

--32 to 47
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000000010000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 20
"00000000000010001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 21
"00000000000010010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 22
"00000000000010011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 23
"00000000000010100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 24
"00000000000010101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 25
"00000000000010110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 26
"00000000000010111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 27
"00000000000011000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 28
"00000000000011001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 29
"00000000000011010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 2A
"00000000000011011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 2B
"00000000000011100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 2C
"00000000000011101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 2D
"00000000000011110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 2E
"00000000000011111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 2F

--48 to 63
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000000010000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 30
"00000000000010001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 31
"00000000000010010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 32
"00000000000010011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 33
"00000000000010100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 34
"00000000000010101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 35
"00000000000010110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 36
"00000000000010111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 37
"00000000000011000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 38
"00000000000011001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 39
"00000000000011010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 3A
"00000000000011011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 3B
"00000000000011100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 3C
"00000000000011101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 3D
"00000000000011110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 3E
"00000000000011111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 3F

--64 to 79
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000000010000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 40
"00000000000010001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 41
"00000000000010010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 42
"00000000000010011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 43
"00000000000010100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 44
"00000000000010101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 45
"00000000000010110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 46
"00000000000010111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 47
"00000000000011000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 48
"00000000000011001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 49
"00000000000011010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 4A
"00000000000011011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 4B
"00000000000011100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 4C
"00000000000011101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 4D
"00000000000011110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 4E
"00000000000011111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 4F

--80 to 95
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000000010000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 50
"00000000000010001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 51
"00000000000010010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 52
"00000000000010011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 53
"00000000000010100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 54
"00000000000010101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 55
"00000000000010110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 56
"00000000000010111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 57
"00000000000011000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 58
"00000000000011001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 59
"00000000000011010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 5A
"00000000000011011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 5B
"00000000000011100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 5C
"00000000000011101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 5D
"00000000000011110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 5E
"00000000000011111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 5F

--96 to 111
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000000010000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 60
"00000000000010001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 61
"00000000000010010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 62
"00000000000010011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 63
"00000000000010100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 64
"00000000000010101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 65
"00000000000010110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 66
"00000000000010111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 67
"00000000000011000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 68
"00000000000011001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 69
"00000000000011010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 6A
"00000000000011011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 6B
"00000000000011100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 6C
"00000000000011101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 6D
"00000000000011110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 6E
"00000000000011111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 6F

--112 to 127--
--|50 34|33 31|30| 29| 28| 27|26 23|22 19|18 15| 14|13 09| 08| 07| 06| 05| 04| 03| 02| 01| 00| Control Mem
--| Next Address | MS |MC| IL| PI| PL| TD | TA | TB | MB| FS | MD| RW| MM| MW| RV| RC| RN| RZ| FL| Address
"00000000001110000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 70
"00000000001110001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 71
"00000000001110010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 72
"00000000001110011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 73
"00000000001110100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 74
"00000000001110101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 75
"00000000001110110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 76
"00000000001110111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 77
"00000000001111000"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 78
"00000000001111001"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 79
"00000000001111010"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 7A
"00000000001111011"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 7B
"00000000001111100"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 7C
"00000000001111101"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 7D
"00000000001111110"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0', -- 7E
"00000000001111111"&"000"&'0'&'0'&'0'&'0'&"0000"&"0000"&"0000"&'0'&"00000"&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0'&'0' -- 7F
);

signal content_at_address : std_logic_vector (50 downto 0);

begin
    content_at_address <= ROM(to_integer(unsigned(Address(6 downto 0)))) after 2ns;
    
    NA <= content_at_address(50 downto 34); -- 34-50
    MS <= content_at_address(33 downto 31); -- 31-33
    MC <= content_at_address(30); -- 30
    IL <= content_at_address(29); -- 29
    PI <= content_at_address(28); -- 28
    PL <= content_at_address(27); -- 27
    TD <= content_at_address(26 downto 23); -- 23-26
    TA <= content_at_address(22 downto 19); -- 19-22
    TB <= content_at_address(18 downto 15); -- 15-18
    MB <= content_at_address(14); -- 14
    FS <= content_at_address(13 downto 9); -- 09-13
    MD <= content_at_address(8); -- 08
    RW <= content_at_address(7); -- 07
    MM <= content_at_address(6); -- 06
    MW <= content_at_address(5); -- 05
    RV <= content_at_address(4); -- 04
    RC <= content_at_address(3); -- 03
    RN <= content_at_address(2); -- 02
    RZ <= content_at_address(1); -- 01
    FL <= content_at_address(0); -- 00
    
end Behavioral;
