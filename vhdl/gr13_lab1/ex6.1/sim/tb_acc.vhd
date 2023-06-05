-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
-------------------------------------------------------------------------------

entity tb_acc is

end tb_acc;

-------------------------------------------------------------------------------

architecture TEST of tb_acc is
  constant numBit : integer := 32;
  component ACC
    port (
      A          : in  std_logic_vector(numBit - 1 downto 0);
      B          : in  std_logic_vector(numBit - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      --- ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Yacc          : out std_logic_vector(numBit - 1 downto 0));
  end component;

  signal A_i          : std_logic_vector(numBit - 1 downto 0);
  signal B_i          : std_logic_vector(numBit - 1 downto 0);
  signal CLK_i        : std_logic := '0';
  signal RST_n_i      : std_logic;
  signal negACCUMULATE_i : std_logic; --To accumulate we need to insert a 0,
                                      --otherwise the output will be A + B.
  --- signal ACC_EN_n_i   : std_logic; -- optional
  signal Y_i          : std_logic_vector(numBit - 1 downto 0);
 -- signal Ybehav       : std_logic_vector(numBit - 1 downto 0);
begin  -- TEST

  STR: entity work.acc(STRUCTURAL)
    generic map(numBit)
    port map (
        A          => A_i,
        B          => B_i,
        CLK        => CLK_i,
        RST_n      => RST_n_i,
        ACCUMULATE => negACCUMULATE_i,
        -- ACC_EN_n   => ACC_EN_n_i, -- optional
        Yacc          => Y_i);


  -- BEH: entity work.acc(BEHAVIORAL)
  --   generic map(numBit)
  --   port map (
  --       A          => A_i,
  --       B          => B_i,
  --       CLK        => CLK_i,
  --       RST_n      => RST_n_i,
  --       ACCUMULATE => negACCUMULATE_i,
  --       -- ACC_EN_n   => ACC_EN_n_i, -- optional
  --       Yacc          => Ybehav);

  
  p_clock: process (CLK_i)

  begin  -- process p_clock
    CLK_i <= not(CLK_i) after 6 ns;
  end process p_clock;

  test: process

  begin  -- process test

  A_i          <= "00000000000000000000000000000001";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  ---- ACC_EN_n_i   <= '0';  -- optional
  negACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 12 ns;

  A_i          <= "00000000000000000000000000000001";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  ---- ACC_EN_n_i   <= '0';   -- optional
  negACCUMULATE_i <= '0';                  -- seleziona ingresso FEEDBACK del mux

  wait for 50 ns;

  A_i          <= "00000000000000000000000000000001";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  ---- ACC_EN_n_i   <= '0';   -- optional
  negACCUMULATE_i <= '0';                  -- seleziona ingresso B del mux

  wait for 12 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  -- ACC_EN_n_i   <= '0';
  negACCUMULATE_i <= '0';                  -- seleziona ingresso FEEDBACK del mux

  wait for 19 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  ---- ACC_EN_n_i   <= '1';    --- optional
  negACCUMULATE_i <= '0';                  -- seleziona ingresso FEEDBACK del mux

  wait for 20 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '1';
  --- ACC_EN_n_i   <= '0'; -- optional
  negACCUMULATE_i <= '1';

  wait for 5 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000100000000";
  RST_n_i      <= '1';
  --- ACC_EN_n_i   <= '0';  -- optional
  negACCUMULATE_i <= '1';


    
  end process test;

end TEST;

-------------------------------------------------------------------------------


configuration CFG_TESTACC of tb_acc is
  for TEST
--      for DUT : ACC
--        use configuration WORK.CFG_ACC_BEHAVIORAL;
--      end for;
  end for;
end CFG_TESTACC;
