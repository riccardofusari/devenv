#!/usr/bin/env sh


analyze -library WORK -format vhdl {constants.vhd alu_type.vhd alu_1.vhd}

elaborate ALU -architecture behavior -library WORK 

compile -exact_map

gui_start
