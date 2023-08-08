import uvm_pkg::*;
import memory_pkg::*;

module top;

   memory_if mi();
   memory dut (mi.mem_mp);

   initial begin
      memory_pkg::global_mif = mi;
      /*That method uses the factory of uvm*/
      run_test();
   end

endmodule: top



