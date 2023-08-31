class rf_monitor extends uvm_monitor;
    virtual interface rf_if vif;
    string monitor_intf;
    int num_pkts;

    uvm_analysis_port #(data_packet) item_collected_port;
    data_packet data_collected;
    data_packet data_clone;

    `uvm_component_utils(rf_monitor)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        if(!uvm_config_db#(string)::get(this, "", "monitor_intf", monitor_intf))
        `uvm_fatal("NOSTRING", {"Need Interface Name for: ", get_full_name(), ".monitor_intf"})

        `uvm_info(get_type_name(), $sformatf("INTERFACE USED = %0s", monitor_intf), UVM_LOW)

        if(!uvm_config_db#(virtual rf_if)::get(this, "", "monitor_intf", vif))
            `uvm_fatal("NOVIF", {"Virtual Interface must be set for: ", get_full_name(), ".vif"})  

        item_collected_port = new("item_collected_port", this);
        data_collected      = data_packet::type_id::create("data_collected");
        data_clone          = data_packet::type_id::create("data_clone");

        `uvm_info(get_full_name(), "Build Stage Complete", UVM_LOW)
    endfunction: build_phase

    virtual task run_phase(uvm_phase phase);
        collect_data();
    endtask: run_phase

    virtual task collect_data();
        forever begin
            wait(vif.enable)
            data_collected.rst         = vif.rst;
            data_collected.data_in     = vif.data_in;
            data_collected.rd1         = vif.rd1;
            data_collected.wr          = vif.wr;
            data_collected.call        = vif.call;
            data_collected.sigreturn   = vif.sigreturn;
            data_collected.add_wr      = vif.add_wr;
            data_collected.add_rd1     = vif.add_rd1;
            data_collected.add_rd2     = vif.add_rd2;
            data_collected.rd2         = vif.rd2;
            data_collected.rd2         = vif.rd2;
            data_collected.mem_busRead = vif.mem_busRead;


            @(posedge vif.clk);
            data_collected.out1    = vif.out1;
            data_collected.out2    = vif.out2;
            data_collected.mem_bus = vif.mem_bus;
            data_collected.fill    = vif.fill;
            data_collected.spill   = vif.spill;

            $cast(data_clone, data_collected.clone());
            item_collected_port.write(data_clone);
            num_pkts++;
        end
    endtask: collect_data

    virtual function void report_phase(uvm_phase phase);
        `uvm_info(get_type_name(), $sformatf("REPORT: PACKETS COLLECTED = %0d", num_pkts), UVM_LOW)
    endfunction: report_phase
        
endclass: rf_monitor