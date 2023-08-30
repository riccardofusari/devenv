class coverage extends uvm_subscriber #(transaction);
    `uvm_component_utils(coverage)
        localparam NBITS = 32;

    uvm_analysis_imp #(transaction, coverage) analysis_export;

    logic cin;
    logic [NBITS - 1 : 0] a;
    logic [NBITS - 1 : 0] b;
    int count;
    real cov;

    covergroup cg;
      carry_in: coverpoint cin 
      {
          bins zero = {0};
          bins one  = {1};
      }
      a_cp: coverpoint a
      {
          /* Corner values: first, last and last signed */
          bins corners[] = {0, (1<<NBITS)-1, (1<<(NBITS-1))-1};
          bins zero      = {0};
          bins one       = {32'hFFFFFFFF};
          bins others    = default;
      }
      b_cp: coverpoint b
      {
          bins corners[] = {0, (1<<NBITS)-1, (1<<(NBITS-1))-1};
          bins zero      = {0};
          bins one       = {32'hFFFFFFFF};
          bins others    = default;
      }
      cr:  cross carry_in, a_cp, b_cp;
    endgroup: cg


    function new(string name, uvm_component parent);
      super.new(name, parent);
      cg = new();
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        analysis_export = new("analysis_export COVERAGE", this);
        cg.start();
    endfunction

    function void write(transaction t);  
      `uvm_info(get_type_name(), $sformatf("Coverage received a = %0d, b = %0d, sum = %0d", t.stimuli.a, t.stimuli.b, t.stimuli.cin), UVM_LOW);
      a   = t.stimuli.a;
      b   = t.stimuli.b;
      cin = t.stimuli.cin;
      count++;
      cg.sample();
      cov=cg.get_coverage();
    endfunction: write


    function void extract_phase(uvm_phase phase);
      super.extract_phase(phase);
      cov=cg.get_coverage();
      `uvm_info(get_type_name(), $sformatf("Number of Coverage Packets Collected = %0d", count), UVM_LOW)
      `uvm_info(get_type_name(), $sformatf("Current Coverage = %0f", cg.get_coverage()), UVM_LOW)
    endfunction


    //function void report_phase(uvm_phase phase);
    //  super.report_phase(phase);
    //  `uvm_info(get_type_name(),$sformatf("!!!!###!!!####!!Coverage is %f",cov),UVM_LOW)
    //endfunction
endclass //subscriber extends uvm_subscriber