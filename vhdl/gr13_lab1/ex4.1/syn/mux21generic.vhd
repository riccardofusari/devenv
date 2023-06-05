library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined


entity MUX21_GENERIC is

       generic(
                bits : integer := 16);
  
	Port (	A:	In	std_logic_vector (bits -1 downto 0);
		B:	In	std_logic_vector (bits -1 downto 0);
		S:	In	std_logic;
		Y:	Out	std_logic_vector (bits -1 downto 0));
end MUX21_GENERIC;



architecture BEHAVIORAL of MUX21_GENERIC is

begin
	Y <= A when S='1' else B;

end BEHAVIORAL;




architecture STRUCTURAL of MUX21_GENERIC is

component MUX21 
        Port (  A:	In	std_logic;
                B:	In	std_logic;
                S:	In	std_logic;
                Y:	Out     std_logic);
end component;  


begin

muxGenerator:  for i in 0 to bits -1 generate 

MUXgeneric:  MUX21
             Port Map (A(i), B(i), S, Y(i));
end generate muxGenerator;

end STRUCTURAL;



