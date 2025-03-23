
class transaction extends uvm_sequence_item;
    `uvm_object_utils(transaction)

    /* Input's structure */

    rand logic                 cin;
    rand logic [NBITS - 1 : 0] a;
    rand logic [NBITS - 1 : 0] b;
    rand logic [NBITS - 1 : 0] azerOne;
    rand logic [NBITS - 1 : 0] bzerOne;


    logic [NBITS - 1 : 0] sum_dut;
    logic [NBITS - 1 : 0] sum_tb;
    logic                 cout;

    constraint czerOne_c { azerOne inside {32'h00000000, 32'hFFFFFFFF, (1<<(NBITS-1))-1}; }
    constraint bzerOne_c { bzerOne inside {32'h00000000, 32'hFFFFFFFF, (1<<(NBITS-1))-1}; }


    function new(string name = "");
        super.new(name);
    endfunction

endclass: transaction


class base_seq extends uvm_sequence #(transaction);
    `uvm_object_utils(base_seq)


    transaction tx;

    function new(string name= "");
        super.new(name);
    endfunction //new()

    task body();
        `uvm_info(get_type_name(), "Base seq: Inside Body", UVM_LOW);
        tx = transaction::type_id::create("transaction");
        start_item(tx);
        assert(tx.randomize());
        finish_item(tx);
    endtask
endclass: base_seq

class range_seq extends uvm_sequence #(transaction);
    `uvm_object_utils(range_seq)

    transaction tx;

    function new(string name= "");
        super.new(name);
    endfunction //new()

    task body();
        `uvm_info(get_type_name(), "Base seq: Inside Body", UVM_LOW);
        tx = transaction::type_id::create("transaction");
        start_item(tx);
        assert(tx.randomize());
        tx.a = tx.azerOne;
        tx.b = tx.bzerOne;
        finish_item(tx);
    endtask
endclass: range_seq


class seqcr extends uvm_sequencer#(transaction);
    `uvm_component_utils(seqcr)

    function new(string name = "seqcr", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction: connect_phase
endclass: seqcr

