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
--   BEHAVIORAL ARCHITECTURE
----------------------------------------------------------------------------------------------------------------------------------


architecture BEHAVIORAL of ACC is

--Variable shared between the three different processes initialized to zero
  shared variable muxOut : std_logic_vector(numBit-1 downto 0) := (others => '0');
  shared variable addOut : std_logic_vector(numBit-1 downto 0) := (others => '0');
  shared variable regOut : std_logic_vector(numBit-1 downto 0) := (others => '0');

begin

-----------------------------------------------------------------------------------------------------
  -- reg_proc : this process creates a register (synchronous as the structural architecture)
-----------------------------------------------------------------------------------------------------
  
  reg_proc : process(CLK)--, RST_n)
    begin                                                                                                                                                                  
      if rising_edge(CLK) then                                                                                                                                             
        if RST_n = '1' then                                                                                                                                                
          regOut := (others => '0');                                                                                                                                       
        else                                                                                                                                                               
          regOut := addOut;                                                                                                                                                
         end if;                                                                                                                                                           
      end if;                                                                                                                                                              
                                                                                                                                                                       
      Yacc <= regOut;                                                                                                                                                      
    end process;

-----------------------------------------------------------------------------------------------------
  -- mux_proc : this process creates a multiplexer
-----------------------------------------------------------------------------------------------------   
  
  mux_proc: process(ACCUMULATE, CLK)
  begin
    if (ACCUMULATE = '1' ) then
      muxOut := B;
    elsif (ACCUMULATE = '0') then
      muxOut := regOut;
    end if;  
  end process;


-----------------------------------------------------------------------------------------------------
  -- rca_proc : this process creates the adder
-----------------------------------------------------------------------------------------------------

  rca_proc: process (CLK)
  begin
    if (rising_edge(CLK)) then
    addOut := (muxOut + A);
    end if;
  end process;
    
end BEHAVIORAL;
