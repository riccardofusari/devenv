`include "uvm_macros.svh"
`include "fsm_if.sv"
import uvm_pkg::*;
import fsm_pkg::*;


module top;


    fsm_if      #(FUNC_SIZE, OP_CODE_SIZE, CW_SIZE)   fsm_if_h();                  /* Instantiate the interface    */
    fsm_wrap    #(FUNC_SIZE, OP_CODE_SIZE, CW_SIZE)   fsm_wrap_h(fsm_if_h.fsm_port); /* Instantiate the wrapper      */

    initial begin: blk
        fsm_pkg::global_aif = fsm_if_h;
    end

    initial begin
        run_test();
    end

endmodule
