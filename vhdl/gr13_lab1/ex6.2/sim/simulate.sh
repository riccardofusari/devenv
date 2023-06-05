#!/bin/sh
vcom constants.vhd
vcom iv.vhd
vcom nd2.vhd
vcom mux21.vhd
vcom mux21generic.vhd
vcom fa.vhd
vcom rca_generic.vhd
vcom fd.vhd
vcom reg_generic.vhd
vcom acc.vhd
vcom tb_acc.vhd
vsim -do dofile.do   
