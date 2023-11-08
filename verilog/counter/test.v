`include "counter.v"
`default_nettype none

module tb_counter;

/* Initialization is not synthesizable*/
reg clk      = 0;
reg latch    = 0;
reg dec      = 0;;
reg [3:0] in = 4'b0010;
wire zero;


counter
(
    .clock (clk),
    .in (in),
    .latch (latch),
    .dec (dec),
    .zero (zero)
);


always #5 clk=~clk;


/* Following block executed only once */
/* Not synthesizable                  */
initial begin
    $dumpfile("tb_counter.vcd");
    $dumpvars(0, tb_counter);

    #16  latch = 1;
    #10  latch = 0;
    #10  dec = 1;
    #20  if (!zero) $display("error in zero flag\n");
    #100 $finish;
end

endmodule
