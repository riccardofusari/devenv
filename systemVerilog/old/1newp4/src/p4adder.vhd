library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity p4adder is
  generic (NBITS : integer := 32);
  
  port(
        A     :   in    std_logic_vector(NBITS-1 downto 0);
        B     :   in    std_logic_vector(NBITS-1 downto 0);
        Ci    :   in    std_logic;
        S     :   out   std_logic_vector(NBITS-1 downto 0);
        Co    :   out   std_logic
  );
end p4adder;


architecture structural of p4adder is

  component sub_logic is
    generic(NBITS : integer := 32);
    port(
          Cin : in  std_logic;
          B0  : in  std_logic_vector(NBITS-1 downto 0);
          B   : out std_logic_vector(NBITS-1 downto 0)
    );
  end component;


  component cla_sparse is
    generic(NBITS        : integer := 32;
            NBITS_CARRIES : integer := 4);

    port(
          A     :  in       std_logic_vector(NBITS downto 1);
          B     :  in       std_logic_vector(NBITS downto 1);
          C0    :  in       std_logic;
          COUT  :  out      std_logic_vector((NBITS/NBITS_CARRIES) downto 0)
         );

  end component;




  component sumGenerator is
    generic (NBITS           : integer := 32;
             BITS_PER_MODULE : integer := 4;
             NUM_MODULES     : integer := 8);

    port(A  : in  std_logic_vector(BITS_PER_MODULE*NUM_MODULES-1 downto 0);
         B  : in  std_logic_vector(BITS_PER_MODULE*NUM_MODULES-1 downto 0);
         Ci : in  std_logic_vector(NUM_MODULES downto 0);
         S  : out std_logic_vector(BITS_PER_MODULE*NUM_MODULES-1 downto 0)
         );

  end component;

  signal fromCarry_to_adder : std_logic_vector(NBITS/4 downto 0);
  signal B_diff : std_logic_vector(NBITS-1 downto 0);
begin

  xor_gate : sub_logic
    generic map(NBITS)
    port map(Ci, B, B_diff);

  SUM_GEN : sumGenerator
    port map(A, B_diff, fromCarry_to_adder, S);

  CLA : cla_sparse
    port map(A, B_diff, Ci, fromCarry_to_adder);

  Co <= fromCarry_to_adder(NBITS/4);
end structural;
