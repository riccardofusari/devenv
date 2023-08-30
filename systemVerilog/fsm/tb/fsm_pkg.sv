package fsm_pkg;

    parameter FUNC_SIZE      = 11;
    parameter OP_CODE_SIZE   = 6;
    parameter CW_SIZE        = 11;

    virtual interface fsm_if global_aif;

    typedef enum {
        RTYPE  = 0,
        ADDI1  = 1,
        SUBI1  = 2,
        AND1   = 3,
        ORI1   = 4,
        ADDI2  = 5,
        SUBI2  = 6,
        ANDI2  = 7,
        ORI2   = 8,
        MOV    = 9,
        S_REG1 = 10,
        S_REG2 = 11,
        S_MEM  = 12,
        L_MEM1 = 13,
        L_MEM2 = 14
    } fsm_opcode_t;

    typedef enum {
        ADD = 0,
        SUB = 1,
        AND = 2,
        OR  = 3,
        NOP = 4
    } fsm_func_t;


    //typedef struct packed {
    //    logic [OP_CODE_SIZE - 1 : 0] rtype  = {11'b11101100101};
    //    logic [OP_CODE_SIZE - 1 : 0] addi1  = {11'b01111100101};
    //    logic [OP_CODE_SIZE - 1 : 0] subi1  = {11'b01111100101};
    //    logic [OP_CODE_SIZE - 1 : 0] and1   = {11'b01111100101};
    //    logic [OP_CODE_SIZE - 1 : 0] ori1   = {11'b01111100101};
    //    logic [OP_CODE_SIZE - 1 : 0] addi2  = {11'b10100100101};
    //    logic [OP_CODE_SIZE - 1 : 0] subi2  = {11'b10100100101};
    //    logic [OP_CODE_SIZE - 1 : 0] andi2  = {11'b10100100101};
    //    logic [OP_CODE_SIZE - 1 : 0] ori12  = {11'b10100100101};
    //    logic [OP_CODE_SIZE - 1 : 0] mov    = {11'b10101000111};
    //    logic [OP_CODE_SIZE - 1 : 0] s_reg1 = {11'b00011000111};
    //    logic [OP_CODE_SIZE - 1 : 0] s_reg2 = {11'b00000000111};
    //    logic [OP_CODE_SIZE - 1 : 0] s_mem = {11'b11111101101};
    //    logic [OP_CODE_SIZE - 1 : 0] l_mem1 = {11'b01111110101};
    //    logic [OP_CODE_SIZE - 1 : 0] l_mem2 = {11'b10100110101};
    //} fsm_cw_bits_t;



    import uvm_pkg::*;
    `include "uvm_macros.svh"
    `include "fsm_sequences.svh"
    `include "fsm_driver.svh"
    `include "fsm_monitor.svh"
    `include "fsm_agent.svh"
    `include "fsm_scoreboard.svh"
    //`include "fsm_coverage.sv"
    `include "fsm_env.svh"
    `include "fsm_test.svh"

endpackage