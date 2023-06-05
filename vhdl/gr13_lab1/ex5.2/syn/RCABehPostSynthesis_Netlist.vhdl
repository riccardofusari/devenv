
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA_generic is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA_generic;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_generic.all;

entity RCA_generic is

   port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (7 downto 0);  Co : out std_logic);

end RCA_generic;

architecture SYN_BEHAVIORAL of RCA_generic is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78 : std_logic;

begin
   
   U49 : XOR2_X1 port map( A => n39, B => n40, Z => S(7));
   U50 : XOR2_X1 port map( A => n41, B => A(7), Z => n40);
   U51 : XNOR2_X1 port map( A => B(7), B => Ci, ZN => n39);
   U52 : XOR2_X1 port map( A => n42, B => n43, Z => S(6));
   U53 : XNOR2_X1 port map( A => n44, B => A(6), ZN => n43);
   U54 : XNOR2_X1 port map( A => B(6), B => Ci, ZN => n42);
   U55 : XOR2_X1 port map( A => n45, B => n46, Z => S(5));
   U56 : XOR2_X1 port map( A => Ci, B => B(5), Z => n46);
   U57 : XOR2_X1 port map( A => n47, B => n48, Z => n45);
   U58 : XOR2_X1 port map( A => n49, B => n50, Z => S(4));
   U59 : XOR2_X1 port map( A => n51, B => A(4), Z => n50);
   U60 : XNOR2_X1 port map( A => B(4), B => Ci, ZN => n49);
   U61 : XOR2_X1 port map( A => n52, B => n53, Z => S(3));
   U62 : XNOR2_X1 port map( A => n54, B => A(3), ZN => n53);
   U63 : XNOR2_X1 port map( A => B(3), B => Ci, ZN => n52);
   U64 : XOR2_X1 port map( A => n55, B => n56, Z => S(2));
   U65 : XOR2_X1 port map( A => Ci, B => B(2), Z => n56);
   U66 : XOR2_X1 port map( A => n57, B => n58, Z => n55);
   U67 : XOR2_X1 port map( A => n59, B => n60, Z => S(1));
   U68 : XOR2_X1 port map( A => n61, B => A(1), Z => n60);
   U69 : XNOR2_X1 port map( A => B(1), B => Ci, ZN => n59);
   U70 : MUX2_X1 port map( A => n62, B => n63, S => Ci, Z => S(0));
   U71 : OAI21_X1 port map( B1 => B(0), B2 => A(0), A => n61, ZN => n63);
   U72 : XOR2_X1 port map( A => B(0), B => A(0), Z => n62);
   U73 : OAI21_X1 port map( B1 => n64, B2 => n41, A => n65, ZN => Co);
   U74 : OAI21_X1 port map( B1 => n66, B2 => A(7), A => B(7), ZN => n65);
   U75 : INV_X1 port map( A => n41, ZN => n66);
   U76 : OAI22_X1 port map( A1 => A(6), A2 => n44, B1 => B(6), B2 => n67, ZN =>
                           n41);
   U77 : AND2_X1 port map( A1 => n44, A2 => A(6), ZN => n67);
   U78 : AOI21_X1 port map( B1 => n47, B2 => n48, A => n68, ZN => n44);
   U79 : AOI21_X1 port map( B1 => n69, B2 => A(5), A => B(5), ZN => n68);
   U80 : INV_X1 port map( A => n69, ZN => n48);
   U81 : OAI21_X1 port map( B1 => n51, B2 => n70, A => n71, ZN => n69);
   U82 : OAI21_X1 port map( B1 => n72, B2 => A(4), A => B(4), ZN => n71);
   U83 : INV_X1 port map( A => n51, ZN => n72);
   U84 : INV_X1 port map( A => A(4), ZN => n70);
   U85 : OAI22_X1 port map( A1 => A(3), A2 => n54, B1 => B(3), B2 => n73, ZN =>
                           n51);
   U86 : AND2_X1 port map( A1 => n54, A2 => A(3), ZN => n73);
   U87 : AOI21_X1 port map( B1 => n57, B2 => n58, A => n74, ZN => n54);
   U88 : AOI21_X1 port map( B1 => n75, B2 => A(2), A => B(2), ZN => n74);
   U89 : INV_X1 port map( A => n75, ZN => n58);
   U90 : OAI21_X1 port map( B1 => n61, B2 => n76, A => n77, ZN => n75);
   U91 : OAI21_X1 port map( B1 => n78, B2 => A(1), A => B(1), ZN => n77);
   U92 : INV_X1 port map( A => n61, ZN => n78);
   U93 : INV_X1 port map( A => A(1), ZN => n76);
   U94 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n61);
   U95 : INV_X1 port map( A => A(2), ZN => n57);
   U96 : INV_X1 port map( A => A(5), ZN => n47);
   U97 : INV_X1 port map( A => A(7), ZN => n64);

end SYN_BEHAVIORAL;
