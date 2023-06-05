
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_register_generic is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_register_generic;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_15 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_15;

architecture SYN_ASYNCH_FD of FD_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1000 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1000);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_14 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_14;

architecture SYN_ASYNCH_FD of FD_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1001 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1001);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_13 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_13;

architecture SYN_ASYNCH_FD of FD_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1002 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1002);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_12 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_12;

architecture SYN_ASYNCH_FD of FD_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1003 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1003);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_11 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_11;

architecture SYN_ASYNCH_FD of FD_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1004 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1004);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_10 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_10;

architecture SYN_ASYNCH_FD of FD_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1005 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1005);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_9 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_9;

architecture SYN_ASYNCH_FD of FD_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1006 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1006);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_8 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_8;

architecture SYN_ASYNCH_FD of FD_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1007 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1007);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_7 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_7;

architecture SYN_ASYNCH_FD of FD_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1008 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1008);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_6 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_6;

architecture SYN_ASYNCH_FD of FD_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1009 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1009);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_5 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_5;

architecture SYN_ASYNCH_FD of FD_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1010 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1010);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_4 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_4;

architecture SYN_ASYNCH_FD of FD_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1011 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1011);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_3 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_ASYNCH_FD of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1012 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1012);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_2 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_ASYNCH_FD of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1013 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1013);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_1 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_ASYNCH_FD of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1014 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1014);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity FD_0 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_ASYNCH_FD of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1015 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n1, Q => Q, QN => n_1015);
   U3 : INV_X1 port map( A => RESET, ZN => n1);

end SYN_ASYNCH_FD;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_generic.all;

entity register_generic is

   port( data_in : in std_logic_vector (15 downto 0);  CK, RESET : in std_logic
         ;  data_out : out std_logic_vector (15 downto 0));

end register_generic;

architecture SYN_ASYNCHRONOUS of register_generic is

   component FD_1
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_4
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_5
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_6
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_7
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_8
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_9
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_10
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_11
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_12
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_13
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_14
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_15
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   ureg0_0 : FD_0 port map( D => data_in(0), CK => CK, RESET => RESET, Q => 
                           data_out(0));
   ureg0_1 : FD_15 port map( D => data_in(1), CK => CK, RESET => RESET, Q => 
                           data_out(1));
   ureg0_2 : FD_14 port map( D => data_in(2), CK => CK, RESET => RESET, Q => 
                           data_out(2));
   ureg0_3 : FD_13 port map( D => data_in(3), CK => CK, RESET => RESET, Q => 
                           data_out(3));
   ureg0_4 : FD_12 port map( D => data_in(4), CK => CK, RESET => RESET, Q => 
                           data_out(4));
   ureg0_5 : FD_11 port map( D => data_in(5), CK => CK, RESET => RESET, Q => 
                           data_out(5));
   ureg0_6 : FD_10 port map( D => data_in(6), CK => CK, RESET => RESET, Q => 
                           data_out(6));
   ureg0_7 : FD_9 port map( D => data_in(7), CK => CK, RESET => RESET, Q => 
                           data_out(7));
   ureg0_8 : FD_8 port map( D => data_in(8), CK => CK, RESET => RESET, Q => 
                           data_out(8));
   ureg0_9 : FD_7 port map( D => data_in(9), CK => CK, RESET => RESET, Q => 
                           data_out(9));
   ureg0_10 : FD_6 port map( D => data_in(10), CK => CK, RESET => RESET, Q => 
                           data_out(10));
   ureg0_11 : FD_5 port map( D => data_in(11), CK => CK, RESET => RESET, Q => 
                           data_out(11));
   ureg0_12 : FD_4 port map( D => data_in(12), CK => CK, RESET => RESET, Q => 
                           data_out(12));
   ureg0_13 : FD_3 port map( D => data_in(13), CK => CK, RESET => RESET, Q => 
                           data_out(13));
   ureg0_14 : FD_2 port map( D => data_in(14), CK => CK, RESET => RESET, Q => 
                           data_out(14));
   ureg0_15 : FD_1 port map( D => data_in(15), CK => CK, RESET => RESET, Q => 
                           data_out(15));

end SYN_ASYNCHRONOUS;
