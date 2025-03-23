/***************************************************************************
*
* Title        : Register tester class
* Project      : Workshop SoC verification
****************************************************************************
* File         : reg_tester.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the class of the test with constraints
*                distribution
*
******************************************************************************/
`ifndef REG_TESTER_SVH_
`define REG_TESTER_SVH_

/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
`include "reg_cov.svh"

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

 class reg_tester
 #(
    parameter DWIDTH = 32
 );

    /* Input's structure */
    typedef struct packed {
        logic [DWIDTH-1:0] data_in;
        logic              clk;
        logic              rst;
    } regInput_t;


    virtual interface reg_if #(DWIDTH) testerIf;
    protected rand regInput_t          regStimuli;
    protected static reg_cov #(DWIDTH) regCov;

    /***************************************************************************
    * Constraints
    ****************************************************************************/

    constraint data_dist_c
    {
        regStimuli.data_in dist
        {
            0                   := 10,
            (1<<DWIDTH)-1       := 10,    /* Maximum data        */
            (1<<(DWIDTH-1))-1   := 10,    /* Maximum signed data */
            [1:(1<<DWIDTH)-2]   := 1      /* Range               */
        };

        regStimuli.rst dist
        {
            0                  := 1,
            1                  := 10
        };
    };

    /**********************************************************************
    * Constructor
    **********************************************************************/
    function new
    (
        virtual interface reg_if #(DWIDTH) _if
    );
        testerIf = _if;       /* Get the handle of the interface from the top testbench file */
        regCov   = new(_if);  /* Instantiate the coverage object */
    endfunction

    /**********************************************************************
    * Methods
    **********************************************************************/

    /* Initialization method */
    protected task init();

        testerIf.data_out = '0;
        testerIf.data_in  = '0;
        testerIf.rst_dut();

        @(posedge testerIf.clk);
    endtask: init


    /* Function that produces random stimuli */
    function void rca_rand_stim();
        /* Uses the randomize method for this object and asserts the return value*/
        randomizeStim: assert (this.randomize())
            else $error("Assertion randomizeStim failed!");

        testerIf.data_in   = regStimuli.data_in;
        testerIf.rst       = regStimuli.rst;

        /* Update the coverage with the new values */
        regCov.cov_sample();
    endfunction


     /* Method for running the test */
    task run_test(int unsigned numCycles);
        /* Initialize the DUT by resetting data */
        init();
        /* Enable the coverage */
        regCov.cov_start();
        /* Randomize input for numCycles times */
        repeat (numCycles) begin: driver
            @(posedge testerIf.clk);
            rca_rand_stim();
        end
        /* Wait for the last operation to complete */
        @(posedge testerIf.clk);
        /* Disable coverage */
        regCov.cov_stop();
    endtask



    // Get the ALU coverage
    function real get_cov();
        return regCov.get_cov();
    endfunction: get_cov
 endclass
 `endif
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/
 /* No modules needed */
