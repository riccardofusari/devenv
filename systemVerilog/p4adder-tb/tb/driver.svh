class driver extends uvm_driver #(transaction);
    `uvm_component_utils(driver)

    virtual interface p4_if p4_vi;
    transaction tx;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        p4_vi = p4_pkg::global_aif;
    endfunction

    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        `uvm_info("DRIVER_CLASS", "Inside Run Phase!", UVM_HIGH)

        forever begin
            tx = transaction::type_id::create("item"); 

            seq_item_port.get_next_item(tx);
            drive_tx(tx);
            seq_item_port.item_done();

            `uvm_info(get_type_name, $sformatf("a = %0d, b = %0d, cin = %0d", tx.a,
                                                                              tx.b,
                                                                              tx.cin),
                                                                              UVM_LOW);
        end
    endtask

    virtual task drive_tx (transaction item);
        @(posedge p4_vi.clk);
        p4_vi.a   = item.a;
        p4_vi.b   = item.b;
        p4_vi.cin = item.cin;
    endtask //drive_tx

endclass 