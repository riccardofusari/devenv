#!/bin/sh
vcom alu_type.vhd
vcom alu.vhd
vcom tb_alu.vhd
vsim -do dofile.do
