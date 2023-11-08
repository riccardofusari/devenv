module exercise (
    input [1:0] B,
    input [1:0] C,
    input [1:0] D,
    input [3:0] E,
    input [1:0] A,
    output [1:0] F
);
    
    reg [1:0] B,C,D,F;
    reg [3:0] A,E;

    always@(*)begin
        case (A[1:0])
            2'b00: F = B | C;
            2'b01: F = D;
            2'b10: F = ~E[1:0];
            2'b11: F = E[3:2]; 
        endcase
    end

endmodule