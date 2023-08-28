module p4_wrap 
#(
    parameter NBITS = 32
)
(
    p4_if.p4_port port
);

    p4adder #(NBITS) p4_u
    (
        .A         (port.a),
        .B         (port.b),
        .Ci        (port.cin),
        .S         (port.sum_dut),
        .Co        (port.cout)
    );

endmodule
