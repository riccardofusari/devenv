package rf_pkg;
  `include "uvm_macros.svh"
  import uvm_pkg::*;
  import seq_pkg::*;


  localparam NBITS      = 64;
  localparam NREGISTERS = 32;
  localparam N          = 3;
  localparam F          = 4;
  localparam M          = 5;

  `define LOG2(x) ($clog2(x))


  /* Configuration database */
  class rf_config extends uvm_object;
    `uvm_object_utils(rf_config)

    virtual rf_if rf_vi;
    // optionally add other config fields as needed
  endclass: rf_config


  typedef uvm_sequencer #(rf_transaction) sequencer;
  `include "driver.svh"
  `include "env.svh"
  `include "test.svh"

endpackage: rf_pkg

