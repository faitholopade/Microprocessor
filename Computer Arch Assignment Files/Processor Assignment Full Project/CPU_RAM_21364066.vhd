----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Faith Olopade
-- 
-- Create Date: 17.10.2022 22:35:00
-- Design Name: 
-- Module Name: CPU_RAM_21364066 - Behavioral
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

entity CPU_RAM_21364066 is
    port (  Clock : in std_logic;
            Address : in std_logic_vector (31 downto 0);
            DataIn : in std_logic_vector (31 downto 0);
            WriteEnable : in std_logic;
            DataOut : out std_logic_vector (31 downto 0)
        );
end CPU_RAM_21364066;

architecture Behavioral of CPU_RAM_21364066 is
    -- we use the least significant 7 bits of the address
type RAM_array is array(0 to 127) of std_logic_vector (31 downto 0);
signal RAM : RAM_array:=(
                X"00000042", -- 00
                X"00000001", -- 01
                X"00000002", -- 02
                X"00000003", -- 03
                X"00000004", -- 04
                X"00000005", -- 05
                X"00000006", -- 06
                X"00000007", -- 07
                X"00000008", -- 08
                X"00000009", -- 09
                X"0000000A", -- 0A
                X"0000000B", -- 0B
                X"0000000C", -- 0C
                X"0000000D", -- 0D
                X"0000000E", -- 0E
                X"0000000F", -- 0F

                X"00000010",  -- 10
                X"00000011",  -- 11
                X"00000012",  -- 12
                X"00000013",  -- 13
                X"00000014",  -- 14
                X"00000015",  -- 15
                X"00000016",  -- 16
                X"00000017",  -- 17
                X"00000018",  -- 18
                X"00000019",  -- 19
                X"0000001A",  -- 1A
                X"0000001B",  -- 1B
                X"0000001C",  -- 1C
                X"0000001D",  -- 1D
                X"0000001E",  -- 1E
                X"0000001F",  -- 1F

                X"00000020",  -- 20
                X"00000021",  -- 21
                X"00000022",  -- 22
                X"00000023",  -- 23
                X"00000024",  -- 24
                X"00000025",  -- 25
                X"00000026",  -- 26
                X"00000027",  -- 27
                X"00000028",  -- 28
                X"00000029",  -- 29
                X"0000002A",  -- 2A
                X"0000002B",  -- 2B
                X"0000002C",  -- 2C
                X"0000002D",  -- 2D
                X"0000002E",  -- 2E
                X"0000002F",  -- 2F

                X"00000030",  -- 30
                X"00000031",  -- 31
                X"00000032",  -- 32
                X"00000033",  -- 33
                X"00000034",  -- 34
                X"00000035",  -- 35
                X"00000036",  -- 36
                X"00000037",  -- 37
                X"00000038",  -- 38
                X"00000039",  -- 39
                X"0000003A",  -- 3A
                X"0000003B",  -- 3B
                X"0000003C",  -- 3C
                X"0000003D",  -- 3D
                X"0000003E",  -- 3E
                X"0000003F",  -- 3F

                X"00000040",  -- 40
                X"00000041",  -- 41
                X"00000042",  -- 42
                X"00000043",  -- 43
                X"00000044",  -- 44
                X"00000045",  -- 45
                X"00000046",  -- 46
                X"00000047",  -- 47
                X"00000048",  -- 48
                X"00000049",  -- 49
                X"0000004A",  -- 4A
                X"0000004B",  -- 4B
                X"0000004C",  -- 4C
                X"0000004D",  -- 4D
                X"0000004E",  -- 4E
                X"0000004F",  -- 4F

                X"00000050",  -- 50
                X"00000051",  -- 51
                X"00000052",  -- 52
                X"00000053",  -- 53
                X"00000054",  -- 54
                X"00000055",  -- 55
                X"00000056",  -- 56
                X"00000057",  -- 57
                X"00000058",  -- 58
                X"00000059",  -- 59
                X"0000005A",  -- 5A
                X"0000005B",  -- 5B
                X"0000005C",  -- 5C
                X"0000005D",  -- 5D
                X"0000005E",  -- 5E
                X"0000005F",  -- 5F

                X"00000060",  -- 60
                X"00000061",  -- 61
                X"00000062",  -- 62
                X"00000063",  -- 63
                X"00000064",  -- 64
                X"00000065",  -- 65
                X"00000066",  -- 66
                X"00000067",  -- 67
                X"00000068",  -- 68
                X"00000069",  -- 69
                X"0000006A",  -- 6A
                X"0000006B",  -- 6B
                X"0000006C",  -- 6C
                X"0000006D",  -- 6D
                X"0000006E",  -- 6E
                X"0000006F",  -- 6F

                X"00000070",  -- 70
                X"00000071",  -- 71
                X"00000072",  -- 72
                X"00000073",  -- 73
                X"00000074",  -- 74
                X"00000075",  -- 75
                X"00000076",  -- 76
                X"00000077",  -- 77
                X"00000078",  -- 78
                X"00000079",  -- 79
                X"0000007A",  -- 7A
                X"0000007B",  -- 7B
                X"0000007C",  -- 7C
                X"0000007D",  -- 7D
                X"0000007E",  -- 7E
                X"0000007F"   -- 7F
              
    );
begin
    process (Clock)
    
    begin
        if Clock'event and Clock='1' then
            if WriteEnable='1' then
            RAM(to_integer(unsigned(Address(6 downto 0)))) <= DataIn after 10ns;
            end if;
        end if;
    end process;
    
    DataOut <= RAM(to_integer(unsigned(Address(6 downto 0)))) after 10ns;
    
end Behavioral;