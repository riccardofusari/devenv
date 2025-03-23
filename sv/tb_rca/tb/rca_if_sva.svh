/***************************************************************************
*
* Title        : System Verilog Assertion RCA DUT
* Project      : Workshop SoC verification
****************************************************************************
* File         : rca_sva.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the SVAs to verify that the RCA is producing
*                the correct result.
* 
******************************************************************************/
`ifndef RCA_IF_SVA_SVH_
`define RCA_IF_SVA_SVH_

/*******************************************************************************
 * INCLUDES
 ******************************************************************************/
 /* No includes needed */

/*******************************************************************************
 * PACKAGES
 ******************************************************************************/
 /* No packages needed */

/*******************************************************************************
 * DEFINES
 ******************************************************************************/
`define PRINT_OP(a, b, cin, cout, res) \
    $sformatf(" a: %08b (%d) | b: %08b (%d) | cin: %08b | cout: %08b | res: %08b (%d)", a, a, b, b, cin, cout, res, res)

/*******************************************************************************
 * TYPEDEFS / GLOBAL VARIABLES
 ******************************************************************************/

int unsigned err_num = 0;

 /*******************************************************************************
 * CLASSES / FUNCTIONS
 ******************************************************************************/

/* Function used for returning the number of error and then reset them*/
function int unsigned get_err_num();
    automatic int unsigned tmp = err_num;
    err_num = 0;
    return tmp;
endfunction: get_err_num


property p_result;

    @(negedge clk)
    disable iff (flag == 0) @(rca_a or rca_b) rca_res == rca_a + rca_b + rca_cin;
endproperty


rca_result: assert property (p_result)
    else begin
        err_num++;
        $error("%s", `PRINT_OP(rca_a,rca_b,rca_cin,rca_cout,rca_res));
    end

`endif 
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
 /* No modules needed */