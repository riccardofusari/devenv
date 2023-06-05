library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;


entity TBREG is
end TBREG;


architecture TEST of TBREG is

        constant nbits: integer := 16;
        
	signal	CK:		std_logic :='0';
	signal	RESET:		std_logic :='0';
	signal	data_out1:	std_logic_vector (nbits-1 downto 0);
        signal  data_out2:      std_logic_vector (nbits-1 downto 0);
        signal  data_in:        std_logic_vector (nbits-1 downto 0);

        component register_generic
           port(
              CK        : in  std_logic;
              RESET     : in  std_logic;
              data_in   : in  std_logic_vector(nbits-1 downto 0);
              data_out  : out std_logic_vector(nbits-1 downto 0)
              );

        end component;

begin
        UREG1 : entity work.register_generic(ASYNCHRONOUS)
        generic map (nbits)
	Port Map ( CK          => CK,
                   RESET       => RESET,
                   data_in     => data_in,
                   data_out    => data_out1
                   );

        
        UREG2 : entity work.register_generic(SYNCHRONOUS)
        generic map (nbits) 
	Port Map ( CK          => CK,
                   RESET       => RESET,
                   data_in     => data_in,
                   data_out    => data_out2
                   );
	

        RESET <= '0', '1' after 0.6 ns, '0' after 1.1 ns, '1' after 2.2 ns, '0' after 3.2 ns;
        data_in  <= "1000000100000011";
        
        
        
	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;

end TEST;

--configuration FDTEST of TBFD is
--   for TEST
--      for UFD1 : FD
--         use configuration WORK.CFG_FD_PIPPO; -- sincrono
--      end for;
--      for UFD2 : FD
--         use configuration WORK.CFG_FD_PLUTO; -- asincrono
--      end for;


--   end for;
--end FDTEST;

