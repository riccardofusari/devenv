import rf_parameters::*;

interface rf_if
#(
    parameter NBITS      = 64,
    parameter NREGISTERS = 32,
    parameter N          = 3,
    parameter F          = 4,
    parameter M          = 5
);

    //`define LOG2(x) ($clog2(x))

    //localparam addr_size = `LOG2(N*3+M+1);

    logic clk;
    logic rst;
    logic enable;
    logic rd1;
    logic rd2;
    logic wr;
    logic call;
    logic sigreturn;
    logic fill;
    logic spill;
    logic [ADDR_SIZE-1:0] add_wr;
    logic [ADDR_SIZE-1:0] add_rd1;
    logic [ADDR_SIZE-1:0] add_rd2;
    logic [NBITS-1 : 0] data_in;
    logic [NBITS-1 : 0] out1;
    logic [NBITS-1 : 0] out2;
    logic [NBITS-1 : 0] mem_bus;

    modport rf_port (
        input  clk,
        input  rst,
        input  enable,
        input  rd1,
        input  rd2,
        input  wr,
        input  call,
        input  sigreturn,
        input  add_wr,
        input  add_rd1,
        input  add_rd2,
        input  data_in,
        output out1,
        output out2,
        output mem_bus,
        input  mem_busRead,
        output fill,
        output spill
    );

     /* Clock Init and generation*/

    initial begin: init
        clk  = 1'b0;
    end

    always #5ns begin: clk_gen
        clk = ~clk;
    end

endinterface: rf_if