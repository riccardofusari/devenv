interface fsm_if
#(
    parameter FUNC_SIZE    = 11,
    parameter OP_CODE_SIZE = 6,
    parameter CW_SIZE      = 11
);
    bit rf1;
    bit rf2;
    bit en1;
    bit s1;
    bit s2;
    bit alu1;
    bit alu2;
    bit en2;
    bit rm;
    bit wm;
    bit en3;
    bit s3;
    bit wf1;
    logic clk;
    logic rst;
    logic [OP_CODE_SIZE-1 : 0] opcode;
    logic [FUNC_SIZE-1 : 0] func;


    modport fsm_port (
        output rf1,
        output rf2,
        output en1,
        output s1,
        output s2,
        output alu1,
        output alu2,
        output en2,
        output rm,
        output wm,
        output en3,
        output s3,
        output wf1,
        input clk,
        input rst,
        input opcode,
        input func
    );


    initial begin: init
        clk  = 1'b0;
        rst = 1'b0;
        rst = 1'b1;
    end

    always #5ns begin: clk_gen
        clk = ~clk;
    end


endinterface //fsm_if