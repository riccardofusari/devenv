/***************************************************************************
*
* Title        : SystemVerilog assertion reg DUT
* Project      : Workshopc SoC Verification
****************************************************************************
* File         : reg_if_sva.svh
* Author       : Riccardo Fusari
*
****************************************************************************
* Description  : This file contains the SVAs to verify that the register
*                is producing the correct result.
*
******************************************************************************/
`ifndef REG_IF_SVA_SVH_
`define REG_IF_SVA_SVH_

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
`define PRINT_OP(datain, dataout, reset) \
    $sformatf("data in: %08b (%d) | data out: %08b (%d) | reset: %02b ", $past(data_in), $past(data_in), $past(data_out), $past(data_out), $past(reset))


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

/* Reset property */
property reset_p;
    @(posedge clk or negedge rst)
    !rst |-> ##1 data_out == 'h0
endproperty

/* Data out property */
property dataout_p;
    @(negedge clk) disable iff (!rst)
    ##1 data_out == $past(data_in);
endproperty


a_reset: assert property (reset_p)
else begin
    err_num++;
    $error("RESET ASSERTION: %s", `PRINT_OP($past(data_in), data_out, $past(rst)));
end

result_a: assert property (dataout_p)
else begin
    err_num++;
    $error("DATA ASSERTION: %s", `PRINT_OP($past(data_in), data_out, $past(rst)));
end
`endif
 /*******************************************************************************
 * MODULE/INTERFACE
 ******************************************************************************/ 
 /* No modules needed */
