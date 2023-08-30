`include "uvm_macros.svh"
`include "p4_if.sv"
import uvm_pkg::*;
import p4_pkg::*;


module tb_top;

    localparam NBITS = 32;
    p4_if      #(NBITS)   p4_if_h();                  /* Instantiate the interface    */
    p4_wrap    #(NBITS)   p4_wrap_h(p4_if_h.p4_port); /* Instantiate the wrapper      */

    initial begin: blk
        /* Take the pointer to the interface through the config database defined in the pkg*/
        //uvm_config_db #(virtual p4_if)::set(null, "uvm_test_top", "p4_vi", p4_if_h);
        //uvm_config_db #(virtual p4_if)::set(null, "*", "p4_vi", p4_if_h);//p4_if_h);
        //uvm_config_db #(virtual p4_if)::set(uvm_root::get(), "*", "p4_vi", "p4_if_h",p4_if_h);

        p4_pkg::global_aif = p4_if_h;
    end

    initial begin
        run_test();
    end

endmodule
