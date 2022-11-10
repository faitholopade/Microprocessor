----------------------------------------------------------------------------------
-- Company: Trinity College
-- Engineer: Faith Olopade
-- 
-- Create Date:    12:42:30 01/11/2022 
-- Design Name: 
-- Module Name:    DP_SingleBit_B_Logic_21364066 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_SingleBit_B_Logic_21364066 is
    Port ( B : in  STD_LOGIC_VECTOR(31 downto 0);
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           Y : out  STD_LOGIC_VECTOR(31 downto 0));
end DP_SingleBit_B_Logic_21364066;

architecture Behavioral of DP_SingleBit_B_Logic_21364066 is

begin
        Y(0) <= (B(0) and S(0)) or (not B(0) and S(1)) after 5ns; -- B either set in conjuction with S1 or S0 and selects val 
        Y(1) <= (B(1) and S(0)) or (not B(1) and S(1)) after 5ns;
        Y(2) <= (B(2) and S(0)) or (not B(2) and S(1)) after 5ns;
        Y(3) <= (B(3) and S(0)) or (not B(3) and S(1)) after 5ns;
        Y(4) <= (B(4) and S(0)) or (not B(4) and S(1)) after 5ns;
        Y(5) <= (B(5) and S(0)) or (not B(5) and S(1)) after 5ns;
        Y(6) <= (B(6) and S(0)) or (not B(6) and S(1)) after 5ns;
        Y(7) <= (B(7) and S(0)) or (not B(7) and S(1)) after 5ns;
        Y(8) <= (B(8) and S(0)) or (not B(8) and S(1)) after 5ns;
        Y(9) <= (B(9) and S(0)) or (not B(9) and S(1)) after 5ns;
        Y(10) <= (B(10) and S(0)) or (not B(10) and S(1)) after 5ns;
        Y(11) <= (B(11) and S(0)) or (not B(11) and S(1)) after 5ns;
        Y(12) <= (B(12) and S(0)) or (not B(12) and S(1)) after 5ns;
        Y(13) <= (B(13) and S(0)) or (not B(13) and S(1)) after 5ns;
        Y(14) <= (B(14) and S(0)) or (not B(14) and S(1)) after 5ns;
        Y(15) <= (B(15) and S(0)) or (not B(15) and S(1)) after 5ns;
        Y(16) <= (B(16) and S(0)) or (not B(16) and S(1)) after 5ns;
        Y(17) <= (B(17) and S(0)) or (not B(17) and S(1)) after 5ns;
        Y(18) <= (B(18) and S(0)) or (not B(18) and S(1)) after 5ns;
        Y(19) <= (B(19) and S(0)) or (not B(19) and S(1)) after 5ns;
        Y(20) <= (B(20) and S(0)) or (not B(20) and S(1)) after 5ns;
        Y(21) <= (B(21) and S(0)) or (not B(21) and S(1)) after 5ns;
        Y(22) <= (B(22) and S(0)) or (not B(22) and S(1)) after 5ns;
        Y(23) <= (B(23) and S(0)) or (not B(23) and S(1)) after 5ns;
        Y(24) <= (B(24) and S(0)) or (not B(24) and S(1)) after 5ns;
        Y(25) <= (B(25) and S(0)) or (not B(25) and S(1)) after 5ns;
        Y(26) <= (B(26) and S(0)) or (not B(26) and S(1)) after 5ns;
        Y(27) <= (B(27) and S(0)) or (not B(27) and S(1)) after 5ns;
        Y(28) <= (B(28) and S(0)) or (not B(28) and S(1)) after 5ns;
        Y(29) <= (B(29) and S(0)) or (not B(29) and S(1)) after 5ns;
        Y(30) <= (B(30) and S(0)) or (not B(30) and S(1)) after 5ns;
        Y(31) <= (B(31) and S(0)) or (not B(31) and S(1)) after 5ns;

--F = A
-- F = A + 1
-- F = A + B
-- F = A + B + 1
-- F = A + NOT(B)
-- F = A + NOT(B) + 1
-- F = A - 1
-- F = A
-- F = A AND B
-- F = A OR B
-- F = A XOR B
-- F = NOT(A)
-- F = B
-- F = srB
-- F = slB

end Behavioral;

