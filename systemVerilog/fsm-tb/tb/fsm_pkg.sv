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

    import uvm_pkg::*;
    `include "uvm_macros.svh"
    `include "fsm_sequences.svh"
    `include "fsm_driver.svh"
    `include "fsm_monitor.svh"
    `include "fsm_agent.svh"
    `include "fsm_scoreboard.svh"
    `include "fsm_coverage.svh"
    `include "fsm_env.svh"
    `include "fsm_test.svh"

endpackage