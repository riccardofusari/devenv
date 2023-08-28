//`define LOG2(x) ($clog2(x))
import rf_pkg::*;


interface rf_if
#(
    parameter NBITS      = 64,
    parameter NREGISTERS = 32,
    parameter N          = 3,
    parameter F          = 4,
    parameter M          = 5
);


    localparam addr_size = `LOG2(N*3+M+1);

    logic clk;
    logic rst;
    logic enable;
    logic rf_rd1;
    logic rf_rd2;
    logic rf_wr;
    logic rf_call;
    logic rf_sigreturn;
    logic rf_fill;
    logic rf_spill;
    logic [addr_size-1:0] rf_add_wr;
    logic [addr_size-1:0] rf_add_rd1;
    logic [addr_size-1:0] rf_add_rd2;
    logic [NBITS-1 : 0] rf_data_in;
    logic [NBITS-1 : 0] rf_out1;
    logic [NBITS-1 : 0] rf_out2;
    logic [NBITS-1 : 0] rf_mem_bus;

    modport rf_port (
        input clk,
        input rst,
        input enable,
        input rf_rd1,
        input rf_rd2,
        input rf_wr,
        input rf_call,
        input rf_sigreturn,
        input rf_add_wr,
        input rf_add_rd1,
        input rf_add_rd2,
        input rf_data_in,
        output rf_out1,
        output rf_out2,
        output rf_mem_bus,
        input rf_mem_busRead,
        output rf_fill,
        output rf_spill
    );

     /* Clock Init and generation*/

    initial begin: init
        clk  = 1'b0;
    end

    always #5ns begin: clk_gen
        clk = ~clk;
    end

endinterface: rf_if