import rf_parameters::*;

class data_packet extends uvm_sequence_item;

    rand logic rst;
    rand logic enable;
    rand logic rd1;
    rand logic rd2;
    rand logic wr;
    rand logic call;
    rand logic sigreturn;
    rand logic fill;
    rand logic spill;
    rand logic [ADDR_SIZE-1:0] add_wr;
    rand logic [ADDR_SIZE-1:0] add_rd1;
    rand logic [ADDR_SIZE-1:0] add_rd2;
    rand logic [NBITS-1 : 0] data_in;
    rand logic [NBITS-1 : 0] out1;
    rand logic [NBITS-1 : 0] out2;
    rand logic [NBITS-1 : 0] mem_bus;


    `uvm_object_utils_begin(data_packet)
        `uvm_field_int(rst,         UVM_DEFAULT)
        `uvm_field_int(enable,      UVM_DEFAULT)
        `uvm_field_int(rd1,         UVM_DEFAULT)
        `uvm_field_int(rd2,         UVM_DEFAULT)
        `uvm_field_int(wr,          UVM_DEFAULT)
        `uvm_field_int(call,        UVM_DEFAULT)
        `uvm_field_int(sigreturn,   UVM_DEFAULT)
        `uvm_field_int(fill,        UVM_DEFAULT)
        `uvm_field_int(spill,       UVM_DEFAULT)
        `uvm_field_int(add_wr,      UVM_DEFAULT)
        `uvm_field_int(add_rd1,     UVM_DEFAULT)
        `uvm_field_int(add_rd2,     UVM_DEFAULT)
        `uvm_field_int(data_in,     UVM_DEFAULT)
        `uvm_field_int(out1,        UVM_DEFAULT)
        `uvm_field_int(out2,        UVM_DEFAULT)
        `uvm_field_int(mem_bus,     UVM_DEFAULT)
    `uvm_object_utils_end


    function new(string name = "data_packet");
        super.new(name);
    endfunction: new

    virtual task displayAll();
        //`uvm_info("DP", $sformatf("cf = %0h enable = %0h data_in1 = %0h data_in2 = %0h data_out1 = %0h data_out2 = %0h delay = %0h", cf, enable, data_in1, data_in2, data_out1, data_out2, delay), UVM_LOW)
    endtask: displayAll
  
endclass: data_packet