class agent extends uvm_agent;
    `uvm_component_utils(agent)

    //uvm_analysis_port #(transaction) aport;

    driver    drv_h;
    monitor   mon_h;
    seqcr     sqr_h;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        if(get_is_active == UVM_ACTIVE) begin 
            drv_h = driver::type_id::create("my_driver_h", this);
            sqr_h = seqcr::type_id::create("my_sequencer_h", this);
        end

        mon_h = monitor::type_id::create("mon", this);
        //aport = new("aport", this);
    endfunction: build_phase

    function void connect_phase(uvm_phase phase);
        if(get_is_active == UVM_ACTIVE) begin 
            drv_h.seq_item_port.connect(sqr_h.seq_item_export);
        end
        //mon_h.aport.connect(aport);
    endfunction: connect_phase


endclass: agent //agent extends uvm_agent