module accum (
    input [7:0] in1,
    input acc,
    input clear,
    input clock,
    output [7:0] acc_out,
    output overflow
);

reg [7:0] acc_out;  /* Assigned between a procedural block */
wire [7:0] acc_int; /* assigned continuously so wire       */
wire overflow;


always@(posedge clock)
begin
    if(clear) acc_out <= 8'b0;
    else if (acc) acc_out <= acc_int;
end

assign {overflow, acc_int} <= acc_out + in1;

endmodule