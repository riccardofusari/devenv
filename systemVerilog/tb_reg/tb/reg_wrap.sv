/***************************************************************************
*
* Title        : General register testbench wrapper
* Project      : Workshop SoC verification
****************************************************************************
* File         : reg_wrap.sv
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file implements a simple wrapper to use the interface
*                of the RCA testbench, useful for mixed VHDL designs - Systemverilog
*                testbenches.        
* 
******************************************************************************/


/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
 /* No includes needed*/

/*******************************************************************************
 * PACKAGES
 ******************************************************************************/
 /* No packages needed*/

/*******************************************************************************
 * DEFINES
 ******************************************************************************/
 /* No defines needed*/

 /*******************************************************************************
 * TYPEDEFS / GLOBAL VARIABLES
 ******************************************************************************/
/* No typedefs needed*/

/*******************************************************************************
 * CLASSES / FUNCTIONS
 ******************************************************************************/
 /* No classes needed */
 
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
module reg_wrap 
#(
   parameter DWIDTH = 32
) 
(
   reg_if.reg_port regPort
);

   reg_dut #(DWIDTH) reg_u 
   (
      .data_in_i  (regPort.data_in),
      .data_out_i (regPort.data_out),
      .clk_i      (regPort.clk),
      .rst_i      (regPort.rst)
   );

endmodule