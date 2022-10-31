----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Faith Olopade
-- 
-- Create Date: 18.10.2022 21:07:58
-- Design Name: 
-- Module Name: DP_ZeroDetection_21364066_TB - Sim
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

entity DP_ZeroDetection_21364066_TB is
--  Port ( ); We don't need ports
end DP_ZeroDetection_21364066_TB;

architecture Sim of DP_ZeroDetection_21364066_TB is
-- Component Declaration for the Unit Under Test (UUT)

component DP_ZeroDetection_21364066
	port (
		In0 : in std_logic_vector(31 downto 0);
		Z : out std_logic
	);
end component;
 
--Inputs
signal In0_TB : std_logic_vector(31 downto 0) := (others => '0');

--Outputs
signal Z_TB : std_logic := '0';

begin
	-- Instantiate the Unit Under Test (UUT)
	uut : DP_ZeroDetection_21364066
	port map(
		In0 => In0_TB, 
		Z => Z_TB
	);
 
	stim_proc : process
	begin
		wait for 5 ns;
		In0_TB <= "";
 
		wait for 5 ns; 
		In0_TB <= "";
 
    end process;
end Sim;