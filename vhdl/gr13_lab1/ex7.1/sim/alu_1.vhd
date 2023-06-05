-- Libraries and packages used in the code
library IEEE;
use IEEE.std_logic_1164.all; -- Standard logic library
use IEEE.std_logic_unsigned.all; -- Unsigned arithmetic library
use IEEE.std_logic_arith.all; -- Signed arithmetic library
use WORK.constants.all; -- Custom constants package
use WORK.alu_types.all; -- Custom data types package

-- Entity declaration for the ALU module
entity ALU is
  generic (N : integer := 16); -- Generic parameter N representing the size of input and output data
  port   ( FUNC: in TYPE_OP; -- Input port for the operation to be performed
           DATA1, DATA2: in std_logic_vector(N-1 downto 0); -- Input ports for the data to be operated on
           OUTALU: out std_logic_vector(N-1 downto 0)); -- Output port for the result of the operation
end ALU;

-- Architecture for the ALU module
architecture BEHAVIOR of ALU is
begin

-- Process for performing arithmetic and logic operations
P_ALU: process (FUNC, DATA1, DATA2)
  -- Declare variables for performing operations
       variable half1: std_logic_vector(N/2-1 downto 0); -- Variable for storing the first half of input data1
       variable half2: std_logic_vector(N/2-1 downto 0); -- Variable for storing the first half of input data2
  begin
      half1 := DATA1(N/2-1 downto 0); -- Extract the first half of data1
      half2 := DATA2(N/2-1 downto 0); -- Extract the first half of data2

    -- Perform the operation based on the input function
    case FUNC is
        when ADD =>
               OUTALU <= DATA1 + DATA2; -- Add data1 and data2 and store the result in output port
        when SUB=>
               OUTALU <= DATA1 - DATA2; -- Subtract data2 from data1 and store the result in output port
        when MULT=>
               OUTALU <= half1 * half2; -- Multiply the first halves of data1 and data2 and store the result in output port
        when BITAND=>
               OUTALU <= DATA1 and DATA2; -- Perform bitwise AND on data1 and data2 and store the result in output port
        when BITOR=>
               OUTALU <= DATA1 or DATA2; -- Perform bitwise OR on data1 and data2 and store the result in output port
        when BITXOR=>
               OUTALU <= DATA1 xor DATA2; -- Perform bitwise XOR on data1 and data2 and store the result in output port
	when FUNCLSL=>
               OUTALU <= DATA1(N-2 downto 0) & '0'; -- Perform shift left using the concatenation operator &  
	when FUNCLSR=>
               OUTALU <= '0' & DATA1(N-1 downto 1); -- Perform shift right using the concatenation operator &
	when FUNCRL=>
             OUTALU <= DATA1(N-2 downto 0) & DATA1(N-1) ; -- Perform rotate left using the concatenation operator &
	when FUNCRR=>
             OUTALU <= DATA1(0) & DATA1(N-1 downto 1); -- Perform rotate right using the concatenation operator &
	when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
