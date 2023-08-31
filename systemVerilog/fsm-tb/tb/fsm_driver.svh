class driver extends uvm_driver #(transaction);
    `uvm_component_utils(driver)

    virtual interface fsm_if fsm_vi;
    transaction tx;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        fsm_vi = fsm_pkg::global_aif;
    endfunction

    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        `uvm_info("DRIVER_CLASS", "Inside Run Phase!", UVM_HIGH)

        forever begin
            tx = transaction::type_id::create("item"); 

            seq_item_port.get_next_item(tx);
            drive_tx(tx);
            seq_item_port.item_done();
            `uvm_info(get_type_name, $sformatf("Driving: OPCODE = %s (%0b) | FUNC = %s (%0b) | RESET = %0b", 
                                                                                             tx.opcode.name(), 
                                                                                             tx.opBits(), 
                                                                                             tx.func.name(), 
                                                                                             tx.funcBits(), 
                                                                                             tx.rst),
                                                                                             UVM_LOW);
        end
    endtask

    virtual task drive_tx (transaction item);
        fsm_vi.opcode = item.opBits();
        fsm_vi.func   = item.funcBits();
        fsm_vi.rst    = item.rst;
    endtask

endclass 