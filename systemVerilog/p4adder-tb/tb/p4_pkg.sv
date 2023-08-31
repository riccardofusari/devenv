package p4_pkg;
  `include "uvm_macros.svh"
  import uvm_pkg::*;

  parameter NBITS      = 32;
  
  virtual interface p4_if global_aif;


  `define LOG2(x) ($clog2(x))

  `include "seq_pkg.svh"
  `include "driver.svh"
  `include "monitor.svh"
  `include "scoreboard.svh"
  `include "coverage.svh"
  `include "agent.svh"
  `include "env.svh"
  `include "test.svh"


endpackage

