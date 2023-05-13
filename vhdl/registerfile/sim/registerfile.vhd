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
--We have decided to not only set the registers to zero when the reset signal arrives, but also to force the outputs to zero.
--This ensures that the state of the output signals is consistent with the state of the registers. We have also implemented
--the functionality to read and write to the register file simultaneously. In such cases, if we try to read and write the same
--register in the same clock cycle, the output will output the old value, while the write operation will perform the writing.
--This behavior has been implemented to prioritize reading over writing in such situations.
-----------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use WORK.constants.all; --file where we have the implementation of the log2 function


entity REGISTER_FILE is
  generic (NBITS      : integer := 64;
           NREGISTERS : integer := 32);

  port (CLK     : in  std_logic;
        RESET   : in  std_logic;
        ENABLE  : in  std_logic;
        RD1     : in  std_logic;
        RD2     : in  std_logic;
        WR      : in  std_logic;
        ADD_WR  : in  std_logic_vector((log2(NREGISTERS))-1 downto 0);
        ADD_RD1 : in  std_logic_vector((log2(NREGISTERS))-1 downto 0);
        ADD_RD2 : in  std_logic_vector((log2(NREGISTERS))-1 downto 0);
        DATAIN  : in  std_logic_vector(NBITS-1 downto 0);
        OUT1    : out std_logic_vector(NBITS-1 downto 0);
        OUT2    : out std_logic_vector(NBITS-1 downto 0));

end REGISTER_FILE;


architecture BEHAVIORAL of REGISTER_FILE is

  subtype REG_ADDR is natural range 0 to NREGISTERS-1;
  type REG_ARRAY is array(REG_ADDR) of std_logic_vector(NBITS-1 downto 0);

  -- NREGISTER number of registers of NBITS each
  signal REGISTERS : REG_ARRAY;

begin
  process(CLK)
  begin
    if rising_edge(CLK) then            
      if RESET = '1' then                        --Synchronous RESET
        REGISTERS <= (others => (others => '0'));
        OUT1      <= (others => '0');            --Forzing the outputs to zero
        OUT2      <= (others => '0');
      end if;

      if ENABLE = '1' then
        if RD1 = '1' then  
          OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
        end if;

        if RD2 = '1' then
          OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
        end if;

        if WR = '1' then
          REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
        end if;
      end if;
    end if;
  end process;
end BEHAVIORAL;


configuration CFG_RF_BEH of REGISTER_FILE is
  for BEHAVIORAL
end for;
end configuration;
