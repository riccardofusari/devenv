package rf_pkg;

    typedef enum {
        READ1  = 0,
        READ2
        WRITE = 1,
        RST   = 2,
        CALL  = 3,
        RET   = 4,
        NOP   = 5
    } rf_op;

    `define LOG2(x) ($clog2(x))

    parameter NBITS      = 64;
    parameter NREGISTERS = 32;
    parameter N          = 3;
    parameter F          = 4;
    parameter M          = 5;
    parameter ADDR_SIZE  = `LOG2(N*3+M+1);

    import uvm_pkg::*;
    import rf_parameters::*;
    `include "uvm_macros.svh"
    `include "data_packet.sv"
    `include "rf_driver.sv"
    `include "rf_monitor.sv"
    `include "rf_sequencer.sv"
    `include "rf_agent.sv"
    `include "rf_scoreboard.sv"
    `include "rf_coverage.sv"
    `include "rf_env.sv"
    `include "dut_env.sv"
    `include "pipe_sequence_lib.sv"
    `include "test_lib.sv"

endpackage