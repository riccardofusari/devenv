/***************************************************************************
*
* Title        : RCA testbench interface
* Project      : Workshop SoC Verification
****************************************************************************
* File         : rca_if.sv
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file implements the interface of the RCA testbench
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
 /* No classes needed*/
 
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 

interface rca_if 
#(
    parameter DWIDTH = 32
);

    /* Interface signals */
    logic [DWIDTH-1:0] rca_a;
    logic [DWIDTH-1:0] rca_b;
    logic [DWIDTH-1:0] rca_res;
    logic              rca_cin;
    logic              rca_cout;
    logic              clk;
    logic              flag;


    /* Interface signals mode mapping   */

    /* Interface port at rca side (DUT) */

    modport rca_port (
        input  rca_a,
        input  rca_b,
        input  rca_cin,
        output rca_res,
        output rca_cout
    );


    /* Clock Init and generation*/

    initial begin: init
        clk  = 1'b0;
        flag = 1'b0;
    end

    always #5ns begin: clk_gen
        clk = ~clk;
        flag = 1'b1;
    end

    `ifndef SYNTHESIS
    `include "rca_if_sva.svh"
    `endif /* SYNTHESIS */

endinterface