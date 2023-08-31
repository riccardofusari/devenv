library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pg_generator is
  port (A : in  std_logic;
        B : in  std_logic;
        P : out std_logic;
        G : out std_logic);
end pg_generator;

architecture behavioral of pg_generator is
begin
  P <= A xor B;
  G <= A and B;

end architecture behavioral;
