/***************************************************************************
*
* Title        : Register testbench interface
* Project      : Workshop SoC verification
****************************************************************************
* File         : reg_if.sv
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file implement the interface of the testbench
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
 interface reg_if
 #(
    parameter DWIDTH = 32
 );

    /* Interface signals */
    logic [DWIDTH-1:0] data_in;
    logic [DWIDTH-1:0] data_out;
    logic              clk;
    logic              rst;
    

    /* Interface port at register side (DUT) */
    modport reg_port (
        input  data_in,
        input  clk,
        input  rst,
        output data_out
    );

/******************************************************************************
* Init, clock generation and reset
*******************************************************************************/

    /* Init the clock and the reset */
    initial begin: init
        clk   = 1'b1;
        rst   = 1'b1;
    end

    /* Clock generation */
    always #5ns begin: clk_gen
        clk = ~clk;
    end

    /* Reset the register*/
    task rst_dut();
        @(negedge clk);
        rst   = 1'b0;
        @(negedge clk);
        rst   = 1'b1;
    endtask

    // ----------
    // ASSERTIONS
    // ----------
    `ifndef SYNTHESIS
    `include "reg_if_sva.svh"
    `endif /* SYNTHESIS */


 endinterface
