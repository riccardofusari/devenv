----------------------------------------------------------------------------------------------------------
-- Title      : Ripple Carry Adder
-- Project    : Workshop SoC Verification
----------------------------------------------------------------------------------------------------------
-- File      : rca.vhd
-- Author    : Riccardo Fusari
-----------------------------------------------------------------------------------------------------------
-- Description: This file contains the behavioral description in VHDL of
--              a ripple carry adder
--
-----------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity rca is
  generic (
    DWIDTH : integer := 32
    );
  port (
    a, b : in  std_logic_vector(DWIDTH-1 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(DWIDTH-1 downto 0);
    cout : out std_logic
    );
end rca;

architecture behavioral of rca is
begin
  rca_proc : process(a, b, cin)
    variable carry : std_logic := '0';
  begin
    sum(0) <= (a(0) xor b(0)) xor cin;
    carry  := (a(0) and b(0)) or (a(0) and cin) or (b(0) and cin);

    for i in 1 to DWIDTH-1 loop
      sum(i) <= (a(i) xor b(i)) xor carry;
      carry  := (a(i) and b(i)) or (a(i) and carry) or (b(i) and carry);
    end loop;
    
    cout <= carry;
    carry := '0';
  end process rca_proc;
end behavioral;
