
library ieee;
use ieee.std_logic_1164.all;

entity csb is
  generic(
    NBITS : integer := 4);

  port (
    A   : in  std_logic_vector(NBITS-1 downto 0);  --each input 4 bits
    B   : in  std_logic_vector(NBITS-1 downto 0);
    Cin : in  std_logic;
    S   : out std_logic_vector(NBITS-1 downto 0)
    );
end csb;

architecture STRUCTURAL of csb is
  signal CI1  : std_logic := '1';
  signal CI0  : std_logic := '0';
  signal sum1 : std_logic_vector(NBITS-1 downto 0);
  signal sum2 : std_logic_vector(NBITS-1 downto 0);


  component RCA
    generic (NBITS : integer := 32);
    port (A  : in  std_logic_vector(NBITS-1 downto 0);
          B  : in  std_logic_vector(NBITS-1 downto 0);
          Ci : in  std_logic;
          S  : out std_logic_vector(NBITS-1 downto 0);
          Co : out std_logic);
  end component;

  component MUX21_GENERIC
    generic (bits : integer := 16);

    port (
      A : in  std_logic_vector (bits -1 downto 0);
      B : in  std_logic_vector (bits -1 downto 0);
      S : in  std_logic;
      Y : out std_logic_vector (bits -1 downto 0)
      );

  end component;

begin
  --Instantiate the 2 RCA:
  RCA1 : entity work.RCA(STRUCTURAL)
    generic map (NBITS => NBITS)
    port map (A, B, CI0, sum1);

  RCA2 : entity work.RCA(STRUCTURAL)
    generic map (NBITS => NBITS)
    port map (A, B, CI1, sum2);

  MUX21_GEN : entity work.MUX21_GENERIC(BEHAVIORAL)
    generic map (NBITS)
    port map(sum2, sum1, Cin, S);

end STRUCTURAL;
