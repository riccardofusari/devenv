/***************************************************************************
*
* Title        : Register tester class verbose
* Project      : Workshop SoC verification
****************************************************************************
* File         : reg_verbose_tester.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the verbose class of the test with constraints
* 
******************************************************************************/
`ifndef REG_VERBOSE_TESTER_SVH_
`define REG_VERBOSE_TESTER_SVH_


/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
`include "reg_tester.svh"

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
 class reg_verbose_tester
 #(
    parameter DWIDTH = 32
 ) extends reg_tester #(DWIDTH);

    /* Inputs queue*/
    regInput_t queueIn[$];

    function new(virtual interface reg_if #(DWIDTH) _if);
        super.new(_if);
        queueIn = {};
    endfunction

    task run_test(int unsigned numCycles);
        /* Initialize the DUT by resetting data */
        init();
        /* Enable the coverage */
        regCov.cov_start();
        /* Randomize input for numCycles times */

        /* Main process: fork this processes in parallel and wait until all of them finish */
        fork
            /* First thread: monitor operations */
            monitor();
            /* Second thread: driver stimuli */
            repeat (numCycles) begin: driver
                @(posedge testerIf.clk);
                rca_rand_stim();
                /* Creating a temporary rcaInput_t structure using values from 
                 * rcaStimuli and push that on queueIn */
                //stampare la struttura

                queueIn.push_front({regStimuli});
            end
        join

        /* Disable coverage */
        regCov.cov_stop();
    endtask


    /* Print the operations */
    task monitor();
        regInput_t prevOp;

        /*This is used for avoid the first result after reset */
        repeat (2) @(negedge testerIf.clk);

        while (queueIn.size() > 0) begin
            /* Sample on negative edge */
            @(negedge testerIf.clk);
            prevOp = queueIn.pop_back();
            //$display("[%07t] | a: %b (%d) | b: %b (%d) | res: %b (%d)", $time, previousOperands.a, previousOperands.a, previousOperands.b, previousOperands.b, test_if.rca_res, test_if.rca_res);
            $display("[%07t] | data in: %b (%d) | data out: %b (%d) | reset: %01b", 
                      $time, prevOp.data_in, prevOp.data_in, testerIf.data_out, testerIf.data_out, 
                      prevOp.rst);
        end

    endtask

 endclass

 `endif
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
 /* No modules needed */
