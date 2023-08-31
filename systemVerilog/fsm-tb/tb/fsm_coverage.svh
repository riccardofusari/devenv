class coverage extends uvm_subscriber #(transaction);
    `uvm_component_utils(coverage)
        localparam NBITS = 32;

    uvm_analysis_imp #(transaction, coverage) analysis_export;

    rand fsm_func_t   func;
    rand fsm_opcode_t opcode;
    logic rst;
    int count;

    covergroup cg;
        funcc: coverpoint func 
        {
            bins add  = {ADD};
            bins sub  = {SUB};
            bins andd = {AND};
            bins orr  = {OR};
            bins nop  = {NOP};
            bins others    = default;
        }
        opcodee: coverpoint opcode
        {
            bins rtype   = {0};
            bins addi1   = {1};
            bins subi1   = {2};
            bins and1    = {3};
            bins ori1    = {4};
            bins addi2   = {5};
            bins subi2   = {6};
            bins andi2   = {7};
            bins ori2    = {8};
            bins mov     = {9};
            bins s_reg1  = {10};
            bins s_reg2  = {11};
            bins s_mem   = {12};
            bins l_mem1  = {13};
            bins l_mem2  = {14};
            bins others    = default;
        }
        rst: coverpoint rst
        {
            bins zero      = {0};
            bins one       = {1};
            bins others    = default;
        }
        cr:  cross opcode, func;
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
        func     = t.funcEnum();
        opcode   = t.opEnum();
        `uvm_info(get_type_name(), $sformatf("Coverage received OPCODE = %0d, FUNC = %0d", opcode.name(), func.name()), UVM_LOW);
        rst = t.rst;
        count++;
        cg.sample();
        `uvm_info(get_type_name(), $sformatf("Current Coverage = %0f", cg.get_coverage()), UVM_LOW)
    endfunction: write


    function void extract_phase(uvm_phase phase);
        super.extract_phase(phase);
        `uvm_info(get_type_name(), $sformatf("Number of Coverage Packets Collected = %0d", count), UVM_LOW)
        `uvm_info(get_type_name(), $sformatf("Current Coverage = %0f", cg.get_coverage()), UVM_LOW)
    endfunction

endclass
