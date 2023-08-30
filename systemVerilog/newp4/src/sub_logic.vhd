library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity sub_logic is
  generic(nbits : integer := 32);
  port(
       Cin   :   in     std_logic;
       B0    :   in     std_logic_vector(nbits-1 downto 0);
       B     :   out    std_logic_vector(nbits-1 downto 0)
  );
end sub_logic;

architecture behavioral of sub_logic is
begin
  process (Cin, B0)
  begin
    for i in B0'range loop
      B(i) <= Cin xor B0(i);
    end loop;
  end process;
end behavioral;
