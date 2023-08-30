package rf_parameters;

    `define LOG2(x) ($clog2(x))

    parameter NBITS      = 64;
    parameter NREGISTERS = 32;
    parameter N          = 3;
    parameter F          = 4;
    parameter M          = 5;
    parameter ADDR_SIZE  = `LOG2(N*3+M+1);
endpackage