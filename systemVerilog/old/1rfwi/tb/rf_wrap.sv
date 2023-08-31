module rf_wrap 
#(
    parameter NBITS      = 64,
    parameter NREGISTERS = 32,
    parameter N          = 3,
    parameter F          = 4,
    parameter M          = 5
)
(
    rf_if.rf_port port
);

    registerfileWindowing #(NBITS, NREGISTERS, N, F, M) rf_u
    (
        .CLK           (port.clk),
        .RESET         (port.rst),
        .ENABLE        (port.enable),
        .RD1           (port.rd1),
        .RD2           (port.rd2),
        .WR            (port.wr),
        .CALL          (port.call),
        .SIGRETURN     (port.sigreturn),
        .ADD_WR        (port.add_wr),
        .ADD_RD1       (port.add_rd1),
        .ADD_RD2       (port.add_rd2),
        .DATAIN        (port.data_in),
        .OUT1          (port.out1),
        .OUT2          (port.out2),
        .MEM_BUS       (port.mem_bus),
        .MEM_BUSread   (port.mem_busRead),
        .FILL          (port.fill),
        .SPILL         (port.spill)
    );

endmodule