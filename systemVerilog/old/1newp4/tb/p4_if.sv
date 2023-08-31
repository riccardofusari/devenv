
//import p4_pkg::*;


interface p4_if
#(
    parameter NBITS      = 32
);

    logic [NBITS - 1 : 0] a;
    logic [NBITS - 1 : 0] b;
    logic [NBITS - 1 : 0] sum_dut;
    logic [NBITS - 1 : 0] sum_tb;
    logic                 cin;
    logic                 cout;
    logic                 clk;


    modport p4_port (
        input  a,
        input  b,
        input  cin,
        output sum_dut,
        output cout
    );

    always @(negedge clk) begin
        sum_tb = sum_dut;
    end
     /* Clock Init and generation*/

    initial begin: init
        clk  = 1'b0;
    end

    always #5ns begin: clk_gen
        clk = ~clk;
    end

endinterface
