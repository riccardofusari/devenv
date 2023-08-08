class cat extends uvm_test;
  `uvm_component_utils(cat)

  /* Every constructor in UVM has always the same inputs */
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

  task run_phase(uvm_phase phase);
    /* Here you say to UVM that your are not finished */
    phase.raise_objection(this);
    super.run();
    `uvm_info("cat","The cat says 'meow'", UVM_INFO);
    /* Here you say to UVM that you are finished */
    phase.drop_objection(this);
  endtask
endclass : cat

