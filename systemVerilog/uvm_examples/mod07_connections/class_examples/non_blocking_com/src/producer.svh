class producer extends uvm_agent;

  uvm_put_port  #(int) phone1;

  `uvm_component_utils(producer)

 
  function new(string name, 
               uvm_component parent);
    super.new(name, parent);
  endfunction: new

  function void build_phase(uvm_phase phase);
    super.build();
    phone1=new("phone1",this);
  endfunction: build_phase

  task run_phase(uvm_phase phase);
     phase.raise_objection(this);
     for (int i = 1; i<=nloops; i++) begin : loop
        #3ns;
        assert(phone1.try_put(i)) else
          uvm_report_fatal("run","producer not connected");
        uvm_report_info("run", $psprintf("put: %0d",i));
     end : loop
     phase.drop_objection(this);
  endtask : run_phase

endclass: producer

