class rf_env extends uvm_env;
    rf_agent agent;

    `uvm_component_utils(rf_env)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        agent = rf_agent::type_id::create("agent", this);

        `uvm_info(get_full_name(), "Build Stage Complete", UVM_LOW)
    endfunction: build_phase

endclass: rf_env