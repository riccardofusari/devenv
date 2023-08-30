class monitor extends uvm_monitor;
    `uvm_component_utils(monitor)

    uvm_analysis_port #(transaction) aport;
    transaction mon_item;
    transaction item_cloned;
    virtual interface p4_if p4_vi;


    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        aport    = new("aport", this);
        p4_vi = p4_pkg::global_aif;
    endfunction

    task run_phase(uvm_phase phase);
      super.run_phase(phase);

      forever begin

        mon_item = transaction::type_id::create("mon_item");
        item_cloned = transaction::type_id::create("item_cloned");


        @(posedge p4_vi.clk);
        mon_item.stimuli.a    = p4_vi.a;
        mon_item.stimuli.b    = p4_vi.b;
        mon_item.stimuli.cin  = p4_vi.cin;
        `uvm_info(get_type_name(), $sformatf("a = %0d, b = %0d, cin = %0d", mon_item.stimuli.a,
                                                                          mon_item.stimuli.b,
                                                                          mon_item.stimuli.cin),
                                                                          UVM_LOW);

        @(posedge p4_vi.clk);
        mon_item.cout    = p4_vi.cout;
        mon_item.sum_tb  = p4_vi.sum_tb;

        aport.write(mon_item);

      end
    endtask: run_phase
endclass: monitor


