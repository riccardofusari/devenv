class agent extends uvm_agent;
    `uvm_component_utils(agent)

    uvm_analysis_port #(transaction) aport;

    driver    drv_h;
    monitor   mon_h;
    seqcr     sqr_h;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        drv_h = driver::type_id::create("my_driver_h", this);
        sqr_h = seqcr::type_id::create("my_sequencer_h", this);
        mon_h = monitor::type_id::create("mon", this);
        aport = new("aport", this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        drv_h.seq_item_port.connect(sqr_h.seq_item_export);
        mon_h.aport.connect(aport);
    endfunction: connect_phase

endclass: agent
