
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC_DW01_add_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (15 downto 0);  CO : out std_logic);

end ACC_DW01_add_0;

architecture SYN_rpl of ACC_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1,
      n_1002 : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           n_1002, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC is

   port( A, B : in std_logic_vector (15 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Yacc : out std_logic_vector (15 downto 0));

end ACC;

architecture SYN_BEHAVIORAL of ACC is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component ACC_DW01_add_0
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal regOut_15_port, regOut_14_port, regOut_13_port, regOut_12_port, 
      regOut_11_port, regOut_10_port, regOut_9_port, regOut_8_port, 
      regOut_7_port, regOut_6_port, regOut_5_port, regOut_4_port, regOut_3_port
      , regOut_2_port, regOut_1_port, regOut_0_port, addOut_15_port, 
      addOut_14_port, addOut_13_port, addOut_12_port, addOut_11_port, 
      addOut_10_port, addOut_9_port, addOut_8_port, addOut_7_port, 
      addOut_6_port, addOut_5_port, addOut_4_port, addOut_3_port, addOut_2_port
      , addOut_1_port, addOut_0_port, n1, n51, n52, n53, n54, n55, n56, n57, 
      n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72
      , n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n84, n_1003, n_1004, 
      n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, 
      n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, 
      n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, n_1031, 
      n_1032, n_1033, n_1034, n_1035 : std_logic;

begin
   
   n1 <= '0';
   regOut_reg_0_inst : DFF_X1 port map( D => n66, CK => CLK, Q => regOut_0_port
                           , QN => n_1003);
   regOut_reg_1_inst : DFF_X1 port map( D => n65, CK => CLK, Q => regOut_1_port
                           , QN => n_1004);
   regOut_reg_2_inst : DFF_X1 port map( D => n64, CK => CLK, Q => regOut_2_port
                           , QN => n_1005);
   regOut_reg_3_inst : DFF_X1 port map( D => n63, CK => CLK, Q => regOut_3_port
                           , QN => n_1006);
   regOut_reg_4_inst : DFF_X1 port map( D => n62, CK => CLK, Q => regOut_4_port
                           , QN => n_1007);
   regOut_reg_5_inst : DFF_X1 port map( D => n61, CK => CLK, Q => regOut_5_port
                           , QN => n_1008);
   regOut_reg_6_inst : DFF_X1 port map( D => n60, CK => CLK, Q => regOut_6_port
                           , QN => n_1009);
   regOut_reg_7_inst : DFF_X1 port map( D => n59, CK => CLK, Q => regOut_7_port
                           , QN => n_1010);
   regOut_reg_8_inst : DFF_X1 port map( D => n58, CK => CLK, Q => regOut_8_port
                           , QN => n_1011);
   regOut_reg_9_inst : DFF_X1 port map( D => n57, CK => CLK, Q => regOut_9_port
                           , QN => n_1012);
   regOut_reg_10_inst : DFF_X1 port map( D => n56, CK => CLK, Q => 
                           regOut_10_port, QN => n_1013);
   regOut_reg_11_inst : DFF_X1 port map( D => n55, CK => CLK, Q => 
                           regOut_11_port, QN => n_1014);
   regOut_reg_12_inst : DFF_X1 port map( D => n54, CK => CLK, Q => 
                           regOut_12_port, QN => n_1015);
   regOut_reg_13_inst : DFF_X1 port map( D => n53, CK => CLK, Q => 
                           regOut_13_port, QN => n_1016);
   regOut_reg_14_inst : DFF_X1 port map( D => n52, CK => CLK, Q => 
                           regOut_14_port, QN => n_1017);
   regOut_reg_15_inst : DFF_X1 port map( D => n51, CK => CLK, Q => 
                           regOut_15_port, QN => n_1018);
   Yacc_reg_15_inst : DFFR_X1 port map( D => addOut_15_port, CK => CLK, RN => 
                           n84, Q => Yacc(15), QN => n_1019);
   Yacc_reg_14_inst : DFFR_X1 port map( D => addOut_14_port, CK => CLK, RN => 
                           n84, Q => Yacc(14), QN => n_1020);
   Yacc_reg_13_inst : DFFR_X1 port map( D => addOut_13_port, CK => CLK, RN => 
                           n84, Q => Yacc(13), QN => n_1021);
   Yacc_reg_12_inst : DFFR_X1 port map( D => addOut_12_port, CK => CLK, RN => 
                           n84, Q => Yacc(12), QN => n_1022);
   Yacc_reg_11_inst : DFFR_X1 port map( D => addOut_11_port, CK => CLK, RN => 
                           n84, Q => Yacc(11), QN => n_1023);
   Yacc_reg_10_inst : DFFR_X1 port map( D => addOut_10_port, CK => CLK, RN => 
                           n84, Q => Yacc(10), QN => n_1024);
   Yacc_reg_9_inst : DFFR_X1 port map( D => addOut_9_port, CK => CLK, RN => n84
                           , Q => Yacc(9), QN => n_1025);
   Yacc_reg_8_inst : DFFR_X1 port map( D => addOut_8_port, CK => CLK, RN => n84
                           , Q => Yacc(8), QN => n_1026);
   Yacc_reg_7_inst : DFFR_X1 port map( D => addOut_7_port, CK => CLK, RN => n84
                           , Q => Yacc(7), QN => n_1027);
   Yacc_reg_6_inst : DFFR_X1 port map( D => addOut_6_port, CK => CLK, RN => n84
                           , Q => Yacc(6), QN => n_1028);
   Yacc_reg_5_inst : DFFR_X1 port map( D => addOut_5_port, CK => CLK, RN => n84
                           , Q => Yacc(5), QN => n_1029);
   Yacc_reg_4_inst : DFFR_X1 port map( D => addOut_4_port, CK => CLK, RN => n84
                           , Q => Yacc(4), QN => n_1030);
   Yacc_reg_3_inst : DFFR_X1 port map( D => addOut_3_port, CK => CLK, RN => n84
                           , Q => Yacc(3), QN => n_1031);
   Yacc_reg_2_inst : DFFR_X1 port map( D => addOut_2_port, CK => CLK, RN => n84
                           , Q => Yacc(2), QN => n_1032);
   Yacc_reg_1_inst : DFFR_X1 port map( D => addOut_1_port, CK => CLK, RN => n84
                           , Q => Yacc(1), QN => n_1033);
   Yacc_reg_0_inst : DFFR_X1 port map( D => addOut_0_port, CK => CLK, RN => n84
                           , Q => Yacc(0), QN => n_1034);
   add_217 : ACC_DW01_add_0 port map( A(15) => A(15), A(14) => A(14), A(13) => 
                           A(13), A(12) => A(12), A(11) => A(11), A(10) => 
                           A(10), A(9) => A(9), A(8) => A(8), A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => n67, B(14) => n68, B(13) => n69, B(12) => 
                           n70, B(11) => n71, B(10) => n72, B(9) => n73, B(8) 
                           => n74, B(7) => n75, B(6) => n76, B(5) => n77, B(4) 
                           => n78, B(3) => n79, B(2) => n80, B(1) => n81, B(0) 
                           => n82, CI => n1, SUM(15) => addOut_15_port, SUM(14)
                           => addOut_14_port, SUM(13) => addOut_13_port, 
                           SUM(12) => addOut_12_port, SUM(11) => addOut_11_port
                           , SUM(10) => addOut_10_port, SUM(9) => addOut_9_port
                           , SUM(8) => addOut_8_port, SUM(7) => addOut_7_port, 
                           SUM(6) => addOut_6_port, SUM(5) => addOut_5_port, 
                           SUM(4) => addOut_4_port, SUM(3) => addOut_3_port, 
                           SUM(2) => addOut_2_port, SUM(1) => addOut_1_port, 
                           SUM(0) => addOut_0_port, CO => n_1035);
   U85 : INV_X1 port map( A => RST_n, ZN => n84);
   U86 : MUX2_X1 port map( A => regOut_0_port, B => B(0), S => ACCUMULATE, Z =>
                           n82);
   U87 : MUX2_X1 port map( A => regOut_1_port, B => B(1), S => ACCUMULATE, Z =>
                           n81);
   U88 : MUX2_X1 port map( A => regOut_2_port, B => B(2), S => ACCUMULATE, Z =>
                           n80);
   U89 : MUX2_X1 port map( A => regOut_3_port, B => B(3), S => ACCUMULATE, Z =>
                           n79);
   U90 : MUX2_X1 port map( A => regOut_4_port, B => B(4), S => ACCUMULATE, Z =>
                           n78);
   U91 : MUX2_X1 port map( A => regOut_5_port, B => B(5), S => ACCUMULATE, Z =>
                           n77);
   U92 : MUX2_X1 port map( A => regOut_6_port, B => B(6), S => ACCUMULATE, Z =>
                           n76);
   U93 : MUX2_X1 port map( A => regOut_7_port, B => B(7), S => ACCUMULATE, Z =>
                           n75);
   U94 : MUX2_X1 port map( A => regOut_8_port, B => B(8), S => ACCUMULATE, Z =>
                           n74);
   U95 : MUX2_X1 port map( A => regOut_9_port, B => B(9), S => ACCUMULATE, Z =>
                           n73);
   U96 : MUX2_X1 port map( A => regOut_10_port, B => B(10), S => ACCUMULATE, Z 
                           => n72);
   U97 : MUX2_X1 port map( A => regOut_11_port, B => B(11), S => ACCUMULATE, Z 
                           => n71);
   U98 : MUX2_X1 port map( A => regOut_12_port, B => B(12), S => ACCUMULATE, Z 
                           => n70);
   U99 : MUX2_X1 port map( A => regOut_13_port, B => B(13), S => ACCUMULATE, Z 
                           => n69);
   U100 : MUX2_X1 port map( A => regOut_14_port, B => B(14), S => ACCUMULATE, Z
                           => n68);
   U101 : MUX2_X1 port map( A => regOut_15_port, B => B(15), S => ACCUMULATE, Z
                           => n67);
   U102 : MUX2_X1 port map( A => addOut_0_port, B => regOut_0_port, S => RST_n,
                           Z => n66);
   U103 : MUX2_X1 port map( A => addOut_1_port, B => regOut_1_port, S => RST_n,
                           Z => n65);
   U104 : MUX2_X1 port map( A => addOut_2_port, B => regOut_2_port, S => RST_n,
                           Z => n64);
   U105 : MUX2_X1 port map( A => addOut_3_port, B => regOut_3_port, S => RST_n,
                           Z => n63);
   U106 : MUX2_X1 port map( A => addOut_4_port, B => regOut_4_port, S => RST_n,
                           Z => n62);
   U107 : MUX2_X1 port map( A => addOut_5_port, B => regOut_5_port, S => RST_n,
                           Z => n61);
   U108 : MUX2_X1 port map( A => addOut_6_port, B => regOut_6_port, S => RST_n,
                           Z => n60);
   U109 : MUX2_X1 port map( A => addOut_7_port, B => regOut_7_port, S => RST_n,
                           Z => n59);
   U110 : MUX2_X1 port map( A => addOut_8_port, B => regOut_8_port, S => RST_n,
                           Z => n58);
   U111 : MUX2_X1 port map( A => addOut_9_port, B => regOut_9_port, S => RST_n,
                           Z => n57);
   U112 : MUX2_X1 port map( A => addOut_10_port, B => regOut_10_port, S => 
                           RST_n, Z => n56);
   U113 : MUX2_X1 port map( A => addOut_11_port, B => regOut_11_port, S => 
                           RST_n, Z => n55);
   U114 : MUX2_X1 port map( A => addOut_12_port, B => regOut_12_port, S => 
                           RST_n, Z => n54);
   U115 : MUX2_X1 port map( A => addOut_13_port, B => regOut_13_port, S => 
                           RST_n, Z => n53);
   U116 : MUX2_X1 port map( A => addOut_14_port, B => regOut_14_port, S => 
                           RST_n, Z => n52);
   U117 : MUX2_X1 port map( A => addOut_15_port, B => regOut_15_port, S => 
                           RST_n, Z => n51);

end SYN_BEHAVIORAL;
