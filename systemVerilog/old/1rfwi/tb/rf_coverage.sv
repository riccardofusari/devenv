class rf_coverage extends uvm_subscriber #(data_packet);
    data_packet pkt;
    int count;

    `uvm_component_utils(rf_coverage)

    covergroup cg;
        option.per_instance = 1;
        cov_cf:   coverpoint pkt.cf;
        cov_en:   coverpoint pkt.enable;
        cov_in1:  coverpoint pkt.data_in1;
        cov_in2:  coverpoint pkt.data_in2;
        cov_out1: coverpoint pkt.data_out1;
        cov_out2: coverpoint pkt.data_out2;
        cov_dly:  coverpoint pkt.delay;
    endgroup: cg

    function new(string name, uvm_component parent)
        super.new(name, parent);
        cg = new();
    endfunction: new

    function void write(data_packet t);
        pkt = t;
        count++;
        cg.sample();
    endfunction: write

    virtual function void extract_phase(uvm_phase phase);
        `uvm_info(get_type_name(), $sformatf("Number of Coverage Packets Collected = %0d", count), UVM_LOW)

        `uvm_info(get_type_name(), $sformatf("Current Coverage = %0f", cg.get_coverage()), UVM_LOW)
    endfunction: extract_phase
    
endclass: rf_coverage