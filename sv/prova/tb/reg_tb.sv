/***************************************************************************
*
* Title        : Register testbench top module
* Project      : Workshop SoC Verification
****************************************************************************
* File         : reg_tb.sv
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file implements the top module of the testbench for
*                the general register. It instantiate all the elements and
*                provides to tester objects a connection point to the DUT using
*                the register interface described in reg_if.sv
*
******************************************************************************/


/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
`include "reg_tester.svh"
`include "reg_verbose_tester.svh"

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
module reg_tb;

    /* Data width of the test*/
    localparam DWIDTH       = 8;
    int unsigned num_cycles = 10;
    int unsigned err_num    = 0;

    reg_if             #(DWIDTH)   regInterface_inst();  /* Instantiate the register interface    */
    reg_wrap           #(DWIDTH)   regWrap_inst(regInterface_inst.reg_port);  /* register wrapper */
    reg_tester         #(DWIDTH)   regTest_inst;         /* Declare the test object               */
    reg_verbose_tester #(DWIDTH)   regTestVerb_inst;     /* Declare the verbose test object       */

    /**************************************************************************
     * Test body
     *************************************************************************/

    initial begin

        regTest_inst     = new(regInterface_inst);
        regTestVerb_inst = new(regInterface_inst);

        // Set the number of cycles to test
        if (0 != $value$plusargs("n%d", num_cycles))
            $display("[CONFIG] Number of test cycles set to %0d", num_cycles);

        /* Run the test */
        $display("\nTEST #1 - Launching reg quiet test...");
        regTest_inst.run_test(num_cycles);
        $display("TEST #1 - Test completed!");
        $display("TEST #1 - Functional coverage: %.2f%%", regTest_inst.get_cov());

        /* Run the verbose test */
        $display("\nTEST #2 - Launching reg verbose test...");
        regTestVerb_inst.run_test(num_cycles);
        $display("TEST #2 - Test completed!");
        $display("TEST #2 - Functional coverage: %.2f%%", regTest_inst.get_cov());


        // Print functional coverage
        $display("\nTOTAL FUNCTIONAL COVERAGE: %.2f%%", regTest_inst.get_cov());

        // Print the number of errors
        err_num = regInterface_inst.get_err_num();
        $display("");
        if (err_num > 0) begin
            $error("### TEST FAILED with %0d errors", err_num);
        end else $display("### TEST PASSED!");

        /* Terminate the simulation */
        $display("");
        $stop;

    end
endmodule
