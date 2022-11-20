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
type RAM_array is array(0 to 127) of STD_LOGIC_VECTOR (31 downto 0);
signal RAM : RAM_array:=(
                X"00000000",-- 00
                X"00000001",-- 01
                X"00000002",-- 02
                X"00000003",-- 03
                X"00000004",-- 04
                X"00000005",-- 05
                X"00000006",-- 06
                X"00000007",-- 07
                X"00000008",-- 08
                X"00000009",-- 09
                X"0000000A",-- 0A
                X"0000000B",-- 0B
                X"0000000C",-- 0C
                X"0000000D",-- 0D
                X"0000000E",-- 0E
                X"0000000F" -- 0F

                
);
begin
    process (Clock)
    
    begin
        if Clock'event and Clock='1' then
            if WriteEnable='1' then
            RAM(to_integer(unsigned(Address(6 downto 0)))) <= DataIn after 2ns;
            end if;
        end if;
    end process;
    
    DataOut <= RAM(to_integer(unsigned(Address(6 downto 0)))) after 2ns;
    
end Behavioral;