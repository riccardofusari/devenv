class subscriber extends uvm_subscriber;
    `uvm_component_utils(my_subscriber)

    /*bit cmd;
    int addr;
    int data;

    covergroup cover_bus;
      coverpoint cmd;
      coverpoint addr { 
        bins a[16] = {[0:255]};
      }
      coverpoint data {
        bins d[16] = {[0:255]};
      }
    endgroup: cover_bus*/

    function new(string name, uvm_component parent);
        super.new(name, parent);
        /*cover_bus = new;*/
    endfunction //new()
endclass //subscriber extends uvm_subscriber