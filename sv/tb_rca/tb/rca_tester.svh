/***************************************************************************
*
* Title        : RCA testbench tester
* Project      : Workshop SoC Verification
****************************************************************************
* File         : rca_tester.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the class used for testing of the RCA 
* 
******************************************************************************/
`ifndef ALU_TESTER_SVH_
`define ALU_TESTER_SVH_

/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
`include "rca_cov.svh"

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


/*******************************************************************************
 * CLASSES  / FUNCTIONS
 ******************************************************************************/
class rca_tester
#(
    parameter DWIDTH = 32
);

    /* Input's structure */
    typedef struct packed
    {
        logic [DWIDTH-1:0] a;
        logic [DWIDTH-1:0] b;
        logic              cin;
    } rcaInput_t;


    virtual interface rca_if #(DWIDTH) test_if;       /* Local interface of rca_if type      */
    protected rand rcaInput_t          rcaStimuli;    /* Pseudo random input stimuli         */
    protected static rca_cov #(DWIDTH) rcacov;        /* Declaration of the coverage object  */

    /**********************************************************************
    * Constraints
    **********************************************************************/
    /* Distribution of the input operands by probability     */
    constraint stimuli_distribution_c
    {
        rcaStimuli.a dist
        {
            0                   := 10,
            (1<<DWIDTH)-1       := 10,    /* Maximum data        */
            (1<<(DWIDTH-1))-1   := 10,    /* Maximum signed data */
            [1:(1<<DWIDTH)-2]   := 1      /* Range               */
        };

        rcaStimuli.b dist 
        {
            0                   := 10,
            (1<<DWIDTH)-1       := 10,    /* Maximum data        */
            (1<<(DWIDTH-1))-1   := 10,    /* Maximum signed data */
            [1:(1<<DWIDTH)-2]   := 1      /* Range               */
        };
    };


    /**********************************************************************
    * Constructor
    **********************************************************************/
    function  new
    (
        virtual interface rca_if #(DWIDTH) _if
    );
        /* Get the handle of the interface from the top testbench file */
        test_if = _if;
        /* Instantiate the coverage object */
        rcacov = new(_if);
    endfunction

    /**********************************************************************
    * Methods
    **********************************************************************/

    /* Initialization method */
    protected task init();

        test_if.rca_a = '0;
        test_if.rca_b = '0;
        test_if.rca_cin = '0;
        test_if.rca_res = '0;

        @(posedge test_if.clk);
    endtask: init

    /* Function that produces random stimuli */
    function void rca_rand_stim();
        /* Uses the randomize method for this object and asserts the return value*/
        randomizeStim: assert (this.randomize())
            else $error("Assertion randomizeStim failed!");

        test_if.rca_a   = rcaStimuli.a;
        test_if.rca_b   = rcaStimuli.b;
        test_if.rca_cin = rcaStimuli.cin;

        /* Update the coverage with the new values */
        rcacov.cov_sample();
    endfunction


    /* Method for running the test */
    task run_test(int unsigned numCycles);
        /* Initialize the DUT by resetting data */
        init();
        /* Enable the coverage */
        rcacov.cov_start();

        /* Randomize input for numCycles times */
        repeat (numCycles) begin: driver
            @(posedge test_if.clk);
            rca_rand_stim();
        end
        @(posedge test_if.clk);
        /* Disable coverage */
        rcacov.cov_stop();
    endtask

    /* Get the rca coverage. The method is repeated here becase is used by the top testbench */
    function real get_cov();
        return rcacov.get_cov();
    endfunction

endclass

`endif /* ALU_TESTER_SVH_ */


/*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
