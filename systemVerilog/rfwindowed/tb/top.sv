module top;
    import uvm_pkg::*;
    import rf_pkg::*;
    import rf_parameters::*;

    bit clk;
    bit rst_n;

    rf_if      #(NBITS, NREGISTERS, N, F, M)   rf_if_h();                  /* Instantiate the interface    */
    rf_wrap    #(NBITS, NREGISTERS, N, F, M)   rf_wrap_h(rf_if_h.rf_port); /* Instantiate the wrapper      */



    initial begin

        uvm_config_db#(virtual interface rf_if)::set(null, "*", "rf_if_h", rf_if_h);
        run_test();
    end

endmodule