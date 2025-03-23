`include "uvm_macros.svh"
import uvm_pkg::*;
import p4_pkg::*;


module tb_top;

    localparam NBITS = 32;

    p4_if      #(NBITS)   p4_if_h();                  /* Instantiate the interface    */
    p4_wrap    #(NBITS)   p4_wrap_h(p4_if_h.p4_port); /* Instantiate the wrapper      */

    initial begin: blk
        p4_pkg::global_aif = p4_if_h;
    end

    initial begin
        run_test();
    end

endmodule
