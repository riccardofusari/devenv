class driver extends uvm_driver #(transaction);
    `uvm_component_utils(driver)

    //p4_config p4_config_0;
    virtual interface p4_if p4_vi;

    uvm_analysis_port #(transaction) drv2sb_port;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        //assert( uvm_config_db #(p4_config)::get(this, "", "p4_config", p4_config_0) );
        p4_vi = p4_pkg::global_aif;
        drv2sb_port=new("drv2sb",this);
    endfunction

    task run_phase(uvm_phase phase);

        transaction tx;

        init();

        forever begin

        seq_item_port.get_next_item(tx);
        $display("-------------------------------------------------------------------");
        `uvm_info(get_type_name, $sformatf("a = %0d, b = %0d, cin = %0d", tx.stimuli.a,
                                                                          tx.stimuli.b,
                                                                          tx.stimuli.cin),
                                                                          UVM_LOW);

        drive_tx(tx);
        drv2sb_port.write(tx);
        seq_item_port.item_done();
        $display("-------------------------------------------------------------------");

        end

    endtask

    virtual task drive_tx (transaction item);
        p4_vi.a   = item.stimuli.a;
        p4_vi.b   = item.stimuli.b;
        p4_vi.cin = item.stimuli.cin;
    endtask //drive_tx

    virtual task init ();
        p4_vi.a   = 0;
        p4_vi.b   = 0;
        p4_vi.cin = 0;
    endtask //drive_tx

endclass //driver extends uvm_driver