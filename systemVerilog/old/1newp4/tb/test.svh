import p4_pkg::*;

class test extends uvm_test;
    `uvm_component_utils(test)

    virtual interface p4_if aif;
    env env_h;                  /* Testbench Environment*/
    int file_h;

    //base_seq bseq;
    //p4_config p4_config_0;      /* Configuration object*/

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    /* Build component declared above */
    function void build_phase (uvm_phase phase);

        super.build_phase(phase);
        aif    = p4_pkg::global_aif;
        env_h  = env::type_id::create("env_h", this);

    endfunction: build_phase


    virtual function void end_of_elaboration_phase (uvm_phase phase);
        uvm_top.print_topology();
    endfunction

        //--------------------------------------------------------------------------
    function void start_of_simulation_phase(uvm_phase phase);
      $display("start_of_simulation_phase");
      file_h=$fopen("LOG_FILE.log","w");
      set_report_default_file_hier(file_h);
      set_report_severity_action_hier(UVM_INFO,UVM_DISPLAY+UVM_LOG);
      set_report_verbosity_level_hier(UVM_MEDIUM);
    endfunction

    task run_phase (uvm_phase phase);
        base_seq bseq;

        phase.raise_objection(this);

        repeat(100) begin 
        @(posedge aif.clk);
        bseq = base_seq::type_id::create("bseq");
        bseq.start(env_h.agent_h.sqr_h);
        end
        phase.drop_objection(this);
        /* sequence*/
    endtask
endclass
