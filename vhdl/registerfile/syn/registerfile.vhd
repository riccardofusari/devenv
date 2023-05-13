----------------------------------------------------------------------------------------------------------
-- Title      : Register File
-- Project    : lab 3
----------------------------------------------------------------------------------------------------------
-- File      : registerfile.vhd
-- Author    : ms23.13
-----------------------------------------------------------------------------------------------------------
-- Description: This file contains the behavioral description of a register
-- file of 32 registers of 64 bits each. The RF has the possibility to read and
-- write at the same time.
--
--
-----------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity REGISTER_FILE is
  generic (NBITS      : integer := 32;
           NREGISTERS : integer := 32);

  port (CLK     : in  std_logic;
        RESET   : in  std_logic;
        ENABLE  : in  std_logic;
        RD1     : in  std_logic;
        RD2     : in  std_logic;
        WR      : in  std_logic;
        ADD_WR  : in  std_logic_vector(4 downto 0);
        ADD_RD1 : in  std_logic_vector(4 downto 0);
        ADD_RD2 : in  std_logic_vector(4 downto 0);
        DATAIN  : in  std_logic_vector(NBITS-1 downto 0);
        OUT1    : out std_logic_vector(NBITS-1 downto 0);
        OUT2    : out std_logic_vector(NBITS-1 downto 0));

end REGISTER_FILE;



architecture BEHAVIORAL of REGISTER_FILE is

  subtype REG_ADDR is natural range 0 to NREGISTERS-1;
  type REG_ARRAY is array(REG_ADDR) of std_logic_vector(NBITS-1 downto 0);

  signal REGISTERS : REG_ARRAY;


begin
  process(CLK)
  begin
    if rising_edge(CLK) then            --Synchronous RESET
      if RESET = '1' then
        REGISTERS <= (others => (others => '0'));
        OUT1      <= (others => '0');
        OUT2      <= (others => '0');
      end if;

      if ENABLE = '1' then
        if RD1 = '1' then  --not sure about we can read both atthesametime
          OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
        end if;

        if RD2 = '1' then
          OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
        end if;


        if WR = '1' then                --we can read and write simultaneously
          REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
        end if;
      end if;
    end if;

  end process;
end BEHAVIORAL;

-- If we are trying to read and write at the same time on the same register,
-- what should be seen at the output? 0x00? or the previous written value in
-- that register(prioritising the reading instead of writing)?


configuration CFG_RF_BEH of REGISTER_FILE is
  for BEHAVIORAL
end for;
end configuration;
