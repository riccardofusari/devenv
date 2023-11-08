module counter 
(
    input           clock,
    input   [3:0]   in,
    input           latch,
    input           dec,
    output  reg     zero
);

reg [3:0] value;

always@(posedge clock) begin
    if (latch) 
        value <=in;
    else if (dec && !zero)
        value <= value -1'b1;
end

always@(*) begin
    if(value == 4'b0)
        zero = 1;
    else
        zero = 0;
end

endmodule