library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;


entity fsm is
  generic (
    FUNC_SIZE    : integer := 11;       -- Func Field Size for R-Type Ops
    OP_CODE_SIZE : integer := 6;        -- Op Code Size
    CW_SIZE      : integer := 11);      -- Control Word Size without the 2 bits
                                        -- for the alu because they are updated
                                        -- separately through the process
  port (
    OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);
    CLK    : in  std_logic;
    RST    : in  std_logic;
    --1 stage
    RF1    : out std_logic;
    RF2    : out std_logic;
    EN1    : out std_logic;
    --2 stage
    S1     : out std_logic;
    S2     : out std_logic;
    ALU1   : out std_logic;
    ALU2   : out std_logic;
    EN2    : out std_logic;
    --3 stage
    RM     : out std_logic;
    WM     : out std_logic;
    EN3    : out std_logic;
    S3     : out std_logic;
    WF1    : out std_logic
    );

end fsm;

architecture dlx_cu_rtl of fsm is
  type mem_array is array (integer range 0 to 14) of std_logic_vector(10 downto 0);
  -- 15 is the number of the operations (considering 1 for the RTYPE since they
  -- only differ for the 2 alu bits), 11 is the number of bits of the
  -- control word without the 2 bits for the ALU control

  signal cw_mem : mem_array := ("11101100101",   -- R type
                                "01111100101",   -- ADDI1
                                "01111100101",   -- SUBI1
                                "01111100101",   -- AND1
                                "01111100101",   -- ORI1
                                "10100100101",   -- ADDI2
                                "10100100101",   -- SUBI2
                                "10100100101",   -- ANDI2
                                "10100100101",   -- ORI2
                                "10101000111",   -- MOV
                                "00011000111",   -- S_REG1
                                "00000000111",   -- S_REG2
                                "11111101101",   -- S_MEM
                                "01111110101",   -- L_MEM1
                                "10100110101");  -- L_MEM2


  signal cw  : std_logic_vector(CW_SIZE - 1 downto 0);  -- full control word read from cw_mem
  signal cw1 : std_logic_vector(CW_SIZE - 1 downto 0); -- control word stage 1
  signal cw2 : std_logic_vector(CW_SIZE - 1 downto 0); -- control word stage 2
  signal cw3 : std_logic_vector(CW_SIZE - 1 downto 0); -- control word stage 3

  signal aluOpcode_i : std_logic_vector(1 downto 0); -- signal that will update
                                                     -- the 2 alu bits

  -- declaration of the 4 stages of our control unit in order to implement the
  -- FSM
  type TYPE_STATE is (
    reset, stage1, stage2, stage3
    );
  signal CURRENT_STATE : TYPE_STATE := reset;
  signal NEXT_STATE    : TYPE_STATE := stage1;




begin

  cw <= cw_mem(conv_integer(OPCODE)); --cw will be updated with the
                                      --corresponding control word from the
                                      --table, indexed by the OPCODE taken as input

-- stage one control signals
  RF1 <= cw1(CW_SIZE - 1);  --The first read port of the register file is enabled
  RF2 <= cw1(CW_SIZE - 2);  --The second read port of the register file is enabled
  EN1 <= cw1(CW_SIZE - 3);  --The register file and all pipe registers are enabled

-- stage two control signals
  S1  <= cw2(CW_SIZE - 4);  --MUX select A or INM1
  S2  <= cw2(CW_SIZE - 5);  --MUX select B or INM2
  EN2 <= cw2(CW_SIZE - 6);  --Enables the ALU and its pipelined reg

-- stage three control signals
  RM  <= cw3(CW_SIZE - 7);  --Read memory enable.
  WM  <= cw3(CW_SIZE - 8);  --Write memory enable.
  EN3 <= cw3(CW_SIZE - 9);  --Enables the memory and pipelined reg.
  S3  <= cw3(CW_SIZE - 10); --Mux select MEMORY or ALU.
  WF1 <= cw3(CW_SIZE - 11); --Enables the write port of the RF for the writing back.


  -- Process for the generation of the 2 alu bits
  ALU_OP_CODE_P : process (OPCODE, FUNC)
  begin  -- process ALU_OP_CODE_P
    case conv_integer(unsigned(OPCODE)) is
      -- case of R type requires analysis of FUNC
      when 0 =>
        case conv_integer(unsigned(FUNC)) is
          when 1      => aluOpcode_i <= "00"; -- ADD
          when 2      => aluOpcode_i <= "01"; -- SUB
          when 3      => aluOpcode_i <= "10"; -- AND
          when others => aluOpcode_i <= "11"; -- OR
        end case;

      when 1      => aluOpcode_i <= "00";
      when 2      => aluOpcode_i <= "01";
      when 3      => aluOpcode_i <= "10";
      when 4      => aluOpcode_i <= "11";
      when 5      => aluOpcode_i <= "00";
      when 6      => aluOpcode_i <= "01";
      when 7      => aluOpcode_i <= "10";
      when 8      => aluOpcode_i <= "11";
      when others => aluOpcode_i <= "00"; -- for all the operations in which the
                                          -- alu is not needed, we put 00
    end case;
  end process ALU_OP_CODE_P;




P_OPC : process(CLK, RST)
  begin -- Process for the not pipelined control unit
    if RST = '0' then
      CURRENT_STATE <= reset;    -- Initialize the current state to "reset"
    elsif (CLK = '1' and CLK'event) then
      CURRENT_STATE <= NEXT_STATE;  -- Update the current state with the next state on the rising clock edge
    end if;
  end process P_OPC;

P_NEXT_STATE : process(CURRENT_STATE)
  begin
    case CURRENT_STATE is
      when reset =>
        NEXT_STATE <= stage1;   -- Move to "stage1" from "reset"
      when stage1 =>
        NEXT_STATE <= stage2;   -- Move to "stage2" from "stage1"
      when stage2 =>
        NEXT_STATE <= stage3;   -- Move to "stage3" from "stage2"
      when others =>
        NEXT_STATE <= stage1;   -- Move back to "stage1" from "stage3"
    end case;
  end process P_NEXT_STATE;

P_OUTPUTS : process(CURRENT_STATE)
  begin
    case CURRENT_STATE is
      when reset =>
        cw1 <= "00000000000";   -- Reset the control word for stage 1
        cw2 <= "00000000000";   -- Reset the control word for stage 2
        cw3 <= "00000000000";   -- Reset the control word for stage 3
        ALU1 <= '0';            -- Reset ALU1 signal
        ALU2 <= '0';            -- Reset ALU2 signal
      when stage1 =>
        cw1 <= cw;              -- Load the control word into stage 1
        cw2 <= "00000000000";   -- Reset the control word for stage 2
        cw3 <= "00000000000";   -- Reset the control word for stage 3
        ALU1 <= '0';            -- Reset ALU1 signal
        ALU2 <= '0';            -- Reset ALU2 signal
      when stage2 =>
        cw2 <= cw1;             -- Update the control word from stage 1 to stage 2
        cw1 <= "00000000000";   -- Reset the control word for stage 1
        cw3 <= "00000000000";   -- Reset the control word for stage 3
        ALU1 <= aluOpcode_i(1); -- Update ALU1 signal with the higher bit of aluOpcode_i
        ALU2 <= aluOpcode_i(0); -- Update ALU2 signal with the lower bit of aluOpcode_i
      when others =>
        cw3 <= cw2;             -- Update the control word from stage 2 to stage 3
        cw2 <= "00000000000";   -- Reset the control word for stage 2
        cw1 <= "00000000000";   -- Reset the control word for stage 1
        ALU1 <= '0';            -- Reset ALU1 signal
        ALU2 <= '0';            -- Reset ALU2 signal
    end case;
  end process P_OUTPUTS;



end dlx_cu_rtl;
