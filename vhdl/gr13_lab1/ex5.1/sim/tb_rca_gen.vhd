library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; -- we need a conversion to unsigned 

entity TBRCA_generic is 
end TBRCA_generic; 

architecture TEST of TBRCA_generic is

  constant nbits : integer := 16;
  
  component LFSR16 --we define the components: 
    port (CLK, RESET, LD, EN : in std_logic; 
          DIN : in std_logic_vector(15 downto 0); 
          PRN : out std_logic_vector(15 downto 0); 
          ZERO_D : out std_logic);
  end component;

  component RCA_generic
        generic ( DRCAS : Time := 0 ns;
	          DRCAC : Time := 0 ns);
	Port (	A:	In	std_logic_vector(nbits-1 downto 0);
		B:	In	std_logic_vector(nbits-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(nbits-1 downto 0);
		Co:	Out	std_logic);
  end component;
  

  constant Period: time := 1 ns; -- Clock period (1 GHz)
  signal CLK : std_logic :='0';
  signal RESET,LD,EN,ZERO_D : std_logic;
  signal DIN, PRN : std_logic_vector(15 downto 0);

  signal A, B, S1, S2, S3 : std_logic_vector(nbits-1 downto 0);
  signal Ci, Co1, Co2, Co3 : std_logic;

Begin

-- Instanciate the ADDER without delay in the carry generation
  UADDER1: entity work.RCA_generic(STRUCTURAL) 
	   generic map (DRCAS => 0.02 ns, DRCAC => 0 ns , NBITS => nbits) 
	   port map (A, B, Ci, S1, Co1);
  
-- Instanciate the ADDER with delay
  UADDER2: entity work.RCA_generic(STRUCTURAL) 
	   generic map (DRCAS => 0.02 ns, DRCAC => 0.02 ns , NBITS => nbits) 
	   port map (A, B, Ci, S2, Co2);

-- Instanciate the ADDER behavioral
  UADDER3: entity work.RCA_generic(BEHAVIORAL) 
	   generic map (DRCAS => 0.02 ns, DRCAC => 0.02 ns , NBITS => nbits)
                                                         
	   port map (A, B, Ci, S3, Co3);
  

  

-- Forcing adder input to LFSR output
  Ci <= '0';
 ASSIGN_INPUTS:
  for i in 0 to nbits-1 generate
  A(i) <= PRN(i);
  B(i) <= PRN(15-i);
  end generate;

-- Instanciate the Unit Under Test (UUT)
  UUT: LFSR16 port map (CLK=>CLK, RESET=>RESET, LD=>LD, EN=>EN, 
                        DIN=>DIN,PRN=>PRN, ZERO_D=>ZERO_D);
-- Create the permanent Clock and the Reset pulse
  CLK <= not CLK after Period/2;
  RESET <= '1', '0' after Period;
-- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1: process
  begin
    DIN <= "0000000000000001";
    EN <='1';
    LD <='1';
    wait for 2 * PERIOD;
    LD <='0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

end TEST;

configuration RCATEST of TBRCA_generic is
  for TEST
   -- for UADDER1: RCA
     -- use configuration WORK.CFG_RCA_STRUCTURAL;
    --end for;
    --for UADDER2: RCA
      --use configuration WORK.CFG_RCA_STRUCTURAL;
    --end for;
    --for UADDER3: RCA
     -- use configuration WORK.CFG_RCA_BEHAVIORAL;
   -- end for;
  end for;
end RCATEST;
