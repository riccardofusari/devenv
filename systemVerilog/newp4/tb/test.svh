import p4_pkg::*;

class test extends uvm_test;
    `uvm_component_utils(test)

    virtual interface p4_if aif;
    env env_h;                  /* Testbench Environment*/
    base_seq bseq;


    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    /* Build component declared above */
    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        aif = p4_pkg::global_aif;
        env_h = env::type_id::create("env_h", this);
    endfunction: build_phase


    virtual function void end_of_elaboration_phase (uvm_phase phase);
        uvm_top.print_topology();
    endfunction


    task run_phase (uvm_phase phase);
        super.run_phase(phase);
        phase.raise_objection(this);
        
        repeat(20000) begin 
            @(posedge aif.clk);
            bseq = base_seq::type_id::create("bseq");
            bseq.start(env_h.agent_h.sqr_h);
        end

        phase.drop_objection(this);
        `uvm_info(get_type_name, "End of testcase", UVM_LOW);
    endtask

endclass
