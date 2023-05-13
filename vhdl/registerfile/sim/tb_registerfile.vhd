----------------------------------------------------------------------------------------------------------
-- Title      : Register File Testbench
-- Project    : lab 3
----------------------------------------------------------------------------------------------------------
-- File      : tb_registerfile.vhd
-- Author    : ms23.13
-----------------------------------------------------------------------------------------------------------
-- Description: This file contains the testbench used for simulating the behavioral description of a register
-- file of 32 registers of 64 bits each.
--
--
-----------------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;


entity TBREGISTERFILE is
end TBREGISTERFILE;

architecture TEST of TBREGISTERFILE is

  signal CLK     : std_logic := '0';
  signal RESET   : std_logic;
  signal ENABLE  : std_logic;
  signal RD1     : std_logic;
  signal RD2     : std_logic;
  signal WR      : std_logic;
  signal ADD_WR  : std_logic_vector(4 downto 0);
  signal ADD_RD1 : std_logic_vector(4 downto 0);
  signal ADD_RD2 : std_logic_vector(4 downto 0);
  signal DATAIN  : std_logic_vector(63 downto 0);
  signal OUT1    : std_logic_vector(63 downto 0);
  signal OUT2    : std_logic_vector(63 downto 0);


  component register_file
    port (CLK     : in  std_logic;
          RESET   : in  std_logic;
          ENABLE  : in  std_logic;
          RD1     : in  std_logic;
          RD2     : in  std_logic;
          WR      : in  std_logic;
          ADD_WR  : in  std_logic_vector(4 downto 0);
          ADD_RD1 : in  std_logic_vector(4 downto 0);
          ADD_RD2 : in  std_logic_vector(4 downto 0);
          DATAIN  : in  std_logic_vector(63 downto 0);
          OUT1    : out std_logic_vector(63 downto 0);
          OUT2    : out std_logic_vector(63 downto 0)
          );
  end component;

begin

  RG : register_file
    port map (CLK, RESET, ENABLE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2);

  RESET  <= '1', '0' after 5 ns, '1' after 45 ns, '0' after 50 ns;
  ENABLE <= '0', '1' after 3 ns, '0' after 10 ns, '1' after 15 ns;
  WR     <= '0', '1' after 6 ns, '0' after 7 ns, '1' after 10 ns, '0' after 20 ns, '1' after 35 ns, '0' after 40 ns;
  RD1    <= '1', '0' after 7 ns, '1' after 13 ns, '0' after 20 ns, '1' after 35 ns, '0' after 40 ns;
  RD2    <= '0', '1' after 17 ns;

  ADD_WR  <= "01000", "01100"                         after 9 ns, "00000" after 10 ns, "11000" after 15 ns, "11110" after 35 ns;
  ADD_RD1 <= "10110", "01000"                         after 15 ns, "01000" after 20 ns, "11000" after 25 ns;
  ADD_RD2 <= "11100", "01000"                         after 30 ns, "11110" after 35 ns, "11100" after 40 ns;

  DATAIN  <= X"0F0FABA2564F45AA", X"5678543267ABDDDD" after 14 ns, X"8888888888888888" after 25 ns, X"674ABCDEAAAA556A" after 35 ns;


  PCLOCK : process(CLK)
  begin
    CLK <= not(CLK) after 0.5 ns;
  end process;

end TEST;

---
configuration CFG_TESTRF of TBREGISTERFILE is
  for TEST
    for RG : register_file
      use configuration WORK.CFG_RF_BEH;
    end for;
  end for;
end CFG_TESTRF;
