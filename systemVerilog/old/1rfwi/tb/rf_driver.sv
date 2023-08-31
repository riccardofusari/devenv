class rf_driver extends uvm_driver #(data_packet);
    `uvm_component_utils(rf_driver)

    virtual interface rf_if vif;


    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        if(!uvm_config_db#(virtual rf_if)::get(this, "", "in_intf", vif))
        `uvm_fatal("NOVIF", {"Virtual Interface must be set for: ", get_full_name(), ".vif"})

        `uvm_info(get_full_name(), "Build Stage Complete", UVM_LOW)
    endfunction: build_phase

    virtual task run_phase(uvm_phase phase);
        fork
        reset();
        get_and_drive();
        join
    endtask: run_phase

    virtual task reset();
        forever begin
            @(negedge vif.rst_n);
            `uvm_info(get_type_name(), "Resetting Signals", UVM_LOW)
            vif.rst         = 0;
            vif.enable      = 0;
            vif.rd1         = 0;
            vif.rd2         = 0;
            vif.wr          = 0;
            vif.call        = 0;
            vif.sigreturn   = 0;
            vif.add_wr      = 0;
            vif.add_rd1     = 0;
            vif.add_rd2     = 0;
            vif.data_in     = 0;
            vif.mem_busRead = 0;
        end
    endtask: reset

    virtual task get_and_drive();
        forever begin
            while(vif.rst != 1'b0) begin
                seq_item_port.get_next_item(req);
                drive_packet(req);
                seq_item_port.item_done();
            end
        end
    endtask: get_and_drive

    virtual task drive_packet(data_packet pkt);
        vif.enable = 1'b1;
        repeat(2) @(posedge vif.clk);
        vif.rst         = pkt.rst;
        vif.enable      = pkt.enable;
        vif.rd1         = pkt.rd1;
        vif.rd2         = pkt.rd2;
        vif.wr          = pkt.wr;
        vif.call        = pkt.call;
        vif.sigreturn   = pkt.sigreturn;
        vif.add_wr      = pkt.add_wr;
        vif.add_rd1     = pkt.add_rd1;
        vif.add_rd2     = pkt.add_rd2;
        vif.data_in     = pkt.data_in;
        vif.mem_busRead = pkt.mem_busRead;

        @(posedge vif.clk);
        vif.enable = 1'b0;
    endtask: drive_packet

endclass: rf_driver