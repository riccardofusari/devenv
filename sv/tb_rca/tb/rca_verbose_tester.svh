/***************************************************************************
*
* Title        : RCA testbench verbose tester
* Project      : Workshop SoC Verification
****************************************************************************
* File         : rca_verbose_tester.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the child class used for testing of the RCA
*                and print additional information
******************************************************************************/
`ifndef RCA_VERBOSE_TESTER_SVH_
`define RCA_VERBOSE_TESTER_SVH_


/*******************************************************************************
 * INCLUDES
 ******************************************************************************/

`include "rca_tester.svh"

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

/* Extended class of the rca_tester */
class rca_verbose_tester
#(
    parameter DWIDTH = 32
) extends rca_tester #(DWIDTH);

    /* Queue */
    rcaInput_t queueIn[$];

    /**********************************************************************
    * Constructor
    **********************************************************************/
    function new(virtual interface rca_if #(DWIDTH) _if);
        /* Use the same constructor of the parent class*/
        super.new(_if);
        /* Initialize the array to an empty state*/
        queueIn = {};
    endfunction

    /* Method for actually run the test. This overrides the original run_test of the parent class*/
    task run_test(int unsigned numCycles);
        /* Initialize the DUT by resetting data */
        init();
        /* Enable the coverage */
        rcacov.cov_start();
        /* Randomize input for numCycles times */

        /* Main process: fork this processes in parallel and wait until all of them finish */
        fork
            /* First thread: monitor operations */
            monitor();
            /* Second thread: driver stimuli */
            repeat (numCycles) begin: driver
                @(posedge test_if.clk);
                rca_rand_stim();
                /* Creating a temporary rcaInput_t structure using values from 
                 * rcaStimuli and push that on queueIn */
                //stampare la struttura

                queueIn.push_front({rcaStimuli});
            end
        join

        /* Disable coverage */
        rcacov.cov_stop();
    endtask

    /* Print the operations */
    task monitor();
        rcaInput_t previousOperands;

        /*This is used for avoid the first result after reset */
        repeat (2) @(negedge test_if.clk);

        //$display("queue size : %d", queueIn.size());

        while (queueIn.size() > 0) begin
            /* Sample on negative edge */
            @(negedge test_if.clk);
            previousOperands = queueIn.pop_back();
            //$display("[%07t] | a: %b (%d) | b: %b (%d) | res: %b (%d)", $time, previousOperands.a, previousOperands.a, previousOperands.b, previousOperands.b, test_if.rca_res, test_if.rca_res);
            $display("[%07t] | a: %b (%d) | b: %b (%d) | res: %b (%d) | cin: %b | cout: %b", 
                     $time, rcaStimuli.a, $signed(rcaStimuli.a), rcaStimuli.b, $signed(rcaStimuli.b),
                     test_if.rca_res, $signed(test_if.rca_res), rcaStimuli.cin, test_if.rca_cout);

        end

    endtask

endclass

`endif
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
 /* No modules needed */