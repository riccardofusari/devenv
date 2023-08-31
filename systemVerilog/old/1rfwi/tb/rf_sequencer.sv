class rf_sequencer extends uvm_sequencer #(data_packet);
    `uvm_component_utils(rf_sequencer)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

endclass: rf_sequencer