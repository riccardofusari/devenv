class rf_agent extends uvm_agent;
    protected uvm_active_passive_enum is_active = UVM_ACTIVE;

    rf_sequencer sequencer;
    rf_driver    driver;
    rf_monitor   monitor;

    `uvm_component_utils_begin(rf_agent)
        `uvm_field_enum(uvm_active_passive_enum, is_active, UVM_ALL_ON)
    `uvm_component_utils_end

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(is_active == UVM_ACTIVE) begin
        sequencer = rf_sequencer::type_id::create("sequencer", this);
        driver    = rf_driver::type_id::create("driver", this);
        end

        monitor     = rf_monitor::type_id::create("monitor", this);

        `uvm_info(get_full_name(), "Build Stage Complete", UVM_LOW)
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        if(is_active == UVM_ACTIVE) begin
            driver.seq_item_port.connect(sequencer.seq_item_export);
        end

        `uvm_info(get_full_name(), "Connect Stage Complete", UVM_LOW)
    endfunction: connect_phase
  
endclass: rf_agent