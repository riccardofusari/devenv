class monitor extends uvm_monitor;
    `uvm_component_utils(monitor)

    uvm_analysis_port #(transaction) aport;
    transaction mon_item;
    transaction mon_clone;
    virtual interface fsm_if fsm_vi;


    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        aport    = new("aport", this);
        fsm_vi   = fsm_pkg::global_aif;
    endfunction

    task run_phase(uvm_phase phase);
      super.run_phase(phase);

      forever begin

        mon_item = transaction::type_id::create("mon_item");

        @(posedge fsm_vi.clk);
        mon_item.funcBit   = fsm_vi.func;
        mon_item.opcodeBit = fsm_vi.opcode;
        mon_item.rst       = fsm_vi.rst;
        `uvm_info(get_type_name(), $sformatf("Monitoring: OPCODE = %s (%0b), FUNC = %s (%0b), , RESET = %0d", 
                                                                                                  mon_item.opEnum().name(), 
                                                                                                  mon_item.opcodeBit,
                                                                                                  mon_item.funcEnum().name(),
                                                                                                  mon_item.funcBit,
                                                                                                  mon_item.rst),
                                                                                                  UVM_LOW);
        @(negedge fsm_vi.clk);
        mon_item.rf1  = fsm_vi.rf1;
        mon_item.rf2  = fsm_vi.rf2;
        mon_item.en1  = fsm_vi.en1;

        @(negedge fsm_vi.clk);
        mon_item.s1   = fsm_vi.s1;
        mon_item.s2   = fsm_vi.s2;
        mon_item.alu1 = fsm_vi.alu1;
        mon_item.alu2 = fsm_vi.alu2;
        mon_item.en2  = fsm_vi.en2;

        @(negedge fsm_vi.clk);
        mon_item.rm  = fsm_vi.rm;
        mon_item.wm  = fsm_vi.wm;
        mon_item.en3 = fsm_vi.en3;
        mon_item.s3  = fsm_vi.s3;
        mon_item.wf1 = fsm_vi.wf1;

        aport.write(mon_item);

      end
    endtask: run_phase
endclass: monitor


