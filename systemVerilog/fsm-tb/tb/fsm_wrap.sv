module fsm_wrap 
#(
    parameter FUNC_SIZE    = 11,
    parameter OP_CODE_SIZE = 6,
    parameter CW_SIZE      = 11
)
(
    fsm_if.fsm_port port
);

    fsm #(FUNC_SIZE, OP_CODE_SIZE, CW_SIZE) fsm_u
    (
        .OPCODE  (port.opcode),
        .FUNC    (port.func),
        .CLK     (port.clk),
        .RST     (port.rst),
        .RF1     (port.rf1),
        .RF2     (port.rf2),
        .EN1     (port.en1),
        .S1      (port.s1),
        .S2      (port.s2),
        .ALU1    (port.alu1),
        .ALU2    (port.alu2),
        .EN2     (port.en2),
        .RM      (port.rm),
        .WM      (port.wm),
        .EN3     (port.en3),  
        .S3      (port.s3),
        .WF1     (port.wf1)
    );
    
endmodule