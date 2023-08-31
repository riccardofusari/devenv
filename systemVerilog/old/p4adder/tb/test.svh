import p4_pkg::*;

class test extends uvm_test;
    `uvm_component_utils(test)

    virtual interface p4_if aif;
    env env_h;                  /* Testbench Environment*/
    base_seq bseq;
    //p4_config p4_config_0;      /* Configuration object*/

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    /* Build component declared above */
    function void build_phase (uvm_phase phase);

        super.build_phase(phase);
        aif = p4_pkg::global_aif;
        //p4_config_0=new();
        //p4_config_0 = p4_config::type_id::create("p4_config_0", this);
        env_h       = env::type_id::create("env_h", this);


        //if(!uvm_config_db #(virtual p4_if)::get(this, "", "p4_vi", p4_config_0.p4_vi)) begin
        //    `uvm_fatal("MY_TEST", "no dut interface found")
        //end

        /* Make the object available for all the components using the wildcard */
        //uvm_config_db #(p4_config)::set(this, "*", "p4_config", p4_config_0);
    endfunction: build_phase


    virtual function void end_of_elaboration_phase (uvm_phase phase);
        uvm_top.print_topology();
    endfunction

    task run_phase (uvm_phase phase);

        phase.raise_objection(this);

        bseq = base_seq::type_id::create("bseq");

        repeat(10) begin 
          #5; bseq.start(env_h.agent_h.sqr_h);
        end

        phase.drop_objection(this);

        `uvm_info(get_type_name, "End of testcase", UVM_LOW);
        /* sequence*/
    endtask
endclass
