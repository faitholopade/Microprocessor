----------------------------------------------------------------------------------
-- Company: Trinity College architecture
-- Engineer: Faith Olopade
-- 
-- Create Date: 17.10.2022 23:12:00
-- Design Name: 
-- Module Name: CPU_SignExtend_21364066_TB - Sim
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

entity CPU_SignExtend_21364066_TB is
--  Port ( ); We don't need ports
end CPU_SignExtend_21364066_TB;

architecture Sim of CPU_SignExtend_21364066_TB is
-- Component Declaration for the Unit Under Test (UUT)

component CPU_SignExtend_21364066
port ( 
        Input : in std_logic_vector(9 downto 0);
        
        Output : out std_logic_vector(31 downto 0)
    );
end component;

--Inputs

    signal Input_TB :  std_logic_vector(9 downto 0) := (others => '0');
    
--Outputs

    signal Output_TB :  std_logic_vector(31 downto 0) := (others => '0');
    
begin
	-- Instantiate the Unit Under Test (UUT)
	
   uut: CPU_SignExtend_21364066 port map (
        Input => Input_TB,
        Output => Output_TB
    );

        
   stim_proc: process
   begin

    wait for 100ns;
    Input_TB <= "0000000000";

    wait for 100ns;
    Input_TB <= "1001010101";

    wait for 100ns;
    Input_TB <= "0111111111";

    wait for 100ns;
    Input_TB <= "1110000011";
    
   end process;
end Sim;