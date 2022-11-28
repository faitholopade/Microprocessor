----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Faith Olopade
-- 
-- Create Date: 17.10.2022 22:35:00
-- Design Name: 
-- Module Name: CPU_IR_21364066 - Behavioral
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

entity CPU_IR_21364066 is
    port (
            Clock: in std_logic;
            IL : in std_logic;
            Instruction : in std_logic_vector(31 downto 0); 
            DR : out std_logic_vector(4 downto 0);
            Opcode : out std_logic_vector(16 downto 0);
            SA : out std_logic_vector(4 downto 0);
            SB : out std_logic_vector(4 downto 0)
        );
end CPU_IR_21364066;

architecture Behavioral of CPU_IR_21364066 is

    component RF_Register32Bit_21364066
    port(   D : in STD_LOGIC_VECTOR (31 downto 0);
            Load : in STD_LOGIC;
            CLK : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR (31 downto 0)
        );
end component;

signal regOut : std_logic_vector(31 downto 0);

begin 
    Register00: RF_Register32Bit_21364066 port map(
        D => Instruction,
        Load => IL,
        CLK => Clock,
        Q => regOut
    );
    -- begin
        Opcode <= regOut(31 downto 15) after 10ns ;
        DR <= regOut(14 downto 10) after 10ns     ;
        SA <= regOut(9 downto 5) after 10ns       ;
        SB <= regOut(4 downto 0) after 10ns       ;
end Behavioral;

-- when IL = '1' and Clock = '1';
-- when IL = '1' and Clock = '1';
-- when IL = '1' and Clock = '1';
-- when IL = '1' and Clock = '1';
