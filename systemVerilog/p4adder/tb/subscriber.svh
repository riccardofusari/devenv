class subscriber extends uvm_subscriber #(transaction);
  `uvm_component_utils(subscriber)

  logic cin;
  logic [NBITS - 1 : 0] a;
  logic [NBITS - 1 : 0] b;


  covergroup cg;
    /* Carry input coverpoint */
    carry_in: coverpoint cin 
    {
        bins zero = {0};
        bins one  = {1};
    }

    a_cp: coverpoint a
    {
        /* Corner values: first, last and last signed */
        bins corners[] = {0, (1<<NBITS)-1, (1<<(NBITS-1))-1};
        bins others    = default;
    }

    b_cp: coverpoint b
    {
        /* Corner values: first, last and last signed */
        bins corners[] = {0, (1<<NBITS)-1, (1<<(NBITS-1))-1};
        bins others    = default;
    }
  endgroup: cg


  function new(string name, uvm_component parent);
    super.new(name, parent);
    cg = new;
  endfunction


  function void write(transaction t);  
    `uvm_info("mg", $psprintf("Subscriber received tx %s", t.convert2string()), UVM_NONE);

    a   = t.a;
    b   = t.b;
    cin = t.cin;
    cg.sample();

  endfunction: write


endclass //subscriber extends uvm_subscriber