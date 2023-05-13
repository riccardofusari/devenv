
-- Import the necessary IEEE libraries
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

--Define the entity RCA_generic
entity RCA_generic is

  --Define generic parameters
	generic (DRCAS : 	time := 0 ns; --Delay for signals going through the adder component
	         DRCAC : 	time := 0 ns; --Delay for signals going through the carry component
           NBITS : integer := 32  --Number of bits of the adder
           );

  --Define the input and output ports for the entity
	port (
    A:	in	std_logic_vector(NBITS-1 downto 0);
		B:	in	std_logic_vector(NBITS-1 downto 0);
		Ci:	in	std_logic;
		S:	out	std_logic_vector(NBITS-1 downto 0);
		Co:	out	std_logic);
end RCA_generic; 

--Structural architecture:
architecture STRUCTURAL of RCA_generic is

  signal STMP : std_logic_vector(NBITS-1 downto 0); -- Delay for signals going through the sum component of the full adder
  signal CTMP : std_logic_vector(NBITS downto 0); -- Delay for signals going through the carry component of the full adder

  component FA 
  generic (DFAS : 	time := 0 ns;
           DFAC : 	time := 0 ns);
  port ( A:	in	std_logic;
	 B:	in	std_logic;
	 Ci:	in	std_logic;
	 S:	out	std_logic;
	 Co:	out	std_logic);
  end component; 

begin

  CTMP(0) <= Ci;    -- Assign carry-in value to the first bit of the carry signal
  S <= STMP;        -- Assign the sum value signal to the STMP signal
  Co <=CTMP(NBITS); -- Assign the carry-out value to the last bit of the carry signal

  -- Generate full adders for each bit of the adder
  ADDER1: for I in 1 to NBITS generate
    FAI : FA 
      generic map (
        DFAS => DRCAS ,  -- Assign the delay value for the sum signal
        DFAC => DRCAC    -- Assign the delay value for the carry signal
        )
--Map the inputs and outputs:
      port map (A(I-1),
                B(I-1),
                CTMP(I-1),
                STMP(I-1),
                CTMP(I));
  end generate;

end STRUCTURAL;

--Behavioral Architecture
architecture BEHAVIORAL of RCA_generic is
begin
  process(A,B,Ci)
    variable carry: std_logic := '0'; --Initialize carry variable to '0'
  begin
    -- Loop through each bit in the inputs A and B
  for i in 0 to NBITS-1 loop
    S(i) <= (A(i) xor B(i) xor carry xor Ci) after DRCAS; -- Calculate the sum of the three input bits and the carry bit
                                                          --
   -- Calculate the new value of the carry bit:                                                   --
    carry := ((A(i) and B(i)) or (A(i) and carry) or (B(i) and carry));
  end loop;

  -- Set the value of the output carry bit to the final value of the carry variable
  Co <= carry after DRCAC;
  carry := '0'; -- Reset the carry variable to '0'
  end process;
  
end BEHAVIORAL;

configuration CFG_RCA_STRUCTURAL of RCA_generic is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration Work.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_STRUCTURAL;

configuration CFG_RCA_BEHAVIORAL of RCA_generic is
  for BEHAVIORAL 
  end for;
end CFG_RCA_BEHAVIORAL;
