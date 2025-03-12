

package fpu_tb_pkg

    import uvm_pkg::*;
    `include "uvm_macros.svh"

    `include "../src/multiplier/halfAdder.sv"
    `include "../src/multiplier/fullAdder.sv"
    `include "../src/multiplier/RCA.sv"
    `include "../src/multiplier/CS_block.sv"
    `include "../src/multiplier/CSA.sv"
    `include "../src/multiplier/LUT.sv"
    `include "../src/multiplier/daddatree.sv"
    `include "../src/multiplier/multiplier.sv"
    `include "../src/cf_math_pkg.sv"
    `include "../src/lzc.sv"
    `include "../src/rr_arb_tree.sv"
    `include "../src/fpnew_pkg.sv"
    `include "../src/fpnew_classifier.sv"
    `include "../src/fpnew_rounding.sv"
    `include "../src/fpnew_fma.sv"
    `include "../src/fpnew_opgroup_fmt_slice.sv"
    `include "../src/fpnew_opgroup_block.sv"
    `include "../src/fpnew_top.sv"
    `include "../src/dut_if.sv"
    `include "../src/DUT.sv"
    `include "../tb/packet_in.sv"
    `include "../tb/packet_out.sv"
    `include "../tb/sequence_in.sv"
    `include "../tb/sequencer.sv"
    `include "../tb/driver.sv"
    `include "../tb/driver_out.sv"
    `include "../tb/monitor.sv"
    `include "../tb/monitor_out.sv"
    `include "../tb/agent.sv"
    `include "../tb/agent_out.sv"
    `include "../tb/refmod.sv"
    `include "../tb/comparator.sv"
    `include "../tb/env.sv"
    `include "../tb/simple_test.sv"
    
endpackage
