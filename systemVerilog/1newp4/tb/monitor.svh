class monitor extends uvm_monitor;
    `uvm_component_utils(monitor)

    uvm_analysis_port #(transaction) aport_mon;

    transaction mon_item;

    virtual interface p4_if p4_vi;

    function new(string name, uvm_component parent);
        super.new(name, parent);
        mon_item = new();
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        aport_mon    = new("aport", this);
        p4_vi = p4_pkg::global_aif;

        mon_item=transaction::type_id::create("mon_item",this);
    endfunction

    task run_phase(uvm_phase phase);

      forever begin

        @(posedge p4_vi.clk);

        mon_item.stimuli.a    = p4_vi.a;
        mon_item.stimuli.b    = p4_vi.b;
        mon_item.stimuli.cin  = p4_vi.cin;
        `uvm_info(get_type_name, $sformatf("a = %0d, b = %0d, cin = %0d", mon_item.stimuli.a,
                                                                          mon_item.stimuli.b,
                                                                          mon_item.stimuli.cin),
                                                                          UVM_HIGH);

        @(posedge p4_vi.clk);
        mon_item.cout    = p4_vi.cout;
        mon_item.sum_tb  = p4_vi.sum_tb;
        aport_mon.write(mon_item);

      end
    endtask: run_phase

endclass: monitor