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
            bins rtype   = {RTYPE};
            bins addi1   = {ADDI1};
            bins subi1   = {SUBI1};
            bins and1    = {AND1};
            bins ori1    = {ORI1};
            bins addi2   = {ADDI2};
            bins subi2   = {SUBI2};
            bins andi2   = {ANDI2};
            bins ori2    = {ORI2};
            bins mov     = {MOV};
            bins s_reg1  = {S_REG1};
            bins s_reg2  = {S_REG2};
            bins s_mem   = {S_MEM};
            bins l_mem1  = {L_MEM1};
            bins l_mem2  = {L_MEM2};
            bins others    = default;

            bins mov_add = (MOV => ADDI1);
            bins mov_mem = (MOV => S_MEM);
            bins rty_mem = (RTYPE => L_MEM1);
        }
        rst: coverpoint rst
        {
            bins zero      = {0};
            bins one       = {1};
            bins others    = default;
        }
        cr:  cross opcode, func, rst;
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
        rst = t.rst;
        `uvm_info(get_type_name(), $sformatf("Coverage received OPCODE = %0d, FUNC = %0d", opcode.name(), func.name()), UVM_LOW);

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
