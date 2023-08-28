class agent extends uvm_agent;
    `uvm_component_utils(my_agent)

    uvm_analysis_port #(my_transaction) aport;

    sequencer sqr_h;
    driver    drv_h;
    monitor   mnt_h;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction //new()

    function void build_phase(uvm_phase phase);
        aport = new("aport", this);
        sqr_h = sequencer::type_id::create("my_sequencer_h", this);
        drv_h = driver   ::type_id::create("my_driver_h"   , this);
        mnt_h = monitor  ::type_id::create("my_monitor_h"  , this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        drv_h.seq_item_port.connect(sqr_h.seq_item_export);
        mnt_h.aport.connect(aport);
    endfunction: connect_phase
    

endclass: agent //agent extends uvm_agent