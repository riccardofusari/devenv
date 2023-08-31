package p4_pkg;
  `include "uvm_macros.svh"
  import uvm_pkg::*;
  import seq_pkg::*;

  virtual interface p4_if global_aif;

  //localparam NBITS      = 32;

  `define LOG2(x) ($clog2(x))


  // /*Configuration database */
  //class p4_config extends uvm_object;
  //  `uvm_object_utils(p4_config)
//
  //  virtual p4_if p4_vi;
  //  // optionally add other config fields as needed
  //endclass


  //typedef uvm_sequencer #(p4_transaction) sequencer;
  `include "driver.svh"
  `include "monitor.svh"
  `include "scoreboard.svh"
  `include "agent.svh"
  `include "env.svh"
  `include "test.svh"


endpackage

