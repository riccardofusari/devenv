----------------------------------------------------------------------------------------------------------
-- Title      : Accumulator
-- Project    : lab 1
----------------------------------------------------------------------------------------------------------
-- File      : acc.vhd
-- Author    : ms23.13
-----------------------------------------------------------------------------------------------------------
-- Description: This file contains the structural and behavioral description of
--              an accumulator
--
-----------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;


entity ACC is

  generic (numBit: integer := 16);

  port
    (
      A               : in  std_logic_vector(numBit - 1 downto 0);      --First input
      B               : in  std_logic_vector(numBit - 1 downto 0);      --Optional input
      CLK             : in  std_logic;                                  --Clk for the register
      RST_n           : in  std_logic;                                  --RST for the register
      ACCUMULATE      : in  std_logic;                                  --Signal that control the input
      Yacc            : out std_logic_vector(numBit - 1 downto 0)
      );  

end ACC;



----------------------------------------------------------------------------------------------------------------------------------
--   STRUCTURAL ARCHITECTURE
----------------------------------------------------------------------------------------------------------------------------------


architecture STRUCTURAL of ACC is

  signal mux_out     : std_logic_vector((numBit-1) downto 0);  --Exit of the mux signal
  signal reg_out     : std_logic_vector((numBit-1) downto 0);  --Exit of the reg signal
  signal rca_out     : std_logic_vector((numBit-1) downto 0);  --Exit of the adder signal

  -- First component: the multiplexer generic
  component MUX21_GENERIC
    port
      (
        A:      in      std_logic_vector (numBit -1 downto 0);                       
        B:      in      std_logic_vector (numBit -1 downto 0);                      
        S:      in      std_logic;                                                                         
        Y:      out     std_logic_vector (numBit -1 downto 0)
        );
  end component;

  -- Second component: the register generic
  component reg_generic 
    port
      (
        DATA_IN    :       in    std_logic_vector(numBit-1 downto 0); 
        CK         :       in    std_logic;
        RESET      :       in    std_logic;
        DATA_OUT   :       out   std_logic_vector(numBit-1 downto 0)
        );
  end component;

  -- Third component: the ripple carry adder generic
  component rca_generic
    port (
      A:      in      std_logic_vector(numBit-1 downto 0);
      B:      in      std_logic_vector(numBit-1 downto 0);
      Ci:     in      std_logic;
      S:      out     std_logic_vector(numBit-1 downto 0);
      Co:     out     std_logic
      );
  end component;

  
begin

-- Multiplexer instance
  mux_inst: entity work.MUX21_GENERIC(STRUCTURAL)
    generic map(numBit)
    port map
      (
        A   => B,                  -- B input of the acc connected to the first input of the mux 
        B   => reg_out,            -- out of the register into the second input of the mux
        S   => ACCUMULATE,         -- signal that control the mux coming from the accumulator
        Y   => mux_out
        );


-- Adder instance, ripple carry adder
  rca_inst: entity work.rca_generic(STRUCTURAL)
    generic map(DRCAS => 0 ns ,
                DRCAC => 0 ns ,
                NBITS => numBit)
    port map
      (
        A    => A,                                             
        B    => mux_out,
        Ci   => '0'    ,
        S    => rca_out,
        Co   => open
        );

-- Register instance, choosing the synchronous architecture
  reg_inst: entity work.register_generic(SYNCHRONOUS)
    generic map(numBit)
    port map
    (
        DATA_IN    => rca_out,       -- The exit of the adder as input of the register
        CK         => CLK,           -- The clock of the accumulator drive the register
        RESET      => RST_n,         -- The reset of the accumulator drive the register
        DATA_OUT   => reg_out
        );

-- Output of the accumulator wired to the output of the register
 Yacc <= reg_out;

end STRUCTURAL;


