----------------------------------------------------------------------------------
-- Company: Trinity College architecture
-- Engineer: Faith Olopade
-- 
-- Create Date: 17.10.2022 23:12:00
-- Design Name: 
-- Module Name: CPU_RAM_21364066_TB - Sim
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_RAM_21364066_TB is
--  Port ( ); We don't need ports
end CPU_RAM_21364066_TB;

architecture Sim of CPU_RAM_21364066_TB is
-- Component Declaration for the Unit Under Test (UUT)

component CPU_RAM_21364066
port ( 
        Clock : in std_logic;
        Address : in std_logic_vector (31 downto 0);
        DataIn : in std_logic_vector (31 downto 0);
        WriteEnable : in std_logic;
        DataOut : out std_logic_vector (31 downto 0)
    );
end component;

--Inputs

    signal Clock_TB : std_logic := '0';
    signal Address_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal DataIn_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal WriteEnable_TB : std_logic := '0';
    
--Outputs

    signal DataOut_TB : std_logic_vector(31 downto 0) := (others => '0');
    
begin
	-- Instantiate the Unit Under Test (UUT)
	
   uut: CPU_RAM_21364066 port map (
        Clock => Clock_TB,
        Address => Address_TB,
        DataIn => DataIn_TB,
        WriteEnable => WriteEnable_TB,
        DataOut => DataOut_TB,
    );

    Clock_TB <= not Clock_TB after period/2;
   
   stim_proc: process
   begin
    
    WriteEnable_TB <= '1';
    wait until Clock_TB'event and Clock_TB = '1';
    -- DataIn_TB <= last two digits of id
    -- Address_TB <= address 0

   end process;
end Sim;