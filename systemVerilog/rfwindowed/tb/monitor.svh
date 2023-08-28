class monitor extends uvm_monitor;
    `uvm_component_utils(monitor)

    uvm_analysis_port #(rf_transaction) aport;

    rf_config rf_config_0;
    virtual rf_if rf_vi;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        dut_config_0 = rf_config::type_id::create("config");

        aport = new("aport", this);

        assert( uvm_config_db #(my_dut_config)::get(this, "", "rf_config", rf_config_0));
        rf_vi = rf_config_0.rf_vi
    endfunction

    task run_phase(uvm_phase phase);
      forever
      begin
        rf_transaction tx;

        @(posedge rf_vi.clk);
        tx = rf_transaction::type_id::create("tx");
        /*tx.cmd  = rf_vi.cmd;
        tx.addr = rf_vi.addr;
        tx.data = rf_vi.data;
        */
        aport.write(tx);
      end
    endtask: run_phase

endclass: monitor