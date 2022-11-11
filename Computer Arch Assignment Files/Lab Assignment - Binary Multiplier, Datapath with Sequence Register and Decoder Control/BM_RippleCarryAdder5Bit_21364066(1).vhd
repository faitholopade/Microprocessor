----------------------------------------------------------------------------------
-- Company: Trinity College Dublin
-- Engineer: Prof. Michael Manzke
-- 
-- Create Date: 29.10.2022 22:07:05
-- Design Name: 
-- Module Name: BM_RippleCarryAdder5Bit_XXXXXXXX - Behavioral
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

entity BM_RippleCarryAdder5Bit_XXXXXXXX is
Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
       B : in STD_LOGIC_VECTOR (4 downto 0);
       C_IN : in STD_LOGIC;
       SUM : out STD_LOGIC_VECTOR (4 downto 0);
       C_OUT : out STD_LOGIC);
end BM_RippleCarryAdder5Bit_XXXXXXXX;

architecture Behavioral of BM_RippleCarryAdder5Bit_XXXXXXXX is

COMPONENT BM_FullAdder_XXXXXXXX    
    PORT(
         A : in STD_LOGIC;
         B : in STD_LOGIC;
         C_IN : in STD_LOGIC;
         SUM : out STD_LOGIC;
         C_OUT : out STD_LOGIC
        );
END COMPONENT;
    
Signal C0_to_C1, C1_to_C2, C2_to_C3, C3_to_C4, C4_to_COut : STD_LOGIC;    

begin

   -- Instantiate Full Adder Bit 0
   BIT0: BM_FullAdder_XXXXXXXX PORT MAP (
          A => A(0),
          B => B(0),
          C_IN => C_IN,
          SUM => SUM(0),
          C_OUT => C0_to_C1
        );

   -- Instantiate Full Adder Bit 1
   BIT1: BM_FullAdder_XXXXXXXX PORT MAP (
          A => A(1),
          B => B(1),
          C_IN => C0_to_C1,
          SUM => SUM(1),
          C_OUT => C1_to_C2
        );
        
   -- Instantiate Full Adder Bit 2
   BIT2: BM_FullAdder_XXXXXXXX PORT MAP (
          A => A(2),
          B => B(2),
          C_IN => C1_to_C2,
          SUM => SUM(2),
          C_OUT => C2_to_C3
        );
        
   -- Instantiate Full Adder Bit 3
   BIT3: BM_FullAdder_XXXXXXXX PORT MAP (
          A => A(3),
          B => B(3),
          C_IN => C2_to_C3,
          SUM => SUM(3),
          C_OUT => C3_to_C4
        );
        
       -- Instantiate Full Adder Bit 3
   BIT4: BM_FullAdder_XXXXXXXX PORT MAP (
          A => A(4),
          B => B(4),
          C_IN => C3_to_C4,
          SUM => SUM(4),
          C_OUT => C4_to_COut
        );
            
    -- Carry
    
    C_OUT <= C4_to_COut;
      

end Behavioral;
