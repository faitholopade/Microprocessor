----------------------------------------------------------------------------------
-- Company: Trinity College architecture
-- Engineer: Faith Olopade
-- 
-- Create Date: 03.11.2022 18:15:00
-- Design Name: 
-- Module Name: DP_Mux3_1Bit_21364066_TB - Sim
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

entity DP_Mux3_1Bit_21364066_TB is
--  Port ( ); We don't need ports
end DP_Mux3_1Bit_21364066_TB;

architecture Sim of DP_Mux3_1Bit_21364066_TB is
-- Component Declaration for the Unit Under Test (UUT)

component DP_Mux3_1Bit_21364066
port ( 
        In00 : in std_logic;
        In01 : in std_logic;
        In02 : in std_logic;
        A : in std_logic_vector(1 downto 0);
        Z : out std_logic
      );
end component;

--Inputs

    signal In00_TB : std_logic := '0';
    signal In01_TB : std_logic := '0';
    signal In02_TB : std_logic := '0';
    signal A_TB : std_logic_vector(1 downto 0):= (others => '0');
    
--Outputs

    signal Z_TB : std_logic := '0';
    
begin
	-- Instantiate the Unit Under Test (UUT)
	
   uut: DP_Mux3_1Bit_21364066 port map (
          In00 => In00_TB,
          In01 => In01_TB,
          In02 => In02_TB,
          A => A_TB,
          Z => Z_TB
        );

        
   stim_proc: process

   begin
    In00_TB <= '1';
    In01_TB <= '0';
    In02_TB <= '1';

    wait for 5ns;
    A_TB <= "00";

    wait for 5ns;
    A_TB <= "01";

    wait for 5ns;
    A_TB <= "10";

   end process;
end Sim;