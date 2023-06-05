----------------------------------------------------------------------------------------------------------
-- Title      : Multiplexer 2to1 generic
-- Project    : lab 1
----------------------------------------------------------------------------------------------------------
-- File      : mux21generic.vhd
-- Author    : ms23.13
-----------------------------------------------------------------------------------------------------------
-- Description: This file contains the structural and behavioral description of
--              a 2to1 multiplexer generic
--
-----------------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined


entity MUX21_GENERIC is

    generic(bits : integer := 16);
  
	port
      (
        A:	in	    std_logic_vector (bits -1 downto 0);
		B:	in	    std_logic_vector (bits -1 downto 0);
		S:	in	    std_logic;
		Y:	out	std_logic_vector (bits -1 downto 0)
        );
end MUX21_GENERIC;

----------------------------------------------------------------------------------------------------------------------------------
--   BEHAVIORAL ARCHITECTURE
----------------------------------------------------------------------------------------------------------------------------------

architecture BEHAVIORAL of MUX21_GENERIC is

begin
	Y <= A when S='1' else B;

end BEHAVIORAL;


----------------------------------------------------------------------------------------------------------------------------------
--   STRUCTURAL ARCHITECTURE
----------------------------------------------------------------------------------------------------------------------------------

architecture STRUCTURAL of MUX21_GENERIC is

component MUX21 
  port
    (
      A:	in	    std_logic;
      B:	in	    std_logic;
      S:	in	    std_logic;
      Y:	out     std_logic
      );
end component;  

begin

muxGenerator:  for i in 0 to bits -1 generate
MUXgeneric:  MUX21
             Port Map (A(i), B(i), S, Y(i));
end generate muxGenerator;

end STRUCTURAL;



