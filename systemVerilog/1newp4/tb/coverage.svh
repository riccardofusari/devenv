class coverage extends uvm_subscriber #(transaction);
  `uvm_component_utils(coverage)
      localparam NBITS = 32;

  logic cin;
  logic [NBITS - 1 : 0] a;
  logic [NBITS - 1 : 0] b;
    virtual interface p4_if p4_vi;

  real cov;
  covergroup cg;
    /* Carry input coverpoint */
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
        /* Corner values: first, last and last signed */
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
      p4_vi = p4_pkg::global_aif;
      cg.start();
  endfunction

  function void write(transaction t);  
    `uvm_info("coverage", $psprintf("Subscriber received a = %0d, b = %0d, sum = %0d", t.stimuli.a, t.stimuli.b, t.stimuli.cin), UVM_NONE);

    a   = t.stimuli.a;
    b   = t.stimuli.b;
    cin = t.stimuli.cin;
    cg.sample();
  endfunction: write


  function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);
    cov=cg.get_inst_coverage();
  endfunction


  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info(get_type_name(),$sformatf("!!!!###!!!####!!Coverage is %f",cov),UVM_MEDIUM)
  endfunction

endclass //subscriber extends uvm_subscriber