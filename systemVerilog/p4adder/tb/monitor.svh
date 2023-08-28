class monitor extends uvm_monitor;
    `uvm_component_utils(monitor)

    uvm_analysis_port #(transaction) aport;
    //p4_config p4_config_0;
    virtual interface p4_if p4_vi;
    transaction mon_item;

    function new(string name, uvm_component parent);
        super.new(name, parent);
        aport    = new("aport", this);
        mon_item = new();
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        p4_vi = p4_pkg::global_aif;
        //p4_config_0 = p4_config::type_id::create("config");
        //assert( uvm_config_db #(p4_config)::get(this, "", "p4_config", p4_config_0));
        //p4_vi = p4_config_0.p4_vi;
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
        aport.write(mon_item);

      end
    endtask: run_phase

endclass: monitor