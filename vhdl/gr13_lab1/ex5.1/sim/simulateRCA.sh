#!/bin/sh
setmentor 
vcom constants.vhd
vcom iv.vhd
vcom nd2.vhd
vcom lfsr.vhd
vcom fa.vhd
vcom rca_generic.vhd
vcom tb_rca_gen.vhd
vsim -do dofile.do
