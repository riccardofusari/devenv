class env extends uvm_env;
    `uvm_component_utils(env)

    UVM_FILE    file_h;
    agent       agent_h;
    subscriber  subscriber_h;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new


    function void build_phase (uvm_phase phase);
        agent_h = agent::type_id::create("agent",this);
        subscriber_h = agent::type_id::create("subscriber", this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        agent_h.aport.connect( subscriber_h.analysis_export );
    endfunction: connect_phase

    function void start_of_simulation_phase(uvm_phase phase);

      //uvm_top.set_report_verbosity_level_hier(UVM_NONE);
      uvm_top.set_report_verbosity_level_hier(UVM_HIGH);
      //uvm_top.set_report_severity_action_hier(UVM_INFO, UVM_NO_ACTION);
      //uvm_top.set_report_id_action_hier("ja", UVM_NO_ACTION);
      file_h = $fopen("uvm_basics_complete.log", "w");
      uvm_top.set_report_default_file_hier(file_h);
      uvm_top.set_report_severity_action_hier(UVM_INFO, UVM_DISPLAY + UVM_LOG);
    endfunction: start_of_simulation_phase

    task run_phase(uvm_phase phase);

    endtask: run_phase
endclass
