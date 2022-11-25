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
--use IEEE.NUMERIC_STD.ALL;

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
    --Address 0--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000042";
    
    --Address 1--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000043" ;

    --Address 2--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000044";

    --Address 3--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000045" ;

    --Address 4--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000046";

    --Address 5--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000047";

    --Address 6--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000048";

    --Address 7--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000049";

    --Address 8--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000004A";

    --Address 9--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000004B";

    --Address 10--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000004C";

    --Address 11--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000004D";

    --Address 12--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000004E";

    --Address 13--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000004F";

    --Address 14--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000050";

    --Address 15--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000051";

    --Address 16--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000052";

    --Address 17--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000053";

    --Address 18--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000054";

    --Address 19--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000055";

    --Address 20--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000056";

    --Address 21--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000057";

    --Address 22--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000058";

    --Address 23--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000059";

    --Address 24--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000005A";

    --Address 25--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000005B";

    --Address 26--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000005C";

    --Address 27--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000005D";

    --Address 28--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000005E";

    --Address 29--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000005F";

    --Address 30--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000060";

    --Address 31--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000061";

    --Address 32--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000062";

    --Address 33--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000063";

    --Address 34--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000064";

    --Address 35--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000065";

    --Address 36--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000066";

    --Address 37--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000067";

    --Address 38--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000068";

    --Address 39--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000069";

    --Address 40--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000006A";

    --Address 41--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000006B";

    --Address 42--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000006C";

    --Address 43--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000006D";

    --Address 44--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000006E";

    --Address 45--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000006F";

    --Address 46--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000070";

    --Address 47--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000071";

    --Address 48--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000072";

    --Address 49--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000073";

    --Address 50--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000074";

    --Address 51--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000075";

    --Address 52--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000076";

    --Address 53--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000077";

    --Address 54--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000078";

    --Address 55--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000079";

    --Address 56--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000007A";

    --Address 57--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000007B";

    --Address 58--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000007C";

    --Address 59--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000007D";

    --Address 60--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000007E";

    --Address 61--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000007F";

    --Address 62--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000080";

    --Address 63--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000081";

    --Address 64--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000082";

    --Address 65--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000083";

    --Address 66--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000084";

    --Address 67--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000085";

    --Address 68--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000086";

    --Address 69--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000087";

    --Address 70--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000088";

    --Address 71--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000089";

    --Address 72--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000008A";

    --Address 73--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000008B";

    --Address 74--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000008C";

    --Address 75--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000008D";

    --Address 76--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000008E";

    --Address 77--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000008F";

    --Address 78--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000090";

    --Address 79--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000091";

    --Address 80--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000092";

    --Address 81--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000093";

    --Address 82--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000094";

    --Address 83--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000095";

    --Address 84--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000096";

    --Address 85--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000097";

    --Address 86--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000098";

    --Address 87--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"00000099";

    --Address 88--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000009A";

    --Address 89--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000009B";

    --Address 90--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000009C";

    --Address 91--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000009D";

    --Address 92--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000009E";

    --Address 93--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"0000009F";

    --Address 94--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A0";

    --Address 95--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A1";

    --Address 96--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A2";

    --Address 97--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A3";

    --Address 98--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A4";

    --Address 99--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A5";

    --Address 100--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A6";

    --Address 101--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A7";

    --Address 102--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A8";

    --Address 103--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000A9";

    --Address 104--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000AA";

    --Address 105--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000AB";

    --Address 106--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000AC";

    --Address 107--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000AD";

    --Address 108--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000AE";

    --Address 109--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000AF";

    --Address 110--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B0";

    --Address 111--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B1";

    --Address 112--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B2";

    --Address 113--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B3";

    --Address 114--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B4";

    --Address 115--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B5";

    --Address 116--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B6";

    --Address 117--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B7";

    --Address 118--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B8";

    --Address 119--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000B9";

    --Address 120--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000BA";

    --Address 121--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000BB";

    --Address 122--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000BC";

    --Address 123--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000BD";

    --Address 124--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000BE";

    --Address 125--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000BF";

    --Address 126--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000C0";

    --Address 127--
    wait for 100ns;
    MW_TB <= '1';
    Address_TB <= X"000000C1";



    --READ--
    --Address 0--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000042";
    
    --Address 1--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000043" ;

    --Address 2--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000044";

    --Address 3--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000045" ;

    --Address 4--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000046";

    --Address 5--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000047";

    --Address 6--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000048";

    --Address 7--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000049";

    --Address 8--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000004A";

    --Address 9--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000004B";

    --Address 10--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000004C";

    --Address 11--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000004D";

    --Address 12--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000004E";

    --Address 13--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000004F";

    --Address 14--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000050";

    --Address 15--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000051";

    --Address 16--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000052";

    --Address 17--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000053";

    --Address 18--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000054";

    --Address 19--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000055";

    --Address 20--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000056";

    --Address 21--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000057";

    --Address 22--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000058";

    --Address 23--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000059";

    --Address 24--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000005A";

    --Address 25--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000005B";

    --Address 26--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000005C";

    --Address 27--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000005D";

    --Address 28--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000005E";

    --Address 29--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000005F";

    --Address 30--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000060";

    --Address 31--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000061";

    --Address 32--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000062";

    --Address 33--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000063";

    --Address 34--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000064";

    --Address 35--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000065";

    --Address 36--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000066";

    --Address 37--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000067";

    --Address 38--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000068";

    --Address 39--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000069";

    --Address 40--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000006A";

    --Address 41--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000006B";

    --Address 42--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000006C";

    --Address 43--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000006D";

    --Address 44--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000006E";

    --Address 45--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000006F";

    --Address 46--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000070";

    --Address 47--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000071";

    --Address 48--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000072";

    --Address 49--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000073";

    --Address 50--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000074";

    --Address 51--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000075";

    --Address 52--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000076";

    --Address 53--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000077";

    --Address 54--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000078";

    --Address 55--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000079";

    --Address 56--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000007A";

    --Address 57--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000007B";

    --Address 58--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000007C";

    --Address 59--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000007D";

    --Address 60--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000007E";

    --Address 61--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000007F";

    --Address 62--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000080";

    --Address 63--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000081";

    --Address 64--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000082";

    --Address 65--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000083";

    --Address 66--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000084";

    --Address 67--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000085";

    --Address 68--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000086";

    --Address 69--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000087";

    --Address 70--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000088";

    --Address 71--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000089";

    --Address 72--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000008A";

    --Address 73--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000008B";

    --Address 74--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000008C";

    --Address 75--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000008D";

    --Address 76--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000008E";

    --Address 77--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000008F";

    --Address 78--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000090";

    --Address 79--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000091";

    --Address 80--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000092";

    --Address 81--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000093";

    --Address 82--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000094";

    --Address 83--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000095";

    --Address 84--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000096";

    --Address 85--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000097";

    --Address 86--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000098";

    --Address 87--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"00000099";

    --Address 88--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000009A";

    --Address 89--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000009B";

    --Address 90--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000009C";

    --Address 91--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000009D";

    --Address 92--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000009E";

    --Address 93--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"0000009F";

    --Address 94--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A0";

    --Address 95--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A1";

    --Address 96--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A2";

    --Address 97--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A3";

    --Address 98--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A4";

    --Address 99--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A5";

    --Address 100--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A6";

    --Address 101--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A7";

    --Address 102--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A8";

    --Address 103--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000A9";

    --Address 104--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000AA";

    --Address 105--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000AB";

    --Address 106--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000AC";

    --Address 107--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000AD";

    --Address 108--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000AE";

    --Address 109--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000AF";

    --Address 110--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B0";

    --Address 111--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B1";

    --Address 112--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B2";

    --Address 113--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B3";

    --Address 114--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B4";

    --Address 115--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B5";

    --Address 116--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B6";

    --Address 117--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B7";

    --Address 118--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B8";

    --Address 119--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000B9";

    --Address 120--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000BA";

    --Address 121--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000BB";

    --Address 122--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000BC";

    --Address 123--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000BD";

    --Address 124--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000BE";

    --Address 125--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000BF";

    --Address 126--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000C0";

    --Address 127--
    wait for 100ns;
    MW_TB <= '0;
    Address_TB <= X"000000C1";
   
   end process;
end Sim;