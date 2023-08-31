class rf_scoreboard extends uvm_scoreboard;

    uvm_tlm_analysis_fifo #(data_packet) input_packets_collected;
    uvm_tlm_analysis_fifo #(data_packet) output_packets_collected;

    data_packet input_packet;
    data_packet output_packet;

    `uvm_component_utils(rf_scoreboard)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        input_packets_collected = new("input_packets_collected", new);
        output_packets_collected = new("output_packets_collected", new);

        input_packet   = data_packet::type_id::create("input_packet", this);
        output_packet  = data_packet::type_id::create("output_packet", this);


        `uvm_info(get_full_name(), "Build Stage Complete", UVM_LOW)
    endfunction: build_phase

    virtual task run_phase(uvm_phase phase);
        watcher();
    endtask: run_phase

    virtual task watcher();
        forever begin
        input_packets_collected.get(input_packet);
        output_packets_collected.get(output_packet);
        compare_data();
    endtask: watcher

    virtual task compare_data();
        bit [15:0] exp_data1;
        bit [15:0] exp_data2;

        if((input_packet.data_in1 == 16'h0000) || 
        (input_packet.data_in1 == 16'hFFFF)) begin
        exp_data1 = input_packet.data_in1;
        end
        else begin
        exp_data1 = input_packet.data_in1 * input.packet.cf
        end

        if((input_packet.data_in2 == 16'h0000) || 
        (input_packet.data_in2 == 16'hFFFF)) begin
        exp_data2 = input_packet.data_in2;
        end
        else begin
        exp_data2 = input_packet.data_in2 * input.packet.cf
        end

        if(exp_data1 != output_packet.data_out1) begin
        `uvm_error(get_type_name(), $sformatf("Actual output data %0h does not match expected %0h", output_packet.data_out1, exp_data1))
        end

        if(exp_data2 != output_packet.data_out2) begin
        `uvm_error(get_type_name(), $sformatf("Actual output data %0h does not match expected %0h", output_packet.data_out2, exp_data2))
        end

    endtask: compare_data

endclass: rf_scoreboard