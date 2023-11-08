

reg [3:0] numberIn;
reg overflow;


always@(posedge clock)
begin
    if(start) Count <= 0;
    else Count <= sum;

    casex {start, overflow}
        2'b0: overflow <= 0;
        2'b1: overflow <= 1;
        2'b10: overflow <= 0;
        2'b11: overflow <= 0;
        default: overflow <= x;
    endcase
end


assign {cout, sum} = count + 





//---------------------------------



always@(*)
begin
    casex (IR[15:13])
        3'b001: out = 3'b100;
        3'b010: out = 3'b000;
        3'b011: casex (IN[2:0])
            3'b010: out = 3'b100;
            3'b001: out = 3'b010;
            3'b100: out = 3'b001;
            default: out = x;
        endcase
        default: out = x;
    endcase
end

assign {Addsub, and, or} = out;



always@(*)
begin
    C = x; // unintentional latches
    casex (rot[2:0])

    3'b000: B = A << count;
    3'b001: B = A >> count;
    3'b010: begin
            C = A<<count;
            B = {A[15], C[14:0]};
    end
    3'b011: B = {16{A[15]}, A} >> count;
    3'b100: B = A << count;
    3'b101: B = A << count;
    endcase
end

//ROTATE
B = {A,A} >> count // rotate left
B = {A,A} << count // rotate right


//--------------------------------------------------

