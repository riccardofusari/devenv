import fsm_pkg::*;

class test extends uvm_test;
    `uvm_component_utils(test)

    virtual interface fsm_if aif;
    env env_h;                  /* Testbench Environment*/
    rtype_sequence rtype_seq;
    itype_sequence itype_seq;
    rst_sequence   rst_seq;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    /* Build component declared above */
    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        aif = fsm_pkg::global_aif;
        env_h = env::type_id::create("env_h", this);
    endfunction: build_phase


    virtual function void end_of_elaboration_phase (uvm_phase phase);
        uvm_top.print_topology();
    endfunction


    task run_phase (uvm_phase phase);
        super.run_phase(phase);
        phase.raise_objection(this);

        repeat(1000) begin

            rtype_seq = rtype_sequence::type_id::create("rtype_seq");
            rtype_seq.start(env_h.agent_h.sqr_h);
            repeat(3) @(negedge aif.clk);

            itype_seq = itype_sequence::type_id::create("itype_seq");
            itype_seq.start(env_h.agent_h.sqr_h);
            repeat(3) @(negedge aif.clk);

            rst_seq = rst_sequence::type_id::create("rst_seq");
            rst_seq.start(env_h.agent_h.sqr_h);
            repeat(3) @(negedge aif.clk);
        end

        phase.drop_objection(this);
        `uvm_info(get_type_name, "End of testcase", UVM_LOW);
    endtask

endclass
