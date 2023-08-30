class transaction extends uvm_sequence_item;
    `uvm_object_utils(transaction)

    /* Input */
    rand fsm_func_t   func;
    rand fsm_opcode_t opcode;

    /* Output */
    bit rf1;
    bit rf2;
    bit en1;
    bit s1;
    bit s2;
    bit alu1;
    bit alu2;
    bit en2;
    bit rm;
    bit wm;
    bit en3;
    bit s3;
    bit wf1;
    logic rst;
    logic [OP_CODE_SIZE-1 : 0] opcodeBit;
    logic [FUNC_SIZE-1 : 0] funcBit;

    /* Is a component extends, so doesn't need the other constructor type */
    function new(string name = "transaction");
        super.new(name);
    endfunction: new

    function void do_copy (uvm_object rhs);
        transaction copied_transaction_h;

        if (rhs == null)
            `uvm_fatal("TRANSACTION", "Tried to copy from a null pointer");

        if(!$cast(copied_transaction_h, rhs))
            `uvm_fatal("TRANSACTION", "Tried to copy the wrong type" )

        super.do_copy(rhs);

        func     = copied_transaction_h.func;
        opcode   = copied_transaction_h.opcode;
        rf1      = copied_transaction_h.rf1;
        rf2      = copied_transaction_h.rf2;
        en1      = copied_transaction_h.en1;
        s1       = copied_transaction_h.s1;
        s2       = copied_transaction_h.s2;
        alu1     = copied_transaction_h.alu1;
        alu2     = copied_transaction_h.alu2;
        en2      = copied_transaction_h.en2;
        rm       = copied_transaction_h.rm;
        wm       = copied_transaction_h.wm;
        en3      = copied_transaction_h.en3;
        s3       = copied_transaction_h.s3;
        wf1      = copied_transaction_h.wf1;
    endfunction: do_copy

    function bit do_compare(uvm_object rhs, uvm_comparer comparer);
        transaction compared_transaction_h;
        bit same;

        if (rhs == null)
            `uvm_fatal("TRANSACTION", "Tried to copy from a null pointer");

        if(!$cast(compared_transaction_h, rhs))
            same = 0;
        else
            same = super.do_compare(rhs,comparer)             &&
                   (compared_transaction_h.func   == func)    &&
                   (compared_transaction_h.opcode == opcode)  &&
                   (compared_transaction_h.rf1    == rf1)     &&
                   (compared_transaction_h.rf2    == rf2)     &&
                   (compared_transaction_h.en1    == en1)     &&
                   (compared_transaction_h.s1     == s1)      &&
                   (compared_transaction_h.s2     == s2)      &&
                   (compared_transaction_h.alu1   == alu1)    &&
                   (compared_transaction_h.alu2   == alu2)    &&
                   (compared_transaction_h.en2    == en2)     &&
                   (compared_transaction_h.rm     == rm)      &&
                   (compared_transaction_h.wm     == wm)      &&
                   (compared_transaction_h.en3    == en3)     &&
                   (compared_transaction_h.s3     == s3)      &&
                   (compared_transaction_h.wf1    == wf1);

        return same;
    endfunction

    function string convert2string();
        string s;
        s = $sformatf("func: %0s opcode: %0s rf1: %2h rf2: %2h en1: %2h s1: %2h s2: %2h alu1: %2h alu2: %2h en2: %2h rm: %2h wm: %2h en3: %2h s3: %2h wf1: %2h",
                       func.name(), opcode.name(), rf1, rf2, en1, s1, s2, alu1, alu2, en2, rm, wm, en3, s3, wf1);
        return s;
    endfunction: convert2string

    function logic [OP_CODE_SIZE - 1 : 0] opBits;
      case (opcode)
        RTYPE  : opBits = 6'b000000;
        ADDI1  : opBits = 6'b000001;
        SUBI1  : opBits = 6'b000010;
        AND1   : opBits = 6'b000011;
        ORI1   : opBits = 6'b000100;
        ADDI2  : opBits = 6'b000101;
        SUBI2  : opBits = 6'b000110;
        ANDI2  : opBits = 6'b000111;
        ORI2   : opBits = 6'b001000;
        MOV    : opBits = 6'b001001;
        S_REG1 : opBits = 6'b001010;
        S_REG2 : opBits = 6'b001011;
        S_MEM  : opBits = 6'b001100;
        L_MEM1 : opBits = 6'b001101;
        L_MEM2 : opBits = 6'b001111;
      endcase
   endfunction

    function logic [FUNC_SIZE - 1 : 0] funcBits;
      case (func)
        ADD  : funcBits = 11'b00000000001;
        SUB  : funcBits = 11'b00000000010;
        AND  : funcBits = 11'b00000000011;
        OR   : funcBits = 11'b00000000100;
        NOP  : funcBits = 11'b00000000000;
      endcase
   endfunction
endclass: transaction


class rtype_sequence extends uvm_sequence #(transaction);
    `uvm_object_utils(rtype_sequence)

    transaction tx;

    function new(string name= "");
        super.new(name);
    endfunction //new()

    task body();
        `uvm_info(get_type_name(), "RTYPE SEQ: Inside Body", UVM_LOW);
        tx = transaction::type_id::create("tx");
        start_item(tx);
        assert(tx.randomize());
        tx.opcode = RTYPE;
        finish_item(tx);
    endtask
endclass: rtype_sequence


class itype_sequence extends uvm_sequence #(transaction);
    `uvm_object_utils(itype_sequence)

    transaction tx;

    function new(string name= "");
        super.new(name);
    endfunction //new()

    task body();
        `uvm_info(get_type_name(), "ITYPE SEQ: Inside Body", UVM_LOW);
        tx = transaction::type_id::create("tx");
        start_item(tx);
        assert(tx.randomize());
        tx.func = NOP;
        finish_item(tx);
    endtask
endclass: itype_sequence



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
