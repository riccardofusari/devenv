#!/bin/sh
vdel -all
vlib work
vcom alu_type.vhd
vcom alu_1.vhd
vcom tb_alu.vhd
vsim -do dofile.do
