import rf_parameters::*;

class command_transaction extends uvm_transaction;
    `uvm_object_utils(command_transaction)

    rand logic rst;
    rand logic enable;
    rand logic rd1;
    rand logic rd2;
    rand logic wr;
    rand logic call;
    rand logic sigreturn;
    rand logic [ADDR_SIZE-1:0] add_wr;
    rand logic [ADDR_SIZE-1:0] add_rd1;
    rand logic [ADDR_SIZE-1:0] add_rd2;
    rand logic [NBITS-1 : 0] data_in;


    constraint data { data_in dist {32'h00 := 1, 32'hFF := 1, [32'h01 : 32'hFE] := 1 };
                      add_wr  dist {32'h00 := 1, 32'hFF := 1, [32'h01 : 32'hFE] := 1 };
                      add_rd1 dist {32'h00 := 1, 32'hFF := 1, [32'h01 : 32'hFE] := 1 };
                      add_rd2 dist {32'h00 := 1, 32'hFF := 1, [32'h01 : 32'hFE] := 1 };}


    /* Is a component extends, so doesn't need the other constructor type */
    function new(string name = "data_packet");
        super.new(name);
    endfunction: new

    function void do_copy (uvm_object rhs);
        data_packet copied_transaction_h;

        if (rhs == null)
            `uvm_fatal("TRANSACTION", "Tried to copy from a null pointer");

        if(!$cast(copied_transaction_h, rhs))
            `uvm_fatal("TRANSACTION", "Tried to copy the wrong type" )

        super.do_copy(rhs);

        rst        = copied_transaction_h.rst;
        enable     = copied_transaction_h.enable;
        rd1        = copied_transaction_h.rd1;
        rd2        = copied_transaction_h.rd2;
        wr         = copied_transaction_h.wr;
        call       = copied_transaction_h.call;
        sigreturn  = copied_transaction_h.sigreturn;
        add_wr     = copied_transaction_h.add_wr;
        add_rd1    = copied_transaction_h.add_rd1;
        add_rd2    = copied_transaction_h.add_rd2;
        data_in    = copied_transaction_h.data_in;
    endfunction: do_copy

    function bit do_compare(uvm_object rhs, uvm_comparer comparer);
        data_packet compared_transaction_h;
        bit same;

        if (rhs == null)
            `uvm_fatal("TRANSACTION", "Tried to copy from a null pointer");


        if(!$cast(compared_transaction_h, rhs))
            same = 0;
        else
            same = super.do_compare(rhs,comparer)                   &&
                   (compared_transaction_h.rst        == rst)       &&
                   (compared_transaction_h.enable     == enable)    &&
                   (compared_transaction_h.rd1        == rd1)       &&
                   (compared_transaction_h.rd2        == rd2)       &&
                   (compared_transaction_h.wr         == wr)        &&
                   (compared_transaction_h.call       == call)      &&
                   (compared_transaction_h.sigreturn  == sigreturn) &&
                   (compared_transaction_h.add_wr     == add_wr)    &&
                   (compared_transaction_h.add_rd1    == add_rd1)   &&
                   (compared_transaction_h.add_rd2    == add_rd2)   &&
                   (compared_transaction_h.data_in    == data_in);

        return same;
    endfunction

    function string convert2string();
        string s;
        s = $sformatf("rst: %2h enable: %2h rd1: %2h rd2: %2h wr: %2h call: %2h sigreturn: %2h add: %2h_wr: %2h add_rd1: %2h add_rd2: %2h data_in: %2h", 
                       rst, enable,  rd1,  rd2, wr, call, sigreturn, add_wr, add_rd1, add_rd2, data_in);
        return s;
    endfunction: convert2string
endclass: command_transaction


class result_transaction extends uvm_transaction;
    `uvm_object_utils(result_transaction);

    rand logic [NBITS-1 : 0] out1;
    rand logic [NBITS-1 : 0] out2;
    rand logic [NBITS-1 : 0] mem_bus;
    rand logic fill;
    rand logic spill;


    /* Is a component extends, so doesn't need the other constructor type */
    function new(string name = "data_packet");
        super.new(name);
    endfunction: new

    function void do_copy (uvm_object rhs);
        data_packet copied_transaction_h;

        if (rhs == null)
            `uvm_fatal("TRANSACTION", "Tried to copy from a null pointer");

        if(!$cast(copied_transaction_h, rhs))
            `uvm_fatal("TRANSACTION", "Tried to copy the wrong type" )

        super.do_copy(rhs);

        out1     = copied_transaction_h.out1;
        out2     = copied_transaction_h.out2;
        mem_bus  = copied_transaction_h.mem_bus;
        fill     = copied_transaction_h.fill;
        spill    = copied_transaction_h.spill;

    endfunction: do_copy

    function bit do_compare(uvm_object rhs, uvm_comparer comparer);
        data_packet compared_transaction_h;
        bit same;

        if (rhs == null)
            `uvm_fatal("TRANSACTION", "Tried to copy from a null pointer");


        if(!$cast(compared_transaction_h, rhs))
            same = 0;
        else
            same = super.do_compare(rhs,comparer)               &&
                   (compared_transaction_h.out1    == out1)     &&
                   (compared_transaction_h.out2    == out2)     &&
                   (compared_transaction_h.mem_bus == mem_bus)  &&
                   (compared_transaction_h.fill    == fill)     &&
                   (compared_transaction_h.spill   == spill);

        return same;
    endfunction

    function string convert2string();
        string s;
        s = $sformatf("out1: %2h out2: %2h mem_bus: %2h fill: %2h spill: %2h", 
                       out1, out2, mem_bus, fill, spill);
        return s;
    endfunction: convert2string
endclass: command_transaction


class _transaction extends command_transaction;
    `uvm_object_utils(_transaction)

    constraint name {;}

    function new(string name=""); 
        super.new(name);
    endfunction
endclass