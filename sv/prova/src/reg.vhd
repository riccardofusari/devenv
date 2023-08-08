----------------------------------------------------------------------------------------------------------
-- Title      : Generic Register
-- Project    : lab 1
----------------------------------------------------------------------------------------------------------
-- File      : reg_generic.vhd
-- Author    : ms23.13
-----------------------------------------------------------------------------------------------------------
-- Description: This file contains the behavioral architectures of a general register
--
-----------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity reg_dut is
  generic (DWIDTH : integer := 32);

  port (
    data_in_i  : in  std_logic_vector(DWIDTH-1 downto 0);
    clk_i      : in  std_logic;
    rst_i      : in  std_logic;
    data_out_i : out std_logic_vector(DWIDTH-1 downto 0)
    );

end reg_dut;

----------------------------------------------------------------------------------------------------------------------------------
--   Synchronous ARCHITECTURE
----------------------------------------------------------------------------------------------------------------------------------
architecture SYNCHRONOUS of reg_dut is
begin
  process (clk_i, rst_i)
  begin
    if rising_edge(clk_i) and rst_i = '0' then
      data_out_i <= (others => '0');  -- Reset to zero
    elsif rising_edge(clk_i) then
      data_out_i <= data_in_i;  -- Update the output with input value
    end if;
  end process;
end SYNCHRONOUS;
