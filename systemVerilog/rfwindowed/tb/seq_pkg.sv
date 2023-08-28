package seq_pkg
    `include "uvm_macros.svh"
    import uvm_pkg::*;

    class rf_transaction extends uvm_sequence_item;
        `uvm_object_utils(rf_transaction)

        /*rand, constraints, methods*/


        function new(string name = "");
            super.new(name);
        endfunction: new

    endclass: rf_transaction

    class rf_sequence extends uvm_sequence #(rf_transaction);

        `uvm_object_utils(rf_sequence)
        function new(string name= "");
            super.new(name);
        endfunction //new()

        task body;
            forever begin
                rf_transaction tx;
                tx = rf_transaction::type_id::create("tx");
                start_item(tx);
                assert(tx.randomize());
                finish_item(tx);
            end
        endtask
    endclass


endpackage