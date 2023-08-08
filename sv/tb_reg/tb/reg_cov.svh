/***************************************************************************
*
* Title        : Register coverage
* Project      : Workshopc SoC Verification
****************************************************************************
* File         : reg_cov.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the class that contains covergroup
*                used in the testbench together with the methods for
*                measuring it
*
******************************************************************************/
`ifndef REG_COV_SVH_
`define REG_COV_SVH_

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
 class reg_cov
 #(
    parameter DWIDTH = 8
 );

    local virtual interface reg_if #(DWIDTH) locReg_if; /* Local interface */


    /**********************************************************************
    * Coverpoints
    **********************************************************************/

    covergroup reg_cg;
        data_in: coverpoint locReg_if.data_in
        {
            /* Corner values: first, last and last signed */
            bins corners[] = {0, (1<<DWIDTH)-1, (1<<(DWIDTH-1))-1};
            bins others    = default;
        }
        rst: coverpoint locReg_if.rst
        {
            bins zero = {0};
        }
    endgroup: reg_cg

    /**********************************************************************
    * Constructor
    **********************************************************************/
    function new(virtual interface reg_if #(DWIDTH) _if);
        locReg_if   = _if;
        reg_cg      = new();

        /* By defaul, the coverage is disabled. It is enabled in the tester */
        reg_cg.stop();
    endfunction

    /**********************************************************************
    * Methods
    **********************************************************************/

    /* Enable the coverage */
    function void cov_start();
        reg_cg.start();
    endfunction: cov_start

    /* Disable the coverage */
    function void cov_stop();
        reg_cg.stop();
    endfunction: cov_stop

    /* Sample the coverage of the covergroup */
    function void cov_sample();
        reg_cg.sample();
    endfunction: cov_sample

    /* Return the coverage as a real number */
    function real get_cov();
        return reg_cg.get_inst_coverage();
    endfunction: get_cov

 endclass
 `endif
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
 /* No modules needed */