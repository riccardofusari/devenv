module tb_top;
import uvm_pkg::*;
import rf_pkg::*;

    rf_if      #(NBITS, NREGISTERS, N, F, M)   rf_if_h();                  /* Instantiate the interface    */
    rf_wrap    #(NBITS, NREGISTERS, N, F, M)   rf_wrap_h(rf_if_h.rf_port); /* Instantiate the wrapper      */

    initial begin
        /* Take the pointer to the interface through the config database defined in the pkg*/
        uvm_config_db #(virtual rf_if)::set(null, "uvm_test_top", "rf_vi", rf_if_h);

        run_test("test");
    end

endmodule
