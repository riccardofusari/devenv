/***************************************************************************
*
* Title        : RCA testbench wrapper
* Project      : Workshop SoC Verification
****************************************************************************
* File         : rca_wrap.sv
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file implements a simple wrapper to use the interface 
*                of the RCA testbench, useful for mixed VHDL designs - Systemverilog
*                testbenches
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
 * CLASSES
 ******************************************************************************/
 /* No classes needed*/
 
/*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 

module rca_wrap 
#(
    parameter DWIDTH = 32
)
(
    rca_if.rca_port port        /* Receives the interface port mapping as input parameter*/
);
    /* rca is the VHDL design as well as the left data are the VHDL design ports*/
    rca #(DWIDTH) rca_u 
    (
        .a      (port.rca_a),
        .b      (port.rca_b),
        .cin    (port.rca_cin),
        .sum    (port.rca_res),
        .cout   (port.rca_cout)
    );
endmodule
