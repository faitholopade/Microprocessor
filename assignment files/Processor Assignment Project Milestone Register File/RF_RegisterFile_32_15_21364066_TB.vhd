----------------------------------------------------------------------------------
-- Company: Trinity College architecture
-- Engineer: Faith Olopade
-- 
-- Create Date: 24.10.2022 17:24:00
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_21364066_TB - Sim
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

entity RF_RegisterFile_32_15_21364066_TB is
--  Port ( ); We don't need ports
end RF_RegisterFile_32_15_21364066_TB;

architecture Sim of RF_RegisterFile_32_15_21364066_TB is
-- Component Declaration for the Unit Under Test (UUT)

component RF_RegisterFile_32_15_21364066
port ( 
            SA : in std_logic_vector(4 downto 0);
            SB : in std_logic_vector(4 downto 0);
            DR : in std_logic_vector(4 downto 0);
            Clock : in std_logic;
            RW : in std_logic;
            D : in std_logic_vector(31 downto 0);
            TB : in std_logic_vector(3 downto 0);
            TD : in std_logic_vector(3 downto 0);
            TA : in std_logic_vector(3 downto 0);
            A : out std_logic_vector(31 downto 0);
            B : out std_logic_vector(31 downto 0)
        );
end component;

--Inputs 
signal SA_TB : std_logic_vector(4 downto 0) := (others => '0');
signal DR_TB : std_logic_vector(4 downto 0) := (others => '0');
signal SB_TB : std_logic_vector(4 downto 0) := (others => '0');

signal RW_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';

signal D_TB : std_logic_vector(31 downto 0) := (others => '0');
signal TB_TB : std_logic_vector(3 downto 0) := (others => '0');
signal TD_TB : std_logic_vector(3 downto 0) := (others => '0');
signal TA_TB : std_logic_vector(3 downto 0) := (others => '0');

--Outputs
signal A_TB : std_logic_vector(31 downto 0) := (others => '0');
signal B_TB : std_logic_vector(31 downto 0) := (others => '0');

    constant period : time := 10ns;


begin
-- Instantiate the Unit Under Test (UUT)
	
   uut: RF_RegisterFile_32_15_21364066 port map (
    SA => SA_TB, 
    DR => DR_TB, 
    SB => SB_TB, 
    RW => RW_TB, 
    Clock => Clock_TB,
    D => D_TB, 
    TB => TB_TB,
    TD => TD_TB, 
    TA => TA_TB, 
    A => A_TB,
    B => B_TB
);

Clock_TB <= not Clock_TB after period/4;

stim_proc: process

begin 

-- RW_TB    <= '1';
-- TD_TB    <= "0000";
-- TA_TB    <= "0000";
-- TB_TB    <= "0000";
--SA_TB <= "00000" after period/4;
--SB_TB <= "00000" after period/4;

-- GENERAL PURPOSE REGISTERS --

--0 (showing write to register)
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100010" after period/4;
DR_TB <= "00000" after period/4;
TD_TB    <= "0000";
-- SA_TB <= "00000" after period/4;
-- SB_TB <= "00000" after period/4;

--0 (showing read from register)
-- wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
-- D_TB  <= "00000001010001011111110101100010" after period/4;
DR_TB <= "00000" after period/4;
SA_TB <= "00000" after period/4;
SB_TB <= "00000" after period/4;
TA_TB    <= "0000";
TB_TB    <= "0000";

--1
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100011" after period/4;
DR_TB <= "00001" after period/4;
SA_TB <= "00000" after period/4;
SB_TB <= "00000" after period/4;
 
--2
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100100" after period/4;
DR_TB <= "00010" after period/4;
SA_TB <= "00000" after period/4;
SB_TB <= "00000" after period/4;
 
--3
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100101" after period/4;
DR_TB <= "00011" after period/4;
SA_TB <= "00001" after period/4;
SB_TB <= "00001" after period/4;
 
--4
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100110" after period/4;
DR_TB <= "00100" after period/4;
SA_TB <= "00010" after period/4;
SB_TB <= "00010" after period/4;
 
--5
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100111" after period/4;
DR_TB <= "00101" after period/4;
SA_TB <= "00011" after period/4;
SB_TB <= "00011" after period/4;
 
--6
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101000" after period/4;
DR_TB <= "00110" after period/4;
SA_TB <= "00100" after period/4;
SB_TB <= "00100" after period/4;
 
--7
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101001" after period/4;
DR_TB <= "00111" after period/4;
SA_TB <= "00101" after period/4;
SB_TB <= "00101" after period/4;
 
--8
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101010" after period/4;
DR_TB <= "01000" after period/4;
SA_TB <= "00110" after period/4;
SB_TB <= "00110" after period/4;
 
--9
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101011" after period/4;
DR_TB <= "01001" after period/4;
SA_TB <= "00111" after period/4;
SB_TB <= "00111" after period/4;
 
--10
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101100" after period/4;
DR_TB <= "01010" after period/4;
SA_TB <= "01000" after period/4;
SB_TB <= "01000" after period/4;
 
--11
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101101" after period/4;
DR_TB <= "01011" after period/4;
SA_TB <= "01001" after period/4;
SB_TB <= "01001" after period/4;
 
--12
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101110" after period/4;
DR_TB <= "01100" after period/4;
SA_TB <= "01010" after period/4;
SB_TB <= "01010" after period/4;
 
--13
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101111" after period/4;
DR_TB <= "01101" after period/4;
SA_TB <= "01011" after period/4;
SB_TB <= "01011" after period/4;
 
--14
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110000" after period/4;
DR_TB <= "01110" after period/4;
SA_TB <= "01100" after period/4;
SB_TB <= "01100" after period/4;
 
--15
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110001" after period/4;
DR_TB <= "01111" after period/4;
SA_TB <= "01101" after period/4;
SB_TB <= "01101" after period/4;
 
--16
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110010" after period/4;
DR_TB <= "10000" after period/4;
SA_TB <= "01110" after period/4;
SB_TB <= "01110" after period/4;
 
--17
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110011" after period/4;
DR_TB <= "10001" after period/4;
SA_TB <= "01111" after period/4;
SB_TB <= "01111" after period/4;
 
--18
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110100" after period/4;
DR_TB <= "10010" after period/4;
SA_TB <= "10000" after period/4;
SB_TB <= "10000" after period/4;
 
--19
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110101" after period/4;
DR_TB <= "10011" after period/4;
SA_TB <= "10001" after period/4;
SB_TB <= "10001" after period/4;
 
--20
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110110" after period/4;
DR_TB <= "10100" after period/4;
SA_TB <= "10010" after period/4;
SB_TB <= "10010" after period/4;
 
--21
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110111" after period/4;
DR_TB <= "10101" after period/4;
SA_TB <= "10011" after period/4;
SB_TB <= "10011" after period/4;
 
--22
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111000" after period/4;
DR_TB <= "10110" after period/4;
SA_TB <= "10100" after period/4;
SB_TB <= "10100" after period/4;
 
--23
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111001" after period/4;
DR_TB <= "10111" after period/4;
SA_TB <= "10101" after period/4;
SB_TB <= "10101" after period/4;
 
--24
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111010" after period/4;
DR_TB <= "11000" after period/4;
SA_TB <= "10110" after period/4;
SB_TB <= "10110" after period/4;
 
--25
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111011" after period/4;
DR_TB <= "11001" after period/4;
SA_TB <= "10111" after period/4;
SB_TB <= "10111" after period/4;
 
--26
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111100" after period/4;
DR_TB <= "11010" after period/4;
SA_TB <= "11000" after period/4;
SB_TB <= "11000" after period/4;
 
--27
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111101" after period/4;
DR_TB <= "11011" after period/4;
SA_TB <= "11001" after period/4;
SB_TB <= "11001" after period/4;
 
--28
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111110" after period/4;
DR_TB <= "11100" after period/4;
SA_TB <= "11010" after period/4;
SB_TB <= "11010" after period/4;
 
--29
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101111111" after period/4;
DR_TB <= "11101" after period/4;
SA_TB <= "11011" after period/4;
SB_TB <= "11011" after period/4;
 
--30
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110110000000" after period/4;
DR_TB <= "11110" after period/4;
SA_TB <= "11100" after period/4;
SB_TB <= "11100" after period/4;
 
--31
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110110000001" after period/4;
DR_TB <= "11111" after period/4;
SA_TB <= "11101" after period/4;
SB_TB <= "11101" after period/4;

wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110110000010" after period/4;
DR_TB <= "00000" after period/4;
SA_TB <= "11110" after period/4;
SB_TB <= "11110" after period/4;

wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100010" after period/4;
DR_TB <= "00001" after period/4;
SA_TB <= "11111" after period/4;
SB_TB <= "11111" after period/4;

--TEMP REGISTERS --
 
--0
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100011" after period/4;
TA_TB    <= "0000" after period/4;
TB_TB    <= "0000" after period/4;
TD_TB     <= "0001" after period/4;
DR_TB <= "00000" after period/4;
SA_TB <= "00000" after period/4;
SB_TB <= "00000" after period/4;
 
--1
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100100" after period/4;
TA_TB    <= "0001" after period/4;
TB_TB     <= "0001" after period/4;
TD_TB     <= "0010" after period/4;
DR_TB <= "00001" after period/4;
SA_TB <= "00000" after period/4;
SB_TB <= "00000" after period/4;
 
--2
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100101" after period/4;
TA_TB    <= "0010" after period/4;
TB_TB     <= "0010" after period/4;
TD_TB     <= "0011" after period/4;
DR_TB <= "00010" after period/4;
SA_TB <= "00001" after period/4;
SB_TB <= "00001" after period/4;
 
--3
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100110" after period/4;
TA_TB    <= "0011" after period/4;
TB_TB     <= "0011" after period/4;
TD_TB     <= "0100" after period/4;
DR_TB <= "00011" after period/4;
SA_TB <= "00010" after period/4;
SB_TB <= "00010" after period/4;
 
--4
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100111" after period/4;
TA_TB    <= "0100" after period/4;
TB_TB     <= "0100" after period/4;
TD_TB     <= "0101" after period/4;
DR_TB <= "00100" after period/4;
SA_TB <= "00011" after period/4;
SB_TB <= "00011" after period/4;
 
--5
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101000" after period/4;
TA_TB    <= "0101" after period/4;
TB_TB     <= "0101" after period/4;
TD_TB     <= "0110" after period/4;
DR_TB <= "00101" after period/4;
SA_TB <= "00100" after period/4;
SB_TB <= "00100" after period/4;
 
--6
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101001" after period/4;
TA_TB    <= "0110" after period/4;
TB_TB     <= "0110" after period/4;
TD_TB     <= "0111" after period/4;
DR_TB <= "00110" after period/4;
SA_TB <= "00101" after period/4;
SB_TB <= "00101" after period/4;
 
--7
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101010" after period/4;
TA_TB    <= "0111" after period/4;
TB_TB     <= "0111" after period/4;
TD_TB     <= "1000" after period/4;
DR_TB <= "00111" after period/4;
SA_TB <= "00110" after period/4;
SB_TB <= "00110" after period/4;
 
--8
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101011" after period/4;
TA_TB    <= "1000" after period/4;
TB_TB     <= "1000" after period/4;
TD_TB     <= "1001" after period/4;
DR_TB <= "01000" after period/4;
SA_TB <= "00111" after period/4;
SB_TB <= "00111" after period/4;
 
--9
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101100" after period/4;
TA_TB    <= "1001" after period/4;
TB_TB     <= "1001" after period/4;
TD_TB     <= "1010" after period/4;
DR_TB <= "01001" after period/4;
SA_TB <= "01000" after period/4;
SB_TB <= "01000" after period/4;
 
--10
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101101" after period/4;
TA_TB    <= "1010" after period/4;
TB_TB     <= "1010" after period/4;
TD_TB     <= "1011" after period/4;
DR_TB <= "01010" after period/4;
SA_TB <= "01001" after period/4;
SB_TB <= "01001" after period/4;
 
--11
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101110" after period/4;
TA_TB    <= "1011" after period/4;
TB_TB     <= "1011" after period/4;
TD_TB     <= "1100" after period/4;
DR_TB <= "01011" after period/4;
SA_TB <= "01010" after period/4;
SB_TB <= "01010" after period/4;
 
--12
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101101111" after period/4;
TA_TB    <= "1100" after period/4;
TB_TB     <= "1100" after period/4;
TD_TB     <= "1101" after period/4;
DR_TB <= "01100" after period/4;
SA_TB <= "01011" after period/4;
SB_TB <= "01011" after period/4;
 
--13
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110000" after period/4;
TA_TB    <= "1101" after period/4;
TB_TB     <= "1101" after period/4;
TD_TB     <= "1110" after period/4;
DR_TB <= "01101" after period/4;
SA_TB <= "01100" after period/4;
SB_TB <= "01100" after period/4;
 
--14
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101110001" after period/4;  --81
TA_TB    <= "1110" after period/4;
TB_TB     <= "1110" after period/4;
TD_TB    <= "1111" after period/4;
DR_TB <= "01110" after period/4;
SA_TB <= "01101" after period/4;
SB_TB <= "01101" after period/4;

--15
wait until Clock_TB'event and Clock_TB = '1';
RW_TB    <= '1' after period/4;
D_TB  <= "00000001010001011111110101100010" after period/4; --orig
TA_TB    <= "1111" after period/4;
TB_TB     <= "1111" after period/4;
TD_TB     <= "0000" after period/4;
DR_TB <= "01110" after period/4;
SA_TB <= "01110" after period/4;
SB_TB <= "01110" after period/4;


--wait until Clock_TB'event and Clock_TB = '1';
--RW_TB    <= '1' after period/4;
--D_TB  <= "00000001010001011111110101100011" after period/4; --orig + 1
--TA_TB    <= "0000" after period/4;
--TB_TB     <= "0000" after period/4;
--TD_TB     <= "0001" after period/4;
--DR_TB <= "01111" after period/4;
--SA_TB <= "01111" after period/4;
--SB_TB <= "01111" after period/4;
 
end process ;

end  Sim;
