
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_register_generic_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_register_generic_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_31 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_31;

architecture SYN_SYNCH_FD of FD_31 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1000 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1000);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_30 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_30;

architecture SYN_SYNCH_FD of FD_30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1001 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1001);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_29 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_29;

architecture SYN_SYNCH_FD of FD_29 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1002 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1002);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_28 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_28;

architecture SYN_SYNCH_FD of FD_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1003 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1003);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_27 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_27;

architecture SYN_SYNCH_FD of FD_27 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1004 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1004);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_26 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_26;

architecture SYN_SYNCH_FD of FD_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1005 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1005);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_25 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_25;

architecture SYN_SYNCH_FD of FD_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1006 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1006);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_24 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_24;

architecture SYN_SYNCH_FD of FD_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1007 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1007);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_23 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_23;

architecture SYN_SYNCH_FD of FD_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1008 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1008);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_22 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_22;

architecture SYN_SYNCH_FD of FD_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1009 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1009);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_21 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_21;

architecture SYN_SYNCH_FD of FD_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1010 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1010);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_20 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_20;

architecture SYN_SYNCH_FD of FD_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1011 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1011);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_19 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_19;

architecture SYN_SYNCH_FD of FD_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1012 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1012);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_18 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_18;

architecture SYN_SYNCH_FD of FD_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1013 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1013);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_17 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_17;

architecture SYN_SYNCH_FD of FD_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1014 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1014);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity FD_16 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_16;

architecture SYN_SYNCH_FD of FD_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n1, n_1015 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1015);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n1);

end SYN_SYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic_1.all;

entity register_generic_1 is

   port( data_in : in std_logic_vector (15 downto 0);  CK, RESET : in std_logic
         ;  data_out : out std_logic_vector (15 downto 0));

end register_generic_1;

architecture SYN_SYNCHRONOUS of register_generic_1 is

   component FD_17
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_18
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_19
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_20
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_21
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_22
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_23
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_24
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_25
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_26
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_27
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_28
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_29
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_30
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_31
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_16
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   UREG1_0 : FD_16 port map( D => data_in(0), CK => CK, RESET => RESET, Q => 
                           data_out(0));
   UREG1_1 : FD_31 port map( D => data_in(1), CK => CK, RESET => RESET, Q => 
                           data_out(1));
   UREG1_2 : FD_30 port map( D => data_in(2), CK => CK, RESET => RESET, Q => 
                           data_out(2));
   UREG1_3 : FD_29 port map( D => data_in(3), CK => CK, RESET => RESET, Q => 
                           data_out(3));
   UREG1_4 : FD_28 port map( D => data_in(4), CK => CK, RESET => RESET, Q => 
                           data_out(4));
   UREG1_5 : FD_27 port map( D => data_in(5), CK => CK, RESET => RESET, Q => 
                           data_out(5));
   UREG1_6 : FD_26 port map( D => data_in(6), CK => CK, RESET => RESET, Q => 
                           data_out(6));
   UREG1_7 : FD_25 port map( D => data_in(7), CK => CK, RESET => RESET, Q => 
                           data_out(7));
   UREG1_8 : FD_24 port map( D => data_in(8), CK => CK, RESET => RESET, Q => 
                           data_out(8));
   UREG1_9 : FD_23 port map( D => data_in(9), CK => CK, RESET => RESET, Q => 
                           data_out(9));
   UREG1_10 : FD_22 port map( D => data_in(10), CK => CK, RESET => RESET, Q => 
                           data_out(10));
   UREG1_11 : FD_21 port map( D => data_in(11), CK => CK, RESET => RESET, Q => 
                           data_out(11));
   UREG1_12 : FD_20 port map( D => data_in(12), CK => CK, RESET => RESET, Q => 
                           data_out(12));
   UREG1_13 : FD_19 port map( D => data_in(13), CK => CK, RESET => RESET, Q => 
                           data_out(13));
   UREG1_14 : FD_18 port map( D => data_in(14), CK => CK, RESET => RESET, Q => 
                           data_out(14));
   UREG1_15 : FD_17 port map( D => data_in(15), CK => CK, RESET => RESET, Q => 
                           data_out(15));

end SYN_SYNCHRONOUS;
