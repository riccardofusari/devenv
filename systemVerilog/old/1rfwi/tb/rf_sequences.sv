class random_sequence extends uvm_sequence #(data_packet);
    `uvm_object_utils(random_sequence)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    virtual task body();
        `uvm_do(req);
    endtask: body

endclass: random_sequence