class driver extends uvm_driver #(rf_transaction);
    `uvm_component_utils(driver)

    rf_config rf_config_0;
    virtual rf_if rf_vi;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        assert( uvm_config_db #(rf_config)::get(this, "", "rf_config", rf_config_0) );
        rf_vi = rf_config_0.rf_vi;
    endfunction

    task run_phase(uvm_phase phase);
       /* phase.raise_objection(this);
        phase.drop_objection(this);*/

        forever begin
            rf_transaction tx;
            @(posedge rf_vi.clk);
            seq_item_port.get_next_item(tx);
            /*rf_vi.data = tx.data;*/

            @(posedge rf_vi.clk)
                seq_item_port.item_done();
        end
    endtask

endclass //driver extends uvm_driver