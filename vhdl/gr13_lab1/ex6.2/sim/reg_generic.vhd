library IEEE;
use IEEE.std_logic_1164.all; 

entity register_generic is
	generic (
		nbits: integer := 16);

	Port (	data_in:	In	std_logic_vector(nbits-1 downto 0);
		CK:		In	std_logic;
		RESET:		In	std_logic;
		data_out:	Out	std_logic_vector(nbits-1 downto 0));
end register_generic;


architecture ASYNCHRONOUS of register_generic is
 
	-- Declare the flip flop D as a component
  component FD is
    port (
      CK    : in  std_logic;
      RESET : in  std_logic;
      D     : in  std_logic;
      Q     : out std_logic
    );
  end component;


-- Declare a signal to connect the outputs of the flip flops
--  signal register_out : std_logic_vector(3 downto 0);
begin
  -- Generate nbits instances of the flip flop D in a loop
  gen_ff: for i in 0 to nbits-1 generate
    -- Instantiate the flip flop D
    ureg0: entity work.FD(ASYNCH_FD)
      
      port map (
        CK => CK,
        RESET => RESET,
        D   => data_in(i),
        Q   => data_out(i)
      );
  end generate gen_ff;
end ASYNCHRONOUS;


architecture SYNCHRONOUS of register_generic is
 
	-- Declare the flip flop D as a component
  component FD is
    port (
      CK    : in  std_logic;
      RESET : in  std_logic;
      D     : in  std_logic;
      Q     : out std_logic
    );
  end component;


-- Declare a signal to connect the outputs of the flip flops
--  signal register_out : std_logic_vector(3 downto 0);
begin
  -- Generate nbits instances of the flip flop D in a loop
  gen_ff: for i in 0 to nbits-1 generate
    -- Instantiate the flip flop D
    UREG1: entity work.FD(SYNCH_FD)
      port map (
        CK => CK,
        RESET => RESET,
        D   => data_in(i),
        Q   => data_out(i)
      );
  end generate gen_ff;
end SYNCHRONOUS;



