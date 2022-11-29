----------------------------------------------------------------------------------
-- Company: Trinity College architecture
-- Engineer: Faith Olopade
-- 
-- Create Date: 17.10.2022 23:12:00
-- Design Name: 
-- Module Name: CPU_ControlMemory_21364066_TB - Sim
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

entity CPU_ControlMemory_21364066_TB is
--  Port ( ); We don't need ports
end CPU_ControlMemory_21364066_TB;

architecture Sim of CPU_ControlMemory_21364066_TB is
-- Component Declaration for the Unit Under Test (UUT)

component CPU_ControlMemory_21364066
port ( 
        Address : in std_logic_vector (16 downto 0);
        NA : out std_logic_vector (16 downto 0); -- 34-50
        MS : out std_logic_vector (2 downto 0); -- 31-33
        MC : out std_logic; -- 30
        IL : out std_logic; -- 29
        PI : out std_logic; -- 28
        PL : out std_logic; -- 27
        TD : out std_logic_vector (3 downto 0); -- 23-26
        TA : out std_logic_vector (3 downto 0); -- 19-22
        TB : out std_logic_vector (3 downto 0); -- 15-18
        MB : out std_logic; -- 14
        FS : out std_logic_vector (4 downto 0); -- 09-13
        MD : out std_logic; -- 08
        RW : out std_logic; -- 07
        MM : out std_logic; -- 06
        MW : out std_logic; -- 05
        RV : out std_logic; -- 04
        RC : out std_logic; -- 03
        RN : out std_logic; -- 02
        RZ : out std_logic; -- 01
        FL : out std_logic -- 00
    );
end component;

--Inputs

    signal Address_TB : std_logic_vector(16 downto 0) := (others => '0');
    
--Outputs

    signal NA_TB : std_logic_vector(16 downto 0) := (others => '0');   
    signal MS_TB : std_logic_vector(2 downto 0) := (others => '0');
    signal MC_TB : std_logic := '0'; 
    signal IL_TB : std_logic := '0'; 
    signal PI_TB : std_logic := '0'; 
    signal PL_TB : std_logic := '0'; 
    signal TD_TB : std_logic_vector (3 downto 0) := (others => '0');
    signal TA_TB : std_logic_vector (3 downto 0) := (others => '0');
    signal TB_TB : std_logic_vector (3 downto 0) := (others => '0');
    signal MB_TB : std_logic := '0'; 
    signal FS_TB : std_logic_vector (4 downto 0) := (others => '0');
    signal MD_TB : std_logic := '0'; 
    signal RW_TB : std_logic := '0'; 
    signal MM_TB : std_logic := '0'; 
    signal MW_TB : std_logic := '0'; 
    signal RV_TB : std_logic := '0'; 
    signal RC_TB : std_logic := '0'; 
    signal RN_TB : std_logic := '0'; 
    signal RZ_TB : std_logic := '0'; 
    signal FL_TB : std_logic := '0'; 
    
begin
	-- Instantiate the Unit Under Test (UUT)
	
   uut: CPU_ControlMemory_21364066 port map (
        Address => Address_TB,
        NA  => NA_TB,
        MS  => MS_TB,
        MC  => MC_TB,
        IL  => IL_TB,
        PI  => PI_TB,
        PL  => PL_TB,
        TD  => TD_TB,
        TA  => TA_TB,
        TB  => TB_TB,
        MB  => MB_TB,
        FS  => FS_TB,
        MD  => MD_TB,
        RW  => RW_TB,
        MM  => MM_TB,
        MW  => MW_TB,
        RV  => RV_TB,
        RC  => RC_TB,
        RN  => RN_TB,
        RZ  => RZ_TB,
        FL  => FL_TB 
    );

            
stim_proc: process
begin
    --INITIALIZE--
    --Address 0(Last 2 ID + 0)--
    wait for 100ns;
    Address_TB <= "0" & X"0042";

    --Address 1(Last 2 ID + 1)--
    wait for 100ns;
    Address_TB <= "0" & X"0043";

    --Address 2(Last 2 ID + 2)--
    wait for 100ns;
    Address_TB <= "0" & X"0044";

    --Address 3(Last 2 ID + 3)--
    wait for 100ns;
    Address_TB <= "0" & X"0045";

    --Address 4(Last 2 ID + 4)--
    wait for 100ns;
    Address_TB <= "0" & X"0046";

    --Address 5(Last 2 ID + 5)--
    wait for 100ns;
    Address_TB <= "0" & X"0047";

    --Address 6(Last 2 ID + 6)--
    wait for 100ns;
    Address_TB <= "0" & X"0048";

    --Address 7(Last 2 ID + 7)--
    wait for 100ns;
    Address_TB <= "0" & X"0049";

    --Address 8(Last 2 ID + 8)--
    wait for 100ns;
    Address_TB <= "0" & X"004A";

    --Address 9(Last 2 ID + 9)--
    wait for 100ns;
    Address_TB <= "0" & X"004B";

    --Address 10(Last 2 ID + 10)--
    wait for 100ns;
    Address_TB <= "0" & X"004C";

    --Address 11(Last 2 ID + 11)--
    wait for 100ns;
    Address_TB <= "0" & X"004D";

    --Address 12(Last 2 ID + 12)--
    wait for 100ns;
    Address_TB <= "0" & X"004E";

    --Address 13(Last 2 ID + 13)--
    wait for 100ns;
    Address_TB <= "0" & X"004F";

    --Address 14(Last 2 ID + 14)--
    wait for 100ns;
    Address_TB <= "0" & X"0050";

    --Address 15(Last 2 ID + 15)--
    wait for 100ns;
    Address_TB <= "0" & X"0051";

    --Address 16(Last 2 ID + 16)--
    wait for 100ns;
    Address_TB <= "0" & X"0052";

    --Address 17(Last 2 ID + 17)--
    wait for 100ns;
    Address_TB <= "0" & X"0053";

    --Address 18(Last 2 ID + 18)--
    wait for 100ns;
    Address_TB <= "0" & X"0054";

    --Address 19(Last 2 ID + 19)--
    wait for 100ns;
    Address_TB <= "0" & X"0055";

    --Address 20(Last 2 ID + 20)--
    wait for 100ns;
    Address_TB <= "0" & X"0056";

    --Address 21(Last 2 ID + 21)--
    wait for 100ns;
    Address_TB <= "0" & X"0057";

    --Address 22(Last 2 ID + 22)--
    wait for 100ns;
    Address_TB <= "0" & X"0058";

    --Address 23(Last 2 ID + 23)--
    wait for 100ns;
    Address_TB <= "0" & X"0059";

    --Address 24(Last 2 ID + 24)--
    wait for 100ns;
    Address_TB <= "0" & X"005A";

    --Address 25(Last 2 ID + 25)--
    wait for 100ns;
    Address_TB <= "0" & X"005B";

    --Address 26(Last 2 ID + 26)--
    wait for 100ns;
    Address_TB <= "0" & X"005C";

    --Address 27(Last 2 ID + 27)--
    wait for 100ns;
    Address_TB <= "0" & X"005D";

    --Address 28(Last 2 ID + 28)--
    wait for 100ns;
    Address_TB <= "0" & X"005E";

    --Address 29(Last 2 ID + 29)--
    wait for 100ns;
    Address_TB <= "0" & X"005F";

    --Address 30(Last 2 ID + 30)--
    wait for 100ns;
    Address_TB <= "0" & X"0060";

    --Address 31(Last 2 ID + 31)--
    wait for 100ns;
    Address_TB <= "0" & X"0061";

    --Address 32(Last 2 ID + 32)--
    wait for 100ns;
    Address_TB <= "0" & X"0062";

    --Address 33(Last 2 ID + 33)--
    wait for 100ns;
    Address_TB <= "0" & X"0063";

    --Address 34(Last 2 ID + 34)--
    wait for 100ns;
    Address_TB <= "0" & X"0064";

    --Address 35(Last 2 ID + 35)--
    wait for 100ns;
    Address_TB <= "0" & X"0065";

    --Address 36(Last 2 ID + 36)--
    wait for 100ns;
    Address_TB <= "0" & X"0066";

    --Address 37(Last 2 ID + 37)--
    wait for 100ns;
    Address_TB <= "0" & X"0067";

    --Address 38(Last 2 ID + 38)--
    wait for 100ns;
    Address_TB <= "0" & X"0068";

    --Address 39(Last 2 ID + 39)--
    wait for 100ns;
    Address_TB <= "0" & X"0069";

    --Address 40(Last 2 ID + 40)--
    wait for 100ns;
    Address_TB <= "0" & X"006A";

    --Address 41(Last 2 ID + 41)--
    wait for 100ns;
    Address_TB <= "0" & X"006B";

    --Address 42(Last 2 ID + 42)--
    wait for 100ns;
    Address_TB <= "0" & X"006C";

    --Address 43(Last 2 ID + 43)--
    wait for 100ns;
    Address_TB <= "0" & X"006D";

    --Address 44(Last 2 ID + 44)--
    wait for 100ns;
    Address_TB <= "0" & X"006E";

    --Address 45(Last 2 ID + 45)--
    wait for 100ns;
    Address_TB <= "0" & X"006F";

    --Address 46(Last 2 ID + 46)--
    wait for 100ns;
    Address_TB <= "0" & X"0070";

    --Address 47(Last 2 ID + 47)--
    wait for 100ns;
    Address_TB <= "0" & X"0071";

    --Address 48(Last 2 ID + 48)--
    wait for 100ns;
    Address_TB <= "0" & X"0072";

    --Address 49(Last 2 ID + 49)--
    wait for 100ns;
    Address_TB <= "0" & X"0073";

    --Address 50(Last 2 ID + 50)--
    wait for 100ns;
    Address_TB <= "0" & X"0074";

    --Address 51(Last 2 ID + 51)--
    wait for 100ns;
    Address_TB <= "0" & X"0075";

    --Address 52(Last 2 ID + 52)--
    wait for 100ns;
    Address_TB <= "0" & X"0076";

    --Address 53(Last 2 ID + 53)--
    wait for 100ns;
    Address_TB <= "0" & X"0077";

    --Address 54(Last 2 ID + 54)--
    wait for 100ns;
    Address_TB <= "0" & X"0078";

    --Address 55(Last 2 ID + 55)--
    wait for 100ns;
    Address_TB <= "0" & X"0079";

    --Address 56(Last 2 ID + 56)--
    wait for 100ns;
    Address_TB <= "0" & X"007A";

    --Address 57(Last 2 ID + 57)--
    wait for 100ns;
    Address_TB <= "0" & X"007B";

    --Address 58(Last 2 ID + 58)--
    wait for 100ns;
    Address_TB <= "0" & X"007C";

    --Address 59(Last 2 ID + 59)--
    wait for 100ns;
    Address_TB <= "0" & X"007D";

    --Address 60(Last 2 ID + 60)--
    wait for 100ns;
    Address_TB <= "0" & X"007E";

    --Address 61(Last 2 ID + 61)--
    wait for 100ns;
    Address_TB <= "0" & X"007F";

    --Address 62(Last 2 ID + 62)--
    wait for 100ns;
    Address_TB <= "0" & X"0080";

    --Address 63(Last 2 ID + 63)--
    wait for 100ns;
    Address_TB <= "0" & X"0081";

    --Address 64(Last 2 ID + 64)--
    wait for 100ns;
    Address_TB <= "0" & X"0082";

    --Address 65(Last 2 ID + 65)--
    wait for 100ns;
    Address_TB <= "0" & X"0083";

    --Address 66(Last 2 ID + 66)--
    wait for 100ns;
    Address_TB <= "0" & X"0084";

    --Address 67(Last 2 ID + 67)--
    wait for 100ns;
    Address_TB <= "0" & X"0085";

    --Address 68(Last 2 ID + 68)--
    wait for 100ns;
    Address_TB <= "0" & X"0086";

    --Address 69(Last 2 ID + 69)--
    wait for 100ns;
    Address_TB <= "0" & X"0087";

    --Address 70(Last 2 ID + 70)--
    wait for 100ns;
    Address_TB <= "0" & X"0088";

    --Address 71(Last 2 ID + 71)--
    wait for 100ns;
    Address_TB <= "0" & X"0089";

    --Address 72(Last 2 ID + 72)--
    wait for 100ns;
    Address_TB <= "0" & X"008A";

    --Address 73(Last 2 ID + 73)--
    wait for 100ns;
    Address_TB <= "0" & X"008B";

    --Address 74(Last 2 ID + 74)--
    wait for 100ns;
    Address_TB <= "0" & X"008C";

    --Address 75(Last 2 ID + 75)--
    wait for 100ns;
    Address_TB <= "0" & X"008D";

    --Address 76(Last 2 ID + 76)--
    wait for 100ns;
    Address_TB <= "0" & X"008E";

    --Address 77(Last 2 ID + 77)--
    wait for 100ns;
    Address_TB <= "0" & X"008F";

    --Address 78(Last 2 ID + 78)--
    wait for 100ns;
    Address_TB <= "0" & X"0090";

    --Address 79(Last 2 ID + 79)--
    wait for 100ns;
    Address_TB <= "0" & X"0091";

    --Address 80(Last 2 ID + 80)--
    wait for 100ns;
    Address_TB <= "0" & X"0092";

    --Address 81(Last 2 ID + 81)--
    wait for 100ns;
    Address_TB <= "0" & X"0093";

    --Address 82(Last 2 ID + 82)--
    wait for 100ns;
    Address_TB <= "0" & X"0094";

    --Address 83(Last 2 ID + 83)--
    wait for 100ns;
    Address_TB <= "0" & X"0095";

    --Address 84(Last 2 ID + 84)--
    wait for 100ns;
    Address_TB <= "0" & X"0096";

    --Address 85(Last 2 ID + 85)--
    wait for 100ns;
    Address_TB <= "0" & X"0097";

    --Address 86(Last 2 ID + 86)--
    wait for 100ns;
    Address_TB <= "0" & X"0098";

    --Address 87(Last 2 ID + 87)--
    wait for 100ns;
    Address_TB <= "0" & X"0099";

    --Address 88(Last 2 ID + 88)--
    wait for 100ns;
    Address_TB <= "0" & X"009A";

    --Address 89(Last 2 ID + 89)--
    wait for 100ns;
    Address_TB <= "0" & X"009B";

    --Address 90(Last 2 ID + 90)--
    wait for 100ns;
    Address_TB <= "0" & X"009C";

    --Address 91(Last 2 ID + 91)--
    wait for 100ns;
    Address_TB <= "0" & X"009D";

    --Address 92(Last 2 ID + 92)--
    wait for 100ns;
    Address_TB <= "0" & X"009E";

    --Address 93(Last 2 ID + 93)--
    wait for 100ns;
    Address_TB <= "0" & X"009F";

    --Address 94(Last 2 ID + 94)--
    wait for 100ns;
    Address_TB <= "0" & X"00A0";

    --Address 95(Last 2 ID + 95)--
    wait for 100ns;
    Address_TB <= "0" & X"00A1";

    --Address 96(Last 2 ID + 96)--
    wait for 100ns;
    Address_TB <= "0" & X"00A2";

    --Address 97(Last 2 ID + 97)--
    wait for 100ns;
    Address_TB <= "0" & X"00A3";

    --Address 98(Last 2 ID + 98)--
    wait for 100ns;
    Address_TB <= "0" & X"00A4";

    --Address 99(Last 2 ID + 99)--
    wait for 100ns;
    Address_TB <= "0" & X"00A5";

    --Address 100(Last 2 ID + 100)--
    wait for 100ns;
    Address_TB <= "0" & X"00A6";

    --Address 101(Last 2 ID + 101)--
    wait for 100ns;
    Address_TB <= "0" & X"00A7";

    --Address 102(Last 2 ID + 102)--
    wait for 100ns;
    Address_TB <= "0" & X"00A8";

    --Address 103(Last 2 ID + 103)--
    wait for 100ns;
    Address_TB <= "0" & X"00A9";

    --Address 104(Last 2 ID + 104)--
    wait for 100ns;
    Address_TB <= "0" & X"00AA";

    --Address 105(Last 2 ID + 105)--
    wait for 100ns;
    Address_TB <= "0" & X"00AB";

    --Address 106(Last 2 ID + 106)--
    wait for 100ns;
    Address_TB <= "0" & X"00AC";

    --Address 107(Last 2 ID + 107)--
    wait for 100ns;
    Address_TB <= "0" & X"00AD";

    --Address 108(Last 2 ID + 108)--
    wait for 100ns;
    Address_TB <= "0" & X"00AE";

    --Address 109(Last 2 ID + 109)--
    wait for 100ns;
    Address_TB <= "0" & X"00AF";

    --Address 110(Last 2 ID + 110)--
    wait for 100ns;
    Address_TB <= "0" & X"00B0";

    --Address 111(Last 2 ID + 111)--
    wait for 100ns;
    Address_TB <= "0" & X"00B1";

    --Address 112(Last 2 ID + 112)--
    wait for 100ns;
    Address_TB <= "0" & X"00B2";

    --Address 113(Last 2 ID + 113)--
    wait for 100ns;
    Address_TB <= "0" & X"00B3";

    --Address 114(Last 2 ID + 114)--
    wait for 100ns;
    Address_TB <= "0" & X"00B4";

    --Address 115(Last 2 ID + 115)--
    wait for 100ns;
    Address_TB <= "0" & X"00B5";

    --Address 116(Last 2 ID + 116)--
    wait for 100ns;
    Address_TB <= "0" & X"00B6";

    --Address 117(Last 2 ID + 117)--
    wait for 100ns;
    Address_TB <= "0" & X"00B7";

    --Address 118(Last 2 ID + 118)--
    wait for 100ns;
    Address_TB <= "0" & X"00B8";

    --Address 119(Last 2 ID + 119)--
    wait for 100ns;
    Address_TB <= "0" & X"00B9";

    --Address 120(Last 2 ID + 120)--
    wait for 100ns;
    Address_TB <= "0" & X"00BA";

    --Address 121(Last 2 ID + 121)--
    wait for 100ns;
    Address_TB <= "0" & X"00BB";

    --Address 122(Last 2 ID + 122)--
    wait for 100ns;
    Address_TB <= "0" & X"00BC";

    --Address 123(Last 2 ID + 123)--
    wait for 100ns;
    Address_TB <= "0" & X"00BD";

    --Address 124(Last 2 ID + 124)--
    wait for 100ns;
    Address_TB <= "0" & X"00BE";

    --Address 125(Last 2 ID + 125)--
    wait for 100ns;
    Address_TB <= "0" & X"00BF";

    --Address 126(Last 2 ID + 126)--
    wait for 100ns;
    Address_TB <= "0" & X"00C0";

    --Address 127(Last 2 ID + 127)--
    wait for 100ns;
    Address_TB <= "0" & X"00C1";



    
    --READ--
    --Address 0(Last 2 ID + 0)--
    wait for 100ns;
    Address_TB <= "0" & X"0042";

    --Address 1(Last 2 ID + 1)--
    wait for 100ns;
    Address_TB <= "0" & X"0043";

    --Address 2(Last 2 ID + 2)--
    wait for 100ns;
    Address_TB <= "0" & X"0044";

    --Address 3(Last 2 ID + 3)--
    wait for 100ns;
    Address_TB <= "0" & X"0045";

    --Address 4(Last 2 ID + 4)--
    wait for 100ns;
    Address_TB <= "0" & X"0046";

    --Address 5(Last 2 ID + 5)--
    wait for 100ns;
    Address_TB <= "0" & X"0047";

    --Address 6(Last 2 ID + 6)--
    wait for 100ns;
    Address_TB <= "0" & X"0048";

    --Address 7(Last 2 ID + 7)--
    wait for 100ns;
    Address_TB <= "0" & X"0049";

    --Address 8(Last 2 ID + 8)--
    wait for 100ns;
    Address_TB <= "0" & X"004A";

    --Address 9(Last 2 ID + 9)--
    wait for 100ns;
    Address_TB <= "0" & X"004B";

    --Address 10(Last 2 ID + 10)--
    wait for 100ns;
    Address_TB <= "0" & X"004C";

    --Address 11(Last 2 ID + 11)--
    wait for 100ns;
    Address_TB <= "0" & X"004D";

    --Address 12(Last 2 ID + 12)--
    wait for 100ns;
    Address_TB <= "0" & X"004E";

    --Address 13(Last 2 ID + 13)--
    wait for 100ns;
    Address_TB <= "0" & X"004F";

    --Address 14(Last 2 ID + 14)--
    wait for 100ns;
    Address_TB <= "0" & X"0050";

    --Address 15(Last 2 ID + 15)--
    wait for 100ns;
    Address_TB <= "0" & X"0051";

    --Address 16(Last 2 ID + 16)--
    wait for 100ns;
    Address_TB <= "0" & X"0052";

    --Address 17(Last 2 ID + 17)--
    wait for 100ns;
    Address_TB <= "0" & X"0053";

    --Address 18(Last 2 ID + 18)--
    wait for 100ns;
    Address_TB <= "0" & X"0054";

    --Address 19(Last 2 ID + 19)--
    wait for 100ns;
    Address_TB <= "0" & X"0055";

    --Address 20(Last 2 ID + 20)--
    wait for 100ns;
    Address_TB <= "0" & X"0056";

    --Address 21(Last 2 ID + 21)--
    wait for 100ns;
    Address_TB <= "0" & X"0057";

    --Address 22(Last 2 ID + 22)--
    wait for 100ns;
    Address_TB <= "0" & X"0058";

    --Address 23(Last 2 ID + 23)--
    wait for 100ns;
    Address_TB <= "0" & X"0059";

    --Address 24(Last 2 ID + 24)--
    wait for 100ns;
    Address_TB <= "0" & X"005A";

    --Address 25(Last 2 ID + 25)--
    wait for 100ns;
    Address_TB <= "0" & X"005B";

    --Address 26(Last 2 ID + 26)--
    wait for 100ns;
    Address_TB <= "0" & X"005C";

    --Address 27(Last 2 ID + 27)--
    wait for 100ns;
    Address_TB <= "0" & X"005D";

    --Address 28(Last 2 ID + 28)--
    wait for 100ns;
    Address_TB <= "0" & X"005E";

    --Address 29(Last 2 ID + 29)--
    wait for 100ns;
    Address_TB <= "0" & X"005F";

    --Address 30(Last 2 ID + 30)--
    wait for 100ns;
    Address_TB <= "0" & X"0060";

    --Address 31(Last 2 ID + 31)--
    wait for 100ns;
    Address_TB <= "0" & X"0061";

    --Address 32(Last 2 ID + 32)--
    wait for 100ns;
    Address_TB <= "0" & X"0062";

    --Address 33(Last 2 ID + 33)--
    wait for 100ns;
    Address_TB <= "0" & X"0063";

    --Address 34(Last 2 ID + 34)--
    wait for 100ns;
    Address_TB <= "0" & X"0064";

    --Address 35(Last 2 ID + 35)--
    wait for 100ns;
    Address_TB <= "0" & X"0065";

    --Address 36(Last 2 ID + 36)--
    wait for 100ns;
    Address_TB <= "0" & X"0066";

    --Address 37(Last 2 ID + 37)--
    wait for 100ns;
    Address_TB <= "0" & X"0067";

    --Address 38(Last 2 ID + 38)--
    wait for 100ns;
    Address_TB <= "0" & X"0068";

    --Address 39(Last 2 ID + 39)--
    wait for 100ns;
    Address_TB <= "0" & X"0069";

    --Address 40(Last 2 ID + 40)--
    wait for 100ns;
    Address_TB <= "0" & X"006A";

    --Address 41(Last 2 ID + 41)--
    wait for 100ns;
    Address_TB <= "0" & X"006B";

    --Address 42(Last 2 ID + 42)--
    wait for 100ns;
    Address_TB <= "0" & X"006C";

    --Address 43(Last 2 ID + 43)--
    wait for 100ns;
    Address_TB <= "0" & X"006D";

    --Address 44(Last 2 ID + 44)--
    wait for 100ns;
    Address_TB <= "0" & X"006E";

    --Address 45(Last 2 ID + 45)--
    wait for 100ns;
    Address_TB <= "0" & X"006F";

    --Address 46(Last 2 ID + 46)--
    wait for 100ns;
    Address_TB <= "0" & X"0070";

    --Address 47(Last 2 ID + 47)--
    wait for 100ns;
    Address_TB <= "0" & X"0071";

    --Address 48(Last 2 ID + 48)--
    wait for 100ns;
    Address_TB <= "0" & X"0072";

    --Address 49(Last 2 ID + 49)--
    wait for 100ns;
    Address_TB <= "0" & X"0073";

    --Address 50(Last 2 ID + 50)--
    wait for 100ns;
    Address_TB <= "0" & X"0074";

    --Address 51(Last 2 ID + 51)--
    wait for 100ns;
    Address_TB <= "0" & X"0075";

    --Address 52(Last 2 ID + 52)--
    wait for 100ns;
    Address_TB <= "0" & X"0076";

    --Address 53(Last 2 ID + 53)--
    wait for 100ns;
    Address_TB <= "0" & X"0077";

    --Address 54(Last 2 ID + 54)--
    wait for 100ns;
    Address_TB <= "0" & X"0078";

    --Address 55(Last 2 ID + 55)--
    wait for 100ns;
    Address_TB <= "0" & X"0079";

    --Address 56(Last 2 ID + 56)--
    wait for 100ns;
    Address_TB <= "0" & X"007A";

    --Address 57(Last 2 ID + 57)--
    wait for 100ns;
    Address_TB <= "0" & X"007B";

    --Address 58(Last 2 ID + 58)--
    wait for 100ns;
    Address_TB <= "0" & X"007C";

    --Address 59(Last 2 ID + 59)--
    wait for 100ns;
    Address_TB <= "0" & X"007D";

    --Address 60(Last 2 ID + 60)--
    wait for 100ns;
    Address_TB <= "0" & X"007E";

    --Address 61(Last 2 ID + 61)--
    wait for 100ns;
    Address_TB <= "0" & X"007F";

    --Address 62(Last 2 ID + 62)--
    wait for 100ns;
    Address_TB <= "0" & X"0080";

    --Address 63(Last 2 ID + 63)--
    wait for 100ns;
    Address_TB <= "0" & X"0081";

    --Address 64(Last 2 ID + 64)--
    wait for 100ns;
    Address_TB <= "0" & X"0082";

    --Address 65(Last 2 ID + 65)--
    wait for 100ns;
    Address_TB <= "0" & X"0083";

    --Address 66(Last 2 ID + 66)--
    wait for 100ns;
    Address_TB <= "0" & X"0084";

    --Address 67(Last 2 ID + 67)--
    wait for 100ns;
    Address_TB <= "0" & X"0085";

    --Address 68(Last 2 ID + 68)--
    wait for 100ns;
    Address_TB <= "0" & X"0086";

    --Address 69(Last 2 ID + 69)--
    wait for 100ns;
    Address_TB <= "0" & X"0087";

    --Address 70(Last 2 ID + 70)--
    wait for 100ns;
    Address_TB <= "0" & X"0088";

    --Address 71(Last 2 ID + 71)--
    wait for 100ns;
    Address_TB <= "0" & X"0089";

    --Address 72(Last 2 ID + 72)--
    wait for 100ns;
    Address_TB <= "0" & X"008A";

    --Address 73(Last 2 ID + 73)--
    wait for 100ns;
    Address_TB <= "0" & X"008B";

    --Address 74(Last 2 ID + 74)--
    wait for 100ns;
    Address_TB <= "0" & X"008C";

    --Address 75(Last 2 ID + 75)--
    wait for 100ns;
    Address_TB <= "0" & X"008D";

    --Address 76(Last 2 ID + 76)--
    wait for 100ns;
    Address_TB <= "0" & X"008E";

    --Address 77(Last 2 ID + 77)--
    wait for 100ns;
    Address_TB <= "0" & X"008F";

    --Address 78(Last 2 ID + 78)--
    wait for 100ns;
    Address_TB <= "0" & X"0090";

    --Address 79(Last 2 ID + 79)--
    wait for 100ns;
    Address_TB <= "0" & X"0091";

    --Address 80(Last 2 ID + 80)--
    wait for 100ns;
    Address_TB <= "0" & X"0092";

    --Address 81(Last 2 ID + 81)--
    wait for 100ns;
    Address_TB <= "0" & X"0093";

    --Address 82(Last 2 ID + 82)--
    wait for 100ns;
    Address_TB <= "0" & X"0094";

    --Address 83(Last 2 ID + 83)--
    wait for 100ns;
    Address_TB <= "0" & X"0095";

    --Address 84(Last 2 ID + 84)--
    wait for 100ns;
    Address_TB <= "0" & X"0096";

    --Address 85(Last 2 ID + 85)--
    wait for 100ns;
    Address_TB <= "0" & X"0097";

    --Address 86(Last 2 ID + 86)--
    wait for 100ns;
    Address_TB <= "0" & X"0098";

    --Address 87(Last 2 ID + 87)--
    wait for 100ns;
    Address_TB <= "0" & X"0099";

    --Address 88(Last 2 ID + 88)--
    wait for 100ns;
    Address_TB <= "0" & X"009A";

    --Address 89(Last 2 ID + 89)--
    wait for 100ns;
    Address_TB <= "0" & X"009B";

    --Address 90(Last 2 ID + 90)--
    wait for 100ns;
    Address_TB <= "0" & X"009C";

    --Address 91(Last 2 ID + 91)--
    wait for 100ns;
    Address_TB <= "0" & X"009D";

    --Address 92(Last 2 ID + 92)--
    wait for 100ns;
    Address_TB <= "0" & X"009E";

    --Address 93(Last 2 ID + 93)--
    wait for 100ns;
    Address_TB <= "0" & X"009F";

    --Address 94(Last 2 ID + 94)--
    wait for 100ns;
    Address_TB <= "0" & X"00A0";

    --Address 95(Last 2 ID + 95)--
    wait for 100ns;
    Address_TB <= "0" & X"00A1";

    --Address 96(Last 2 ID + 96)--
    wait for 100ns;
    Address_TB <= "0" & X"00A2";

    --Address 97(Last 2 ID + 97)--
    wait for 100ns;
    Address_TB <= "0" & X"00A3";

    --Address 98(Last 2 ID + 98)--
    wait for 100ns;
    Address_TB <= "0" & X"00A4";

    --Address 99(Last 2 ID + 99)--
    wait for 100ns;
    Address_TB <= "0" & X"00A5";

    --Address 100(Last 2 ID + 100)--
    wait for 100ns;
    Address_TB <= "0" & X"00A6";

    --Address 101(Last 2 ID + 101)--
    wait for 100ns;
    Address_TB <= "0" & X"00A7";

    --Address 102(Last 2 ID + 102)--
    wait for 100ns;
    Address_TB <= "0" & X"00A8";

    --Address 103(Last 2 ID + 103)--
    wait for 100ns;
    Address_TB <= "0" & X"00A9";

    --Address 104(Last 2 ID + 104)--
    wait for 100ns;
    Address_TB <= "0" & X"00AA";

    --Address 105(Last 2 ID + 105)--
    wait for 100ns;
    Address_TB <= "0" & X"00AB";

    --Address 106(Last 2 ID + 106)--
    wait for 100ns;
    Address_TB <= "0" & X"00AC";

    --Address 107(Last 2 ID + 107)--
    wait for 100ns;
    Address_TB <= "0" & X"00AD";

    --Address 108(Last 2 ID + 108)--
    wait for 100ns;
    Address_TB <= "0" & X"00AE";

    --Address 109(Last 2 ID + 109)--
    wait for 100ns;
    Address_TB <= "0" & X"00AF";

    --Address 110(Last 2 ID + 110)--
    wait for 100ns;
    Address_TB <= "0" & X"00B0";

    --Address 111(Last 2 ID + 111)--
    wait for 100ns;
    Address_TB <= "0" & X"00B1";

    --Address 112(Last 2 ID + 112)--
    wait for 100ns;
    Address_TB <= "0" & X"00B2";

    --Address 113(Last 2 ID + 113)--
    wait for 100ns;
    Address_TB <= "0" & X"00B3";

    --Address 114(Last 2 ID + 114)--
    wait for 100ns;
    Address_TB <= "0" & X"00B4";

    --Address 115(Last 2 ID + 115)--
    wait for 100ns;
    Address_TB <= "0" & X"00B5";

    --Address 116(Last 2 ID + 116)--
    wait for 100ns;
    Address_TB <= "0" & X"00B6";

    --Address 117(Last 2 ID + 117)--
    wait for 100ns;
    Address_TB <= "0" & X"00B7";

    --Address 118(Last 2 ID + 118)--
    wait for 100ns;
    Address_TB <= "0" & X"00B8";

    --Address 119(Last 2 ID + 119)--
    wait for 100ns;
    Address_TB <= "0" & X"00B9";

    --Address 120(Last 2 ID + 120)--
    wait for 100ns;
    Address_TB <= "0" & X"00BA";

    --Address 121(Last 2 ID + 121)--
    wait for 100ns;
    Address_TB <= "0" & X"00BB";

    --Address 122(Last 2 ID + 122)--
    wait for 100ns;
    Address_TB <= "0" & X"00BC";

    --Address 123(Last 2 ID + 123)--
    wait for 100ns;
    Address_TB <= "0" & X"00BD";

    --Address 124(Last 2 ID + 124)--
    wait for 100ns;
    Address_TB <= "0" & X"00BE";

    --Address 125(Last 2 ID + 125)--
    wait for 100ns;
    Address_TB <= "0" & X"00BF";

    --Address 126(Last 2 ID + 126)--
    wait for 100ns;
    Address_TB <= "0" & X"00C0";

    --Address 127(Last 2 ID + 127)--
    wait for 100ns;
    Address_TB <= "0" & X"00C1";

   end process;
end Sim;