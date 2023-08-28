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
        .RD1           (port.rf_rd1),
        .RD2           (port.rf_rd2),
        .WR            (port.rf_wr),
        .CALL          (port.rf_call),
        .SIGRETURN     (port.rf_sigreturn),
        .ADD_WR        (port.rf_add_wr),
        .ADD_RD1       (port.rf_add_rd1),
        .ADD_RD2       (port.rf_add_rd2),
        .DATAIN        (port.rf_data_in),
        .OUT1          (port.rf_out1),
        .OUT2          (port.rf_out2),
        .MEM_BUS       (port.rf_mem_bus),
        .MEM_BUSread   (port.rf_mem_busRead),
        .FILL          (port.rf_fill),
        .SPILL         (port.rf_spill)
    );

endmodule
