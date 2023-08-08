/***************************************************************************
*
* Title        : RCA testbench top module
* Project      : Workshop SoC Verification
****************************************************************************
* File         : rca_tb.sv
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file implements the top module of the testbench for 
*                the RCA. It instantiate all the elements and provides to 
*                to tester objects a connection point to the DUT using 
*                the RCA interface described in rca_if.sv
* 
******************************************************************************/

/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
`include "rca_tester.svh"
`include "rca_verbose_tester.svh"

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

 module rca_tb;
    
    /* Data width of the test*/
    localparam DWIDTH       = 8;
    int unsigned num_cycles = 10;
    int unsigned err_num    = 0;
    
    rca_if             #(DWIDTH)   rcaInterface_inst();                      /* Instantiate the RCA interface    */
    rca_wrap           #(DWIDTH)   rcaWrap_inst(rcaInterface_inst.rca_port); /* Instantiate the RCA wrapper      */
    rca_tester         #(DWIDTH)   rcaTest_inst;                             /* Declare the test object          */
    rca_verbose_tester #(DWIDTH)   rcaTestVerb_inst;                         /* Declare the verbose test object  */ 


    /**************************************************************************
     * Test body
     *************************************************************************/ 

    initial begin

        rcaTest_inst     = new(rcaInterface_inst);
        rcaTestVerb_inst = new(rcaInterface_inst);

        // Set the number of cycles to test
        if (0 != $value$plusargs("n%d", num_cycles))
            $display("[CONFIG] Number of test cycles set to %0d", num_cycles);

        /* Run the test */
        $display("\nTEST #1 - Launching RCA quiet test...");
        rcaTest_inst.run_test(num_cycles);
        $display("TEST #1 - Test completed!");
        $display("TEST #1 - Functional coverage: %.2f%%", rcaTest_inst.get_cov());

        /* Run the verbose test */
        $display("\nTEST #2 - Launching RCA verbose test...");
        rcaTestVerb_inst.run_test(num_cycles);
        $display("TEST #2 - Test completed!");
        $display("TEST #2 - Functional coverage: %.2f%%", rcaTest_inst.get_cov());


        // Print functional coverage
        $display("\nTOTAL FUNCTIONAL COVERAGE: %.2f%%", rcaTest_inst.get_cov());

        // Print the number of errors
        err_num = rcaInterface_inst.get_err_num();
        $display("");
        if (err_num > 0) begin
            $error("### TEST FAILED with %0d errors", err_num);
        end else $display("### TEST PASSED!");




        /* Terminate the simulation */
        $display("");
        $stop;

    end
    
 endmodule