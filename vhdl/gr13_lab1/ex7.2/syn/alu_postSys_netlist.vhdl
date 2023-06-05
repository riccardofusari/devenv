
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU;

package body CONV_PACK_ALU is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW01_add_0 is

   port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (13 downto 0);  CO : out std_logic);

end ALU_DW01_add_0;

architecture SYN_cla of ALU_DW01_add_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26 : 
      std_logic;

begin
   SUM <= ( SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, A(6), A(5), A(4), A(3), A(2), A(1), A(0) );
   
   U2 : INV_X1 port map( A => n20, ZN => n2);
   U3 : INV_X1 port map( A => n9, ZN => n4);
   U4 : INV_X1 port map( A => n12, ZN => n5);
   U5 : INV_X1 port map( A => n22, ZN => n3);
   U6 : INV_X1 port map( A => n14, ZN => n1);
   U7 : NAND2_X1 port map( A1 => A(7), A2 => B(7), ZN => n26);
   U8 : XOR2_X1 port map( A => n6, B => n7, Z => SUM_9_port);
   U9 : NOR2_X1 port map( A1 => n8, A2 => n9, ZN => n7);
   U10 : XOR2_X1 port map( A => n10, B => n26, Z => SUM_8_port);
   U11 : NAND2_X1 port map( A1 => n5, A2 => n11, ZN => n10);
   U12 : XOR2_X1 port map( A => B(7), B => A(7), Z => SUM_7_port);
   U13 : XOR2_X1 port map( A => n13, B => B(13), Z => SUM_13_port);
   U14 : OAI21_X1 port map( B1 => n14, B2 => n15, A => n16, ZN => n13);
   U15 : XOR2_X1 port map( A => n17, B => n15, Z => SUM_12_port);
   U16 : AOI21_X1 port map( B1 => n2, B2 => n18, A => n19, ZN => n15);
   U17 : NAND2_X1 port map( A1 => n1, A2 => n16, ZN => n17);
   U18 : NAND2_X1 port map( A1 => B(12), A2 => A(12), ZN => n16);
   U19 : NOR2_X1 port map( A1 => B(12), A2 => A(12), ZN => n14);
   U20 : XOR2_X1 port map( A => n18, B => n21, Z => SUM_11_port);
   U21 : NOR2_X1 port map( A1 => n19, A2 => n20, ZN => n21);
   U22 : NOR2_X1 port map( A1 => B(11), A2 => A(11), ZN => n20);
   U23 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => n19);
   U24 : OAI21_X1 port map( B1 => n22, B2 => n23, A => n24, ZN => n18);
   U25 : XOR2_X1 port map( A => n25, B => n23, Z => SUM_10_port);
   U26 : AOI21_X1 port map( B1 => n6, B2 => n4, A => n8, ZN => n23);
   U27 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => n8);
   U28 : NOR2_X1 port map( A1 => B(9), A2 => A(9), ZN => n9);
   U29 : OAI21_X1 port map( B1 => n26, B2 => n12, A => n11, ZN => n6);
   U30 : NAND2_X1 port map( A1 => B(8), A2 => A(8), ZN => n11);
   U31 : NOR2_X1 port map( A1 => B(8), A2 => A(8), ZN => n12);
   U32 : NAND2_X1 port map( A1 => n3, A2 => n24, ZN => n25);
   U33 : NAND2_X1 port map( A1 => B(10), A2 => A(10), ZN => n24);
   U34 : NOR2_X1 port map( A1 => B(10), A2 => A(10), ZN => n22);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW02_mult_0 is

   port( A, B : in std_logic_vector (7 downto 0);  TC : in std_logic;  PRODUCT 
         : out std_logic_vector (15 downto 0));

end ALU_DW02_mult_0;

architecture SYN_csa of ALU_DW02_mult_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ALU_DW01_add_0
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, ab_7_7_port, ab_7_6_port, ab_7_5_port, ab_7_4_port, 
      ab_7_3_port, ab_7_2_port, ab_7_1_port, ab_7_0_port, ab_6_7_port, 
      ab_6_6_port, ab_6_5_port, ab_6_4_port, ab_6_3_port, ab_6_2_port, 
      ab_6_1_port, ab_6_0_port, ab_5_7_port, ab_5_6_port, ab_5_5_port, 
      ab_5_4_port, ab_5_3_port, ab_5_2_port, ab_5_1_port, ab_5_0_port, 
      ab_4_7_port, ab_4_6_port, ab_4_5_port, ab_4_4_port, ab_4_3_port, 
      ab_4_2_port, ab_4_1_port, ab_4_0_port, ab_3_7_port, ab_3_6_port, 
      ab_3_5_port, ab_3_4_port, ab_3_3_port, ab_3_2_port, ab_3_1_port, 
      ab_3_0_port, ab_2_7_port, ab_2_6_port, ab_2_5_port, ab_2_4_port, 
      ab_2_3_port, ab_2_2_port, ab_2_1_port, ab_2_0_port, ab_1_7_port, 
      ab_1_6_port, ab_1_5_port, ab_1_4_port, ab_1_3_port, ab_1_2_port, 
      ab_1_1_port, ab_1_0_port, ab_0_7_port, ab_0_6_port, ab_0_5_port, 
      ab_0_4_port, ab_0_3_port, ab_0_2_port, ab_0_1_port, CARRYB_7_6_port, 
      CARRYB_7_5_port, CARRYB_7_4_port, CARRYB_7_3_port, CARRYB_7_2_port, 
      CARRYB_7_1_port, CARRYB_7_0_port, CARRYB_6_6_port, CARRYB_6_5_port, 
      CARRYB_6_4_port, CARRYB_6_3_port, CARRYB_6_2_port, CARRYB_6_1_port, 
      CARRYB_6_0_port, CARRYB_5_6_port, CARRYB_5_5_port, CARRYB_5_4_port, 
      CARRYB_5_3_port, CARRYB_5_2_port, CARRYB_5_1_port, CARRYB_5_0_port, 
      CARRYB_4_6_port, CARRYB_4_5_port, CARRYB_4_4_port, CARRYB_4_3_port, 
      CARRYB_4_2_port, CARRYB_4_1_port, CARRYB_4_0_port, CARRYB_3_6_port, 
      CARRYB_3_5_port, CARRYB_3_4_port, CARRYB_3_3_port, CARRYB_3_2_port, 
      CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_6_port, CARRYB_2_5_port, 
      CARRYB_2_4_port, CARRYB_2_3_port, CARRYB_2_2_port, CARRYB_2_1_port, 
      CARRYB_2_0_port, SUMB_7_6_port, SUMB_7_5_port, SUMB_7_4_port, 
      SUMB_7_3_port, SUMB_7_2_port, SUMB_7_1_port, SUMB_7_0_port, SUMB_6_6_port
      , SUMB_6_5_port, SUMB_6_4_port, SUMB_6_3_port, SUMB_6_2_port, 
      SUMB_6_1_port, SUMB_5_6_port, SUMB_5_5_port, SUMB_5_4_port, SUMB_5_3_port
      , SUMB_5_2_port, SUMB_5_1_port, SUMB_4_6_port, SUMB_4_5_port, 
      SUMB_4_4_port, SUMB_4_3_port, SUMB_4_2_port, SUMB_4_1_port, SUMB_3_6_port
      , SUMB_3_5_port, SUMB_3_4_port, SUMB_3_3_port, SUMB_3_2_port, 
      SUMB_3_1_port, SUMB_2_6_port, SUMB_2_5_port, SUMB_2_4_port, SUMB_2_3_port
      , SUMB_2_2_port, SUMB_2_1_port, A1_4_port, A1_3_port, A1_2_port, 
      A1_1_port, A1_0_port, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
      n14, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n_1011 : std_logic;

begin
   
   X_Logic0_port <= '0';
   S4_0 : FA_X1 port map( A => ab_7_0_port, B => CARRYB_6_0_port, CI => 
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => 
                           SUMB_7_0_port);
   S4_1 : FA_X1 port map( A => ab_7_1_port, B => CARRYB_6_1_port, CI => 
                           SUMB_6_2_port, CO => CARRYB_7_1_port, S => 
                           SUMB_7_1_port);
   S4_2 : FA_X1 port map( A => ab_7_2_port, B => CARRYB_6_2_port, CI => 
                           SUMB_6_3_port, CO => CARRYB_7_2_port, S => 
                           SUMB_7_2_port);
   S4_3 : FA_X1 port map( A => ab_7_3_port, B => CARRYB_6_3_port, CI => 
                           SUMB_6_4_port, CO => CARRYB_7_3_port, S => 
                           SUMB_7_3_port);
   S4_4 : FA_X1 port map( A => ab_7_4_port, B => CARRYB_6_4_port, CI => 
                           SUMB_6_5_port, CO => CARRYB_7_4_port, S => 
                           SUMB_7_4_port);
   S4_5 : FA_X1 port map( A => ab_7_5_port, B => CARRYB_6_5_port, CI => 
                           SUMB_6_6_port, CO => CARRYB_7_5_port, S => 
                           SUMB_7_5_port);
   S5_6 : FA_X1 port map( A => ab_7_6_port, B => CARRYB_6_6_port, CI => 
                           ab_6_7_port, CO => CARRYB_7_6_port, S => 
                           SUMB_7_6_port);
   S1_6_0 : FA_X1 port map( A => ab_6_0_port, B => CARRYB_5_0_port, CI => 
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S => A1_4_port
                           );
   S2_6_1 : FA_X1 port map( A => ab_6_1_port, B => CARRYB_5_1_port, CI => 
                           SUMB_5_2_port, CO => CARRYB_6_1_port, S => 
                           SUMB_6_1_port);
   S2_6_2 : FA_X1 port map( A => ab_6_2_port, B => CARRYB_5_2_port, CI => 
                           SUMB_5_3_port, CO => CARRYB_6_2_port, S => 
                           SUMB_6_2_port);
   S2_6_3 : FA_X1 port map( A => ab_6_3_port, B => CARRYB_5_3_port, CI => 
                           SUMB_5_4_port, CO => CARRYB_6_3_port, S => 
                           SUMB_6_3_port);
   S2_6_4 : FA_X1 port map( A => ab_6_4_port, B => CARRYB_5_4_port, CI => 
                           SUMB_5_5_port, CO => CARRYB_6_4_port, S => 
                           SUMB_6_4_port);
   S2_6_5 : FA_X1 port map( A => ab_6_5_port, B => CARRYB_5_5_port, CI => 
                           SUMB_5_6_port, CO => CARRYB_6_5_port, S => 
                           SUMB_6_5_port);
   S3_6_6 : FA_X1 port map( A => ab_6_6_port, B => CARRYB_5_6_port, CI => 
                           ab_5_7_port, CO => CARRYB_6_6_port, S => 
                           SUMB_6_6_port);
   S1_5_0 : FA_X1 port map( A => ab_5_0_port, B => CARRYB_4_0_port, CI => 
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => A1_3_port
                           );
   S2_5_1 : FA_X1 port map( A => ab_5_1_port, B => CARRYB_4_1_port, CI => 
                           SUMB_4_2_port, CO => CARRYB_5_1_port, S => 
                           SUMB_5_1_port);
   S2_5_2 : FA_X1 port map( A => ab_5_2_port, B => CARRYB_4_2_port, CI => 
                           SUMB_4_3_port, CO => CARRYB_5_2_port, S => 
                           SUMB_5_2_port);
   S2_5_3 : FA_X1 port map( A => ab_5_3_port, B => CARRYB_4_3_port, CI => 
                           SUMB_4_4_port, CO => CARRYB_5_3_port, S => 
                           SUMB_5_3_port);
   S2_5_4 : FA_X1 port map( A => ab_5_4_port, B => CARRYB_4_4_port, CI => 
                           SUMB_4_5_port, CO => CARRYB_5_4_port, S => 
                           SUMB_5_4_port);
   S2_5_5 : FA_X1 port map( A => ab_5_5_port, B => CARRYB_4_5_port, CI => 
                           SUMB_4_6_port, CO => CARRYB_5_5_port, S => 
                           SUMB_5_5_port);
   S3_5_6 : FA_X1 port map( A => ab_5_6_port, B => CARRYB_4_6_port, CI => 
                           ab_4_7_port, CO => CARRYB_5_6_port, S => 
                           SUMB_5_6_port);
   S1_4_0 : FA_X1 port map( A => ab_4_0_port, B => CARRYB_3_0_port, CI => 
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S => A1_2_port
                           );
   S2_4_1 : FA_X1 port map( A => ab_4_1_port, B => CARRYB_3_1_port, CI => 
                           SUMB_3_2_port, CO => CARRYB_4_1_port, S => 
                           SUMB_4_1_port);
   S2_4_2 : FA_X1 port map( A => ab_4_2_port, B => CARRYB_3_2_port, CI => 
                           SUMB_3_3_port, CO => CARRYB_4_2_port, S => 
                           SUMB_4_2_port);
   S2_4_3 : FA_X1 port map( A => ab_4_3_port, B => CARRYB_3_3_port, CI => 
                           SUMB_3_4_port, CO => CARRYB_4_3_port, S => 
                           SUMB_4_3_port);
   S2_4_4 : FA_X1 port map( A => ab_4_4_port, B => CARRYB_3_4_port, CI => 
                           SUMB_3_5_port, CO => CARRYB_4_4_port, S => 
                           SUMB_4_4_port);
   S2_4_5 : FA_X1 port map( A => ab_4_5_port, B => CARRYB_3_5_port, CI => 
                           SUMB_3_6_port, CO => CARRYB_4_5_port, S => 
                           SUMB_4_5_port);
   S3_4_6 : FA_X1 port map( A => ab_4_6_port, B => CARRYB_3_6_port, CI => 
                           ab_3_7_port, CO => CARRYB_4_6_port, S => 
                           SUMB_4_6_port);
   S1_3_0 : FA_X1 port map( A => ab_3_0_port, B => CARRYB_2_0_port, CI => 
                           SUMB_2_1_port, CO => CARRYB_3_0_port, S => A1_1_port
                           );
   S2_3_1 : FA_X1 port map( A => ab_3_1_port, B => CARRYB_2_1_port, CI => 
                           SUMB_2_2_port, CO => CARRYB_3_1_port, S => 
                           SUMB_3_1_port);
   S2_3_2 : FA_X1 port map( A => ab_3_2_port, B => CARRYB_2_2_port, CI => 
                           SUMB_2_3_port, CO => CARRYB_3_2_port, S => 
                           SUMB_3_2_port);
   S2_3_3 : FA_X1 port map( A => ab_3_3_port, B => CARRYB_2_3_port, CI => 
                           SUMB_2_4_port, CO => CARRYB_3_3_port, S => 
                           SUMB_3_3_port);
   S2_3_4 : FA_X1 port map( A => ab_3_4_port, B => CARRYB_2_4_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_3_4_port, S => 
                           SUMB_3_4_port);
   S2_3_5 : FA_X1 port map( A => ab_3_5_port, B => CARRYB_2_5_port, CI => 
                           SUMB_2_6_port, CO => CARRYB_3_5_port, S => 
                           SUMB_3_5_port);
   S3_3_6 : FA_X1 port map( A => ab_3_6_port, B => CARRYB_2_6_port, CI => 
                           ab_2_7_port, CO => CARRYB_3_6_port, S => 
                           SUMB_3_6_port);
   S1_2_0 : FA_X1 port map( A => ab_2_0_port, B => n7, CI => n14, CO => 
                           CARRYB_2_0_port, S => A1_0_port);
   S2_2_1 : FA_X1 port map( A => ab_2_1_port, B => n6, CI => n13, CO => 
                           CARRYB_2_1_port, S => SUMB_2_1_port);
   S2_2_2 : FA_X1 port map( A => ab_2_2_port, B => n5, CI => n12, CO => 
                           CARRYB_2_2_port, S => SUMB_2_2_port);
   S2_2_3 : FA_X1 port map( A => ab_2_3_port, B => n4, CI => n11, CO => 
                           CARRYB_2_3_port, S => SUMB_2_3_port);
   S2_2_4 : FA_X1 port map( A => ab_2_4_port, B => n3, CI => n10, CO => 
                           CARRYB_2_4_port, S => SUMB_2_4_port);
   S2_2_5 : FA_X1 port map( A => ab_2_5_port, B => n2, CI => n9, CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   S3_2_6 : FA_X1 port map( A => ab_2_6_port, B => n8, CI => ab_1_7_port, CO =>
                           CARRYB_2_6_port, S => SUMB_2_6_port);
   FS_1 : ALU_DW01_add_0 port map( A(13) => n46, A(12) => n20, A(11) => n27, 
                           A(10) => n22, A(9) => n26, A(8) => n21, A(7) => n18,
                           A(6) => n17, A(5) => SUMB_7_0_port, A(4) => 
                           A1_4_port, A(3) => A1_3_port, A(2) => A1_2_port, 
                           A(1) => A1_1_port, A(0) => A1_0_port, B(13) => n15, 
                           B(12) => n25, B(11) => n29, B(10) => n24, B(9) => 
                           n28, B(8) => n23, B(7) => n19, B(6) => n46, B(5) => 
                           n47, B(4) => n47, B(3) => n47, B(2) => n47, B(1) => 
                           n47, B(0) => X_Logic0_port, CI => X_Logic0_port, 
                           SUM(13) => PRODUCT(15), SUM(12) => PRODUCT(14), 
                           SUM(11) => PRODUCT(13), SUM(10) => PRODUCT(12), 
                           SUM(9) => PRODUCT(11), SUM(8) => PRODUCT(10), SUM(7)
                           => PRODUCT(9), SUM(6) => PRODUCT(8), SUM(5) => 
                           PRODUCT(7), SUM(4) => PRODUCT(6), SUM(3) => 
                           PRODUCT(5), SUM(2) => PRODUCT(4), SUM(1) => 
                           PRODUCT(3), SUM(0) => PRODUCT(2), CO => n_1011);
   U2 : AND2_X1 port map( A1 => ab_0_6_port, A2 => ab_1_5_port, ZN => n2);
   U3 : AND2_X1 port map( A1 => ab_0_5_port, A2 => ab_1_4_port, ZN => n3);
   U4 : AND2_X1 port map( A1 => ab_0_4_port, A2 => ab_1_3_port, ZN => n4);
   U5 : AND2_X1 port map( A1 => ab_0_3_port, A2 => ab_1_2_port, ZN => n5);
   U6 : AND2_X1 port map( A1 => ab_0_2_port, A2 => ab_1_1_port, ZN => n6);
   U7 : AND2_X1 port map( A1 => ab_0_1_port, A2 => ab_1_0_port, ZN => n7);
   U8 : AND2_X1 port map( A1 => ab_0_7_port, A2 => ab_1_6_port, ZN => n8);
   U9 : XOR2_X1 port map( A => ab_1_6_port, B => ab_0_7_port, Z => n9);
   U10 : XOR2_X1 port map( A => ab_1_5_port, B => ab_0_6_port, Z => n10);
   U11 : XOR2_X1 port map( A => ab_1_4_port, B => ab_0_5_port, Z => n11);
   U12 : XOR2_X1 port map( A => ab_1_3_port, B => ab_0_4_port, Z => n12);
   U13 : XOR2_X1 port map( A => ab_1_2_port, B => ab_0_3_port, Z => n13);
   U14 : XOR2_X1 port map( A => ab_1_1_port, B => ab_0_2_port, Z => n14);
   U15 : AND2_X1 port map( A1 => CARRYB_7_6_port, A2 => ab_7_7_port, ZN => n15)
                           ;
   U16 : XOR2_X1 port map( A => ab_1_0_port, B => ab_0_1_port, Z => PRODUCT(1))
                           ;
   U17 : XOR2_X1 port map( A => CARRYB_7_0_port, B => SUMB_7_1_port, Z => n17);
   U18 : XOR2_X1 port map( A => CARRYB_7_1_port, B => SUMB_7_2_port, Z => n18);
   U19 : AND2_X1 port map( A1 => CARRYB_7_0_port, A2 => SUMB_7_1_port, ZN => 
                           n19);
   U20 : XOR2_X1 port map( A => CARRYB_7_6_port, B => ab_7_7_port, Z => n20);
   U21 : XOR2_X1 port map( A => CARRYB_7_2_port, B => SUMB_7_3_port, Z => n21);
   U22 : XOR2_X1 port map( A => CARRYB_7_4_port, B => SUMB_7_5_port, Z => n22);
   U23 : AND2_X1 port map( A1 => CARRYB_7_1_port, A2 => SUMB_7_2_port, ZN => 
                           n23);
   U24 : AND2_X1 port map( A1 => CARRYB_7_3_port, A2 => SUMB_7_4_port, ZN => 
                           n24);
   U25 : AND2_X1 port map( A1 => CARRYB_7_5_port, A2 => SUMB_7_6_port, ZN => 
                           n25);
   U26 : XOR2_X1 port map( A => CARRYB_7_3_port, B => SUMB_7_4_port, Z => n26);
   U27 : XOR2_X1 port map( A => CARRYB_7_5_port, B => SUMB_7_6_port, Z => n27);
   U28 : AND2_X1 port map( A1 => CARRYB_7_2_port, A2 => SUMB_7_3_port, ZN => 
                           n28);
   U29 : AND2_X1 port map( A1 => CARRYB_7_4_port, A2 => SUMB_7_5_port, ZN => 
                           n29);
   U30 : INV_X1 port map( A => A(7), ZN => n30);
   U31 : INV_X1 port map( A => B(4), ZN => n41);
   U32 : INV_X1 port map( A => B(1), ZN => n44);
   U33 : INV_X1 port map( A => B(3), ZN => n42);
   U34 : INV_X1 port map( A => B(2), ZN => n43);
   U35 : INV_X1 port map( A => B(5), ZN => n40);
   U36 : INV_X1 port map( A => B(6), ZN => n39);
   U37 : INV_X1 port map( A => B(7), ZN => n38);
   U38 : INV_X1 port map( A => B(0), ZN => n45);
   U39 : INV_X1 port map( A => A(0), ZN => n37);
   U40 : INV_X1 port map( A => A(1), ZN => n36);
   U41 : INV_X1 port map( A => A(3), ZN => n34);
   U42 : INV_X1 port map( A => A(4), ZN => n33);
   U43 : INV_X1 port map( A => A(5), ZN => n32);
   U44 : INV_X1 port map( A => A(6), ZN => n31);
   U45 : INV_X1 port map( A => A(2), ZN => n35);
   n46 <= '0';
   U47 : NOR2_X1 port map( A1 => n30, A2 => n38, ZN => ab_7_7_port);
   U48 : NOR2_X1 port map( A1 => n30, A2 => n39, ZN => ab_7_6_port);
   U49 : NOR2_X1 port map( A1 => n30, A2 => n40, ZN => ab_7_5_port);
   U50 : NOR2_X1 port map( A1 => n30, A2 => n41, ZN => ab_7_4_port);
   U51 : NOR2_X1 port map( A1 => n30, A2 => n42, ZN => ab_7_3_port);
   U52 : NOR2_X1 port map( A1 => n30, A2 => n43, ZN => ab_7_2_port);
   U53 : NOR2_X1 port map( A1 => n30, A2 => n44, ZN => ab_7_1_port);
   U54 : NOR2_X1 port map( A1 => n30, A2 => n45, ZN => ab_7_0_port);
   U55 : NOR2_X1 port map( A1 => n38, A2 => n31, ZN => ab_6_7_port);
   U56 : NOR2_X1 port map( A1 => n39, A2 => n31, ZN => ab_6_6_port);
   U57 : NOR2_X1 port map( A1 => n40, A2 => n31, ZN => ab_6_5_port);
   U58 : NOR2_X1 port map( A1 => n41, A2 => n31, ZN => ab_6_4_port);
   U59 : NOR2_X1 port map( A1 => n42, A2 => n31, ZN => ab_6_3_port);
   U60 : NOR2_X1 port map( A1 => n43, A2 => n31, ZN => ab_6_2_port);
   U61 : NOR2_X1 port map( A1 => n44, A2 => n31, ZN => ab_6_1_port);
   U62 : NOR2_X1 port map( A1 => n45, A2 => n31, ZN => ab_6_0_port);
   U63 : NOR2_X1 port map( A1 => n38, A2 => n32, ZN => ab_5_7_port);
   U64 : NOR2_X1 port map( A1 => n39, A2 => n32, ZN => ab_5_6_port);
   U65 : NOR2_X1 port map( A1 => n40, A2 => n32, ZN => ab_5_5_port);
   U66 : NOR2_X1 port map( A1 => n41, A2 => n32, ZN => ab_5_4_port);
   U67 : NOR2_X1 port map( A1 => n42, A2 => n32, ZN => ab_5_3_port);
   U68 : NOR2_X1 port map( A1 => n43, A2 => n32, ZN => ab_5_2_port);
   U69 : NOR2_X1 port map( A1 => n44, A2 => n32, ZN => ab_5_1_port);
   U70 : NOR2_X1 port map( A1 => n45, A2 => n32, ZN => ab_5_0_port);
   U71 : NOR2_X1 port map( A1 => n38, A2 => n33, ZN => ab_4_7_port);
   U72 : NOR2_X1 port map( A1 => n39, A2 => n33, ZN => ab_4_6_port);
   U73 : NOR2_X1 port map( A1 => n40, A2 => n33, ZN => ab_4_5_port);
   U74 : NOR2_X1 port map( A1 => n41, A2 => n33, ZN => ab_4_4_port);
   U75 : NOR2_X1 port map( A1 => n42, A2 => n33, ZN => ab_4_3_port);
   U76 : NOR2_X1 port map( A1 => n43, A2 => n33, ZN => ab_4_2_port);
   U77 : NOR2_X1 port map( A1 => n44, A2 => n33, ZN => ab_4_1_port);
   U78 : NOR2_X1 port map( A1 => n45, A2 => n33, ZN => ab_4_0_port);
   U79 : NOR2_X1 port map( A1 => n38, A2 => n34, ZN => ab_3_7_port);
   U80 : NOR2_X1 port map( A1 => n39, A2 => n34, ZN => ab_3_6_port);
   U81 : NOR2_X1 port map( A1 => n40, A2 => n34, ZN => ab_3_5_port);
   U82 : NOR2_X1 port map( A1 => n41, A2 => n34, ZN => ab_3_4_port);
   U83 : NOR2_X1 port map( A1 => n42, A2 => n34, ZN => ab_3_3_port);
   U84 : NOR2_X1 port map( A1 => n43, A2 => n34, ZN => ab_3_2_port);
   U85 : NOR2_X1 port map( A1 => n44, A2 => n34, ZN => ab_3_1_port);
   U86 : NOR2_X1 port map( A1 => n45, A2 => n34, ZN => ab_3_0_port);
   U87 : NOR2_X1 port map( A1 => n38, A2 => n35, ZN => ab_2_7_port);
   U88 : NOR2_X1 port map( A1 => n39, A2 => n35, ZN => ab_2_6_port);
   U89 : NOR2_X1 port map( A1 => n40, A2 => n35, ZN => ab_2_5_port);
   U90 : NOR2_X1 port map( A1 => n41, A2 => n35, ZN => ab_2_4_port);
   U91 : NOR2_X1 port map( A1 => n42, A2 => n35, ZN => ab_2_3_port);
   U92 : NOR2_X1 port map( A1 => n43, A2 => n35, ZN => ab_2_2_port);
   U93 : NOR2_X1 port map( A1 => n44, A2 => n35, ZN => ab_2_1_port);
   U94 : NOR2_X1 port map( A1 => n45, A2 => n35, ZN => ab_2_0_port);
   U95 : NOR2_X1 port map( A1 => n38, A2 => n36, ZN => ab_1_7_port);
   U96 : NOR2_X1 port map( A1 => n39, A2 => n36, ZN => ab_1_6_port);
   U97 : NOR2_X1 port map( A1 => n40, A2 => n36, ZN => ab_1_5_port);
   U98 : NOR2_X1 port map( A1 => n41, A2 => n36, ZN => ab_1_4_port);
   U99 : NOR2_X1 port map( A1 => n42, A2 => n36, ZN => ab_1_3_port);
   U100 : NOR2_X1 port map( A1 => n43, A2 => n36, ZN => ab_1_2_port);
   U101 : NOR2_X1 port map( A1 => n44, A2 => n36, ZN => ab_1_1_port);
   U102 : NOR2_X1 port map( A1 => n45, A2 => n36, ZN => ab_1_0_port);
   U103 : NOR2_X1 port map( A1 => n38, A2 => n37, ZN => ab_0_7_port);
   U104 : NOR2_X1 port map( A1 => n39, A2 => n37, ZN => ab_0_6_port);
   U105 : NOR2_X1 port map( A1 => n40, A2 => n37, ZN => ab_0_5_port);
   U106 : NOR2_X1 port map( A1 => n41, A2 => n37, ZN => ab_0_4_port);
   U107 : NOR2_X1 port map( A1 => n42, A2 => n37, ZN => ab_0_3_port);
   U108 : NOR2_X1 port map( A1 => n43, A2 => n37, ZN => ab_0_2_port);
   U109 : NOR2_X1 port map( A1 => n44, A2 => n37, ZN => ab_0_1_port);
   U110 : NOR2_X1 port map( A1 => n45, A2 => n37, ZN => PRODUCT(0));
   n47 <= '0';

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW01_addsub_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (15 downto 0);  CO : out std_logic);

end ALU_DW01_addsub_0;

architecture SYN_rpl of ALU_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, 
      carry_1_port, B_AS_15_port, B_AS_14_port, B_AS_13_port, B_AS_12_port, 
      B_AS_11_port, B_AS_10_port, B_AS_9_port, B_AS_8_port, B_AS_7_port, 
      B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, B_AS_2_port, 
      B_AS_1_port, B_AS_0_port, n_1014 : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => n_1014, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_10_port, CI => carry_10_port, 
                           CO => carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B_AS_9_port, CI => carry_9_port, CO 
                           => carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B_AS_7_port, CI => carry_7_port, CO 
                           => carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B_AS_6_port, CI => carry_6_port, CO 
                           => carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B_AS_5_port, CI => carry_5_port, CO 
                           => carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B_AS_4_port, CI => carry_4_port, CO 
                           => carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B_AS_3_port, CI => carry_3_port, CO 
                           => carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B_AS_2_port, CI => carry_2_port, CO 
                           => carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B_AS_1_port, CI => carry_1_port, CO 
                           => carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B_AS_0_port, CI => ADD_SUB, CO => 
                           carry_1_port, S => SUM(0));
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U6 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U7 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U8 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => B_AS_2_port);
   U9 : XOR2_X1 port map( A => B(1), B => ADD_SUB, Z => B_AS_1_port);
   U10 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U11 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U12 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U13 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U14 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U15 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U16 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (15 downto 0); 
         OUTALU : out std_logic_vector (15 downto 0));

end ALU;

architecture SYN_BEHAVIOR of ALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component ALU_DW02_mult_0
      port( A, B : in std_logic_vector (7 downto 0);  TC : in std_logic;  
            PRODUCT : out std_logic_vector (15 downto 0));
   end component;
   
   component ALU_DW01_addsub_0
      port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (15 downto 0);  CO : out 
            std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N62, N63, N64, 
      N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79
      , N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, 
      N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, 
      N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, 
      N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, 
      N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, 
      N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, 
      N155, N156, N157, N158, n7, n10, U3_U1_Z_0, n144_port, n145_port, 
      n146_port, n147_port, n148_port, n149_port, n150_port, n151_port, 
      n152_port, n153_port, n154_port, n155_port, n156_port, n157_port, 
      n158_port, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, 
      n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, 
      n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, 
      n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, 
      n241, n_1015 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   n7 <= '0';
   n10 <= '0';
   OUTALU_reg_15_inst : DLH_X1 port map( G => N142, D => N158, Q => OUTALU(15))
                           ;
   OUTALU_reg_14_inst : DLH_X1 port map( G => N142, D => N157, Q => OUTALU(14))
                           ;
   OUTALU_reg_13_inst : DLH_X1 port map( G => N142, D => N156, Q => OUTALU(13))
                           ;
   OUTALU_reg_12_inst : DLH_X1 port map( G => N142, D => N155, Q => OUTALU(12))
                           ;
   OUTALU_reg_11_inst : DLH_X1 port map( G => N142, D => N154, Q => OUTALU(11))
                           ;
   OUTALU_reg_10_inst : DLH_X1 port map( G => N142, D => N153, Q => OUTALU(10))
                           ;
   OUTALU_reg_9_inst : DLH_X1 port map( G => N142, D => N152, Q => OUTALU(9));
   OUTALU_reg_8_inst : DLH_X1 port map( G => N142, D => N151, Q => OUTALU(8));
   OUTALU_reg_7_inst : DLH_X1 port map( G => N142, D => N150, Q => OUTALU(7));
   OUTALU_reg_6_inst : DLH_X1 port map( G => N142, D => N149, Q => OUTALU(6));
   OUTALU_reg_5_inst : DLH_X1 port map( G => N142, D => N148, Q => OUTALU(5));
   OUTALU_reg_4_inst : DLH_X1 port map( G => N142, D => N147, Q => OUTALU(4));
   OUTALU_reg_3_inst : DLH_X1 port map( G => N142, D => N146, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N142, D => N145, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N142, D => N144, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N142, D => N143, Q => OUTALU(0));
   r67 : ALU_DW01_addsub_0 port map( A(15) => DATA1(15), A(14) => DATA1(14), 
                           A(13) => DATA1(13), A(12) => DATA1(12), A(11) => 
                           DATA1(11), A(10) => DATA1(10), A(9) => DATA1(9), 
                           A(8) => DATA1(8), A(7) => DATA1(7), A(6) => DATA1(6)
                           , A(5) => DATA1(5), A(4) => DATA1(4), A(3) => 
                           DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1), A(0) 
                           => DATA1(0), B(15) => DATA2(15), B(14) => DATA2(14),
                           B(13) => DATA2(13), B(12) => DATA2(12), B(11) => 
                           DATA2(11), B(10) => DATA2(10), B(9) => DATA2(9), 
                           B(8) => DATA2(8), B(7) => DATA2(7), B(6) => DATA2(6)
                           , B(5) => DATA2(5), B(4) => DATA2(4), B(3) => 
                           DATA2(3), B(2) => DATA2(2), B(1) => DATA2(1), B(0) 
                           => DATA2(0), CI => n7, ADD_SUB => n144_port, SUM(15)
                           => N77, SUM(14) => N76, SUM(13) => N75, SUM(12) => 
                           N74, SUM(11) => N73, SUM(10) => N72, SUM(9) => N71, 
                           SUM(8) => N70, SUM(7) => N69, SUM(6) => N68, SUM(5) 
                           => N67, SUM(4) => N66, SUM(3) => N65, SUM(2) => N64,
                           SUM(1) => N63, SUM(0) => N62, CO => n_1015);
   mult_34 : ALU_DW02_mult_0 port map( A(7) => DATA1(7), A(6) => DATA1(6), A(5)
                           => DATA1(5), A(4) => DATA1(4), A(3) => DATA1(3), 
                           A(2) => DATA1(2), A(1) => DATA1(1), A(0) => DATA1(0)
                           , B(7) => DATA2(7), B(6) => DATA2(6), B(5) => 
                           DATA2(5), B(4) => DATA2(4), B(3) => DATA2(3), B(2) 
                           => DATA2(2), B(1) => DATA2(1), B(0) => DATA2(0), TC 
                           => n10, PRODUCT(15) => N93, PRODUCT(14) => N92, 
                           PRODUCT(13) => N91, PRODUCT(12) => N90, PRODUCT(11) 
                           => N89, PRODUCT(10) => N88, PRODUCT(9) => N87, 
                           PRODUCT(8) => N86, PRODUCT(7) => N85, PRODUCT(6) => 
                           N84, PRODUCT(5) => N83, PRODUCT(4) => N82, 
                           PRODUCT(3) => N81, PRODUCT(2) => N80, PRODUCT(1) => 
                           N79, PRODUCT(0) => N78);
   U186 : NOR3_X4 port map( A1 => FUNC_2_port, A2 => FUNC_1_port, A3 => 
                           FUNC_3_port, ZN => n198);
   U187 : OR4_X1 port map( A1 => n214, A2 => FUNC_1_port, A3 => FUNC_2_port, A4
                           => FUNC_3_port, ZN => U3_U1_Z_0);
   U188 : INV_X1 port map( A => U3_U1_Z_0, ZN => n144_port);
   U189 : INV_X1 port map( A => n147_port, ZN => n217);
   U190 : INV_X1 port map( A => FUNC_0_port, ZN => n214);
   U191 : INV_X1 port map( A => FUNC_1_port, ZN => n215);
   U192 : INV_X1 port map( A => FUNC_2_port, ZN => n216);
   U193 : INV_X1 port map( A => DATA1(13), ZN => n212);
   U194 : INV_X1 port map( A => DATA1(14), ZN => n213);
   U195 : INV_X1 port map( A => DATA1(2), ZN => n206);
   U196 : INV_X1 port map( A => DATA1(3), ZN => n207);
   U197 : INV_X1 port map( A => DATA1(5), ZN => n208);
   U198 : INV_X1 port map( A => DATA1(6), ZN => n209);
   U199 : INV_X1 port map( A => DATA1(9), ZN => n210);
   U200 : INV_X1 port map( A => DATA1(10), ZN => n211);
   U201 : NOR2_X1 port map( A1 => n216, A2 => FUNC_1_port, ZN => n145_port);
   U202 : AND2_X1 port map( A1 => n145_port, A2 => FUNC_0_port, ZN => n197);
   U203 : NOR2_X1 port map( A1 => n215, A2 => FUNC_2_port, ZN => n146_port);
   U204 : AND2_X1 port map( A1 => FUNC_0_port, A2 => n146_port, ZN => n196);
   U205 : AOI222_X1 port map( A1 => N62, A2 => n198, B1 => N141, B2 => n197, C1
                           => N109, C2 => n196, ZN => n151_port);
   U206 : AND2_X1 port map( A1 => n145_port, A2 => n214, ZN => n203);
   U207 : AND2_X1 port map( A1 => n146_port, A2 => n214, ZN => n202);
   U208 : NAND3_X1 port map( A1 => n216, A2 => n215, A3 => FUNC_3_port, ZN => 
                           n147_port);
   U209 : OAI21_X1 port map( B1 => n215, B2 => n216, A => n147_port, ZN => 
                           n152_port);
   U210 : NAND2_X1 port map( A1 => n152_port, A2 => FUNC_0_port, ZN => n192);
   U211 : NAND3_X1 port map( A1 => n217, A2 => n214, A3 => DATA1(15), ZN => 
                           n148_port);
   U212 : OAI21_X1 port map( B1 => n192, B2 => n238, A => n148_port, ZN => 
                           n149_port);
   U213 : AOI221_X1 port map( B1 => N125, B2 => n203, C1 => N78, C2 => n202, A 
                           => n149_port, ZN => n150_port);
   U214 : NAND2_X1 port map( A1 => n151_port, A2 => n150_port, ZN => N143);
   U215 : AOI222_X1 port map( A1 => N63, A2 => n198, B1 => N140, B2 => n197, C1
                           => N108, C2 => n196, ZN => n155_port);
   U216 : NAND2_X1 port map( A1 => n152_port, A2 => n214, ZN => n200);
   U217 : OAI22_X1 port map( A1 => n192, A2 => n206, B1 => n237, B2 => n200, ZN
                           => n153_port);
   U218 : AOI221_X1 port map( B1 => N124, B2 => n203, C1 => N79, C2 => n202, A 
                           => n153_port, ZN => n154_port);
   U219 : NAND2_X1 port map( A1 => n155_port, A2 => n154_port, ZN => N144);
   U220 : AOI222_X1 port map( A1 => N64, A2 => n198, B1 => N139, B2 => n197, C1
                           => N107, C2 => n196, ZN => n158_port);
   U221 : OAI22_X1 port map( A1 => n192, A2 => n207, B1 => n200, B2 => n238, ZN
                           => n156_port);
   U222 : AOI221_X1 port map( B1 => N123, B2 => n203, C1 => N80, C2 => n202, A 
                           => n156_port, ZN => n157_port);
   U223 : NAND2_X1 port map( A1 => n158_port, A2 => n157_port, ZN => N145);
   U224 : AOI222_X1 port map( A1 => N65, A2 => n198, B1 => N138, B2 => n197, C1
                           => N106, C2 => n196, ZN => n161);
   U225 : OAI22_X1 port map( A1 => n192, A2 => n239, B1 => n200, B2 => n206, ZN
                           => n159);
   U226 : AOI221_X1 port map( B1 => N122, B2 => n203, C1 => N81, C2 => n202, A 
                           => n159, ZN => n160);
   U227 : NAND2_X1 port map( A1 => n161, A2 => n160, ZN => N146);
   U228 : AOI222_X1 port map( A1 => N66, A2 => n198, B1 => N137, B2 => n197, C1
                           => N105, C2 => n196, ZN => n164);
   U229 : OAI22_X1 port map( A1 => n192, A2 => n208, B1 => n200, B2 => n207, ZN
                           => n162);
   U230 : AOI221_X1 port map( B1 => N121, B2 => n203, C1 => N82, C2 => n202, A 
                           => n162, ZN => n163);
   U231 : NAND2_X1 port map( A1 => n164, A2 => n163, ZN => N147);
   U232 : AOI222_X1 port map( A1 => N67, A2 => n198, B1 => N136, B2 => n197, C1
                           => N104, C2 => n196, ZN => n167);
   U233 : OAI22_X1 port map( A1 => n192, A2 => n209, B1 => n200, B2 => n239, ZN
                           => n165);
   U234 : AOI221_X1 port map( B1 => N120, B2 => n203, C1 => N83, C2 => n202, A 
                           => n165, ZN => n166);
   U235 : NAND2_X1 port map( A1 => n167, A2 => n166, ZN => N148);
   U236 : AOI222_X1 port map( A1 => N68, A2 => n198, B1 => N135, B2 => n197, C1
                           => N103, C2 => n196, ZN => n170);
   U237 : OAI22_X1 port map( A1 => n192, A2 => n240, B1 => n200, B2 => n208, ZN
                           => n168);
   U238 : AOI221_X1 port map( B1 => N119, B2 => n203, C1 => N84, C2 => n202, A 
                           => n168, ZN => n169);
   U239 : NAND2_X1 port map( A1 => n170, A2 => n169, ZN => N149);
   U240 : AOI222_X1 port map( A1 => N69, A2 => n198, B1 => N134, B2 => n197, C1
                           => N102, C2 => n196, ZN => n173);
   U241 : OAI22_X1 port map( A1 => n192, A2 => n241, B1 => n200, B2 => n209, ZN
                           => n171);
   U242 : AOI221_X1 port map( B1 => N118, B2 => n203, C1 => N85, C2 => n202, A 
                           => n171, ZN => n172);
   U243 : NAND2_X1 port map( A1 => n173, A2 => n172, ZN => N150);
   U244 : AOI222_X1 port map( A1 => N70, A2 => n198, B1 => N133, B2 => n197, C1
                           => N101, C2 => n196, ZN => n176);
   U245 : OAI22_X1 port map( A1 => n192, A2 => n210, B1 => n200, B2 => n240, ZN
                           => n174);
   U246 : AOI221_X1 port map( B1 => N117, B2 => n203, C1 => N86, C2 => n202, A 
                           => n174, ZN => n175);
   U247 : NAND2_X1 port map( A1 => n176, A2 => n175, ZN => N151);
   U248 : AOI222_X1 port map( A1 => N71, A2 => n198, B1 => N132, B2 => n197, C1
                           => N100, C2 => n196, ZN => n179);
   U249 : OAI22_X1 port map( A1 => n192, A2 => n211, B1 => n200, B2 => n241, ZN
                           => n177);
   U250 : AOI221_X1 port map( B1 => N116, B2 => n203, C1 => N87, C2 => n202, A 
                           => n177, ZN => n178);
   U251 : NAND2_X1 port map( A1 => n179, A2 => n178, ZN => N152);
   U252 : AOI222_X1 port map( A1 => N72, A2 => n198, B1 => N131, B2 => n197, C1
                           => N99, C2 => n196, ZN => n182);
   U253 : OAI22_X1 port map( A1 => n192, A2 => n219, B1 => n200, B2 => n210, ZN
                           => n180);
   U254 : AOI221_X1 port map( B1 => N115, B2 => n203, C1 => N88, C2 => n202, A 
                           => n180, ZN => n181);
   U255 : NAND2_X1 port map( A1 => n182, A2 => n181, ZN => N153);
   U256 : AOI222_X1 port map( A1 => N73, A2 => n198, B1 => N130, B2 => n197, C1
                           => N98, C2 => n196, ZN => n185);
   U257 : OAI22_X1 port map( A1 => n192, A2 => n221, B1 => n200, B2 => n211, ZN
                           => n183);
   U258 : AOI221_X1 port map( B1 => N114, B2 => n203, C1 => N89, C2 => n202, A 
                           => n183, ZN => n184);
   U259 : NAND2_X1 port map( A1 => n185, A2 => n184, ZN => N154);
   U260 : AOI222_X1 port map( A1 => N74, A2 => n198, B1 => N129, B2 => n197, C1
                           => N97, C2 => n196, ZN => n188);
   U261 : OAI22_X1 port map( A1 => n212, A2 => n192, B1 => n200, B2 => n219, ZN
                           => n186);
   U262 : AOI221_X1 port map( B1 => N113, B2 => n203, C1 => N90, C2 => n202, A 
                           => n186, ZN => n187);
   U263 : NAND2_X1 port map( A1 => n188, A2 => n187, ZN => N155);
   U264 : AOI222_X1 port map( A1 => N75, A2 => n198, B1 => N128, B2 => n197, C1
                           => N96, C2 => n196, ZN => n191);
   U265 : OAI22_X1 port map( A1 => n213, A2 => n192, B1 => n200, B2 => n221, ZN
                           => n189);
   U266 : AOI221_X1 port map( B1 => N112, B2 => n203, C1 => N91, C2 => n202, A 
                           => n189, ZN => n190);
   U267 : NAND2_X1 port map( A1 => n191, A2 => n190, ZN => N156);
   U268 : AOI222_X1 port map( A1 => N76, A2 => n198, B1 => N127, B2 => n197, C1
                           => N95, C2 => n196, ZN => n195);
   U269 : OAI22_X1 port map( A1 => n192, A2 => n225, B1 => n200, B2 => n212, ZN
                           => n193);
   U270 : AOI221_X1 port map( B1 => N111, B2 => n203, C1 => N92, C2 => n202, A 
                           => n193, ZN => n194);
   U271 : NAND2_X1 port map( A1 => n195, A2 => n194, ZN => N157);
   U272 : AOI222_X1 port map( A1 => N77, A2 => n198, B1 => N126, B2 => n197, C1
                           => N94, C2 => n196, ZN => n205);
   U273 : NAND3_X1 port map( A1 => n217, A2 => FUNC_0_port, A3 => DATA1(0), ZN 
                           => n199);
   U274 : OAI21_X1 port map( B1 => n200, B2 => n213, A => n199, ZN => n201);
   U275 : AOI221_X1 port map( B1 => N110, B2 => n203, C1 => N93, C2 => n202, A 
                           => n201, ZN => n204);
   U276 : NAND2_X1 port map( A1 => n205, A2 => n204, ZN => N158);
   U277 : NOR2_X1 port map( A1 => n211, A2 => n218, ZN => N99);
   U278 : NOR2_X1 port map( A1 => n219, A2 => n220, ZN => N98);
   U279 : NOR2_X1 port map( A1 => n221, A2 => n222, ZN => N97);
   U280 : NOR2_X1 port map( A1 => n212, A2 => n223, ZN => N96);
   U281 : NOR2_X1 port map( A1 => n213, A2 => n224, ZN => N95);
   U282 : NOR2_X1 port map( A1 => n225, A2 => n226, ZN => N94);
   U283 : OAI21_X1 port map( B1 => FUNC_2_port, B2 => FUNC_1_port, A => 
                           FUNC_3_port, ZN => N142);
   U284 : XNOR2_X1 port map( A => n227, B => DATA1(0), ZN => N141);
   U285 : XNOR2_X1 port map( A => n228, B => DATA1(1), ZN => N140);
   U286 : XNOR2_X1 port map( A => n229, B => DATA1(2), ZN => N139);
   U287 : XNOR2_X1 port map( A => n230, B => DATA1(3), ZN => N138);
   U288 : XNOR2_X1 port map( A => n231, B => DATA1(4), ZN => N137);
   U289 : XNOR2_X1 port map( A => n232, B => DATA1(5), ZN => N136);
   U290 : XNOR2_X1 port map( A => n233, B => DATA1(6), ZN => N135);
   U291 : XNOR2_X1 port map( A => n234, B => DATA1(7), ZN => N134);
   U292 : XNOR2_X1 port map( A => n235, B => DATA1(8), ZN => N133);
   U293 : XNOR2_X1 port map( A => n236, B => DATA1(9), ZN => N132);
   U294 : XNOR2_X1 port map( A => n218, B => DATA1(10), ZN => N131);
   U295 : XNOR2_X1 port map( A => n220, B => DATA1(11), ZN => N130);
   U296 : XNOR2_X1 port map( A => n222, B => DATA1(12), ZN => N129);
   U297 : XNOR2_X1 port map( A => n223, B => DATA1(13), ZN => N128);
   U298 : XNOR2_X1 port map( A => n224, B => DATA1(14), ZN => N127);
   U299 : XNOR2_X1 port map( A => n226, B => DATA1(15), ZN => N126);
   U300 : NAND2_X1 port map( A1 => n227, A2 => n237, ZN => N125);
   U301 : NAND2_X1 port map( A1 => n228, A2 => n238, ZN => N124);
   U302 : NAND2_X1 port map( A1 => n229, A2 => n206, ZN => N123);
   U303 : NAND2_X1 port map( A1 => n230, A2 => n207, ZN => N122);
   U304 : NAND2_X1 port map( A1 => n231, A2 => n239, ZN => N121);
   U305 : NAND2_X1 port map( A1 => n232, A2 => n208, ZN => N120);
   U306 : NAND2_X1 port map( A1 => n233, A2 => n209, ZN => N119);
   U307 : NAND2_X1 port map( A1 => n234, A2 => n240, ZN => N118);
   U308 : NAND2_X1 port map( A1 => n235, A2 => n241, ZN => N117);
   U309 : NAND2_X1 port map( A1 => n236, A2 => n210, ZN => N116);
   U310 : NAND2_X1 port map( A1 => n218, A2 => n211, ZN => N115);
   U311 : INV_X1 port map( A => DATA2(10), ZN => n218);
   U312 : NAND2_X1 port map( A1 => n220, A2 => n219, ZN => N114);
   U313 : INV_X1 port map( A => DATA1(11), ZN => n219);
   U314 : INV_X1 port map( A => DATA2(11), ZN => n220);
   U315 : NAND2_X1 port map( A1 => n222, A2 => n221, ZN => N113);
   U316 : INV_X1 port map( A => DATA1(12), ZN => n221);
   U317 : INV_X1 port map( A => DATA2(12), ZN => n222);
   U318 : NAND2_X1 port map( A1 => n223, A2 => n212, ZN => N112);
   U319 : INV_X1 port map( A => DATA2(13), ZN => n223);
   U320 : NAND2_X1 port map( A1 => n224, A2 => n213, ZN => N111);
   U321 : INV_X1 port map( A => DATA2(14), ZN => n224);
   U322 : NAND2_X1 port map( A1 => n226, A2 => n225, ZN => N110);
   U323 : INV_X1 port map( A => DATA1(15), ZN => n225);
   U324 : INV_X1 port map( A => DATA2(15), ZN => n226);
   U325 : NOR2_X1 port map( A1 => n227, A2 => n237, ZN => N109);
   U326 : INV_X1 port map( A => DATA1(0), ZN => n237);
   U327 : INV_X1 port map( A => DATA2(0), ZN => n227);
   U328 : NOR2_X1 port map( A1 => n228, A2 => n238, ZN => N108);
   U329 : INV_X1 port map( A => DATA1(1), ZN => n238);
   U330 : INV_X1 port map( A => DATA2(1), ZN => n228);
   U331 : NOR2_X1 port map( A1 => n229, A2 => n206, ZN => N107);
   U332 : INV_X1 port map( A => DATA2(2), ZN => n229);
   U333 : NOR2_X1 port map( A1 => n230, A2 => n207, ZN => N106);
   U334 : INV_X1 port map( A => DATA2(3), ZN => n230);
   U335 : NOR2_X1 port map( A1 => n231, A2 => n239, ZN => N105);
   U336 : INV_X1 port map( A => DATA1(4), ZN => n239);
   U337 : INV_X1 port map( A => DATA2(4), ZN => n231);
   U338 : NOR2_X1 port map( A1 => n232, A2 => n208, ZN => N104);
   U339 : INV_X1 port map( A => DATA2(5), ZN => n232);
   U340 : NOR2_X1 port map( A1 => n233, A2 => n209, ZN => N103);
   U341 : INV_X1 port map( A => DATA2(6), ZN => n233);
   U342 : NOR2_X1 port map( A1 => n234, A2 => n240, ZN => N102);
   U343 : INV_X1 port map( A => DATA1(7), ZN => n240);
   U344 : INV_X1 port map( A => DATA2(7), ZN => n234);
   U345 : NOR2_X1 port map( A1 => n235, A2 => n241, ZN => N101);
   U346 : INV_X1 port map( A => DATA1(8), ZN => n241);
   U347 : INV_X1 port map( A => DATA2(8), ZN => n235);
   U348 : NOR2_X1 port map( A1 => n236, A2 => n210, ZN => N100);
   U349 : INV_X1 port map( A => DATA2(9), ZN => n236);

end SYN_BEHAVIOR;
