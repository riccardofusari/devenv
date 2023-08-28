package seq_pkg;
    `include "uvm_macros.svh"
    import uvm_pkg::*;

    class transaction extends uvm_sequence_item;
        `uvm_object_utils(transaction)
        localparam NBITS      = 32;

        /* Input's structure */
        typedef struct packed
        {
            logic [NBITS-1:0] a;
            logic [NBITS-1:0] b;
            logic             cin;
        } addInput_t;

        logic [NBITS - 1 : 0] sum_dut;
        logic [NBITS - 1 : 0] sum_tb;
        logic                 cout;

        rand addInput_t stimuli;    /* Pseudo random input stimuli         */

        /* Distribution of the input operands by probability     */
        constraint stimuli_distribution_c
        {
            stimuli.a dist
            {
                0                  := 10,
                (1<<NBITS)-1       := 10,    /* Maximum data        */
                (1<<(NBITS-1))-1   := 10,    /* Maximum signed data */
                [1:(1<<NBITS)-2]   := 1      /* Range               */
            };

            stimuli.b dist 
            {
                0                  := 10,
                (1<<NBITS)-1       := 10,    /* Maximum data        */
                (1<<(NBITS-1))-1   := 10,    /* Maximum signed data */
                [1:(1<<NBITS)-2]   := 1      /* Range               */
            };
        };


        function new(string name = "");
            super.new(name);
        endfunction
        
    endclass: transaction


    class base_seq extends uvm_sequence #(transaction);
        transaction tx;

        `uvm_object_utils(base_seq)


        function new(string name= "");
            super.new(name);
        endfunction //new()

        task body();
            //forever begin
                `uvm_info(get_type_name(), "Base seq: Inside Body", UVM_LOW);
                `uvm_do(tx);

                //transaction tx;
//
                //tx = transaction::type_id::create("tx");
                //start_item(tx);
                //assert(tx.randomize());
                //finish_item(tx);
            //end
        endtask
    endclass: base_seq


    class seqcr extends uvm_sequencer#(transaction);
        `uvm_component_utils(seqcr)

        function new(string name = "seqcr", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
        endfunction
    endclass: seqcr


endpackage