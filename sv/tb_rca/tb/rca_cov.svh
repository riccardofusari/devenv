/***************************************************************************
*
* Title        : RCA coverage
* Project      : Workshop SoC Verification
****************************************************************************
* File         : rca_cov.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the class used for testing of the RCA 
* 
******************************************************************************/
`ifndef ALU_COV_SVH_
`define ALU_COV_SVH_

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

class rca_cov #(
    parameter DWIDTH = 8
);

    local virtual interface rca_if #(DWIDTH) locRca_if;  /* Local interface of rca_if type */

    /**********************************************************************
    * Coverpoints
    **********************************************************************/
    covergroup rca_cg;
        /* Carry input coverpoint */
        carry_in: coverpoint locRca_if.rca_cin 
        {
            bins zero = {0};
            bins one  = {1};
        }

        a_cp: coverpoint locRca_if.rca_a
        {
            /* Corner values: first, last and last signed */
            bins corners[] = {0, (1<<DWIDTH)-1, (1<<(DWIDTH-1))-1};
            bins others    = default;
        }

        b_cp: coverpoint locRca_if.rca_b
        {
            /* Corner values: first, last and last signed */
            bins corners[] = {0, (1<<DWIDTH)-1, (1<<(DWIDTH-1))-1};
            bins others    = default;
        }
    endgroup: rca_cg

    /**********************************************************************
    * Constructor
    **********************************************************************/
    function new(virtual interface rca_if #(DWIDTH) _if);
        locRca_if   = _if;
        rca_cg      = new();

        /* By defaul, the coverage is disabled. It is enabled in the tester */
        rca_cg.stop();
    endfunction

    /**********************************************************************
    * Methods
    **********************************************************************/

    /* Enable the coverage */    
    function void cov_start();
        rca_cg.start();
    endfunction: cov_start

    /* Disable the coverage */
    function void cov_stop();
        rca_cg.stop();
    endfunction: cov_stop

    /* Sample the coverage of the covergroup */
    function void cov_sample();
        rca_cg.sample();
    endfunction: cov_sample

    /* Return the coverage as a real number */
    function real get_cov();
        return rca_cg.get_inst_coverage();
    endfunction: get_cov


endclass


`endif /* ALU_COV_SVH_ */
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
