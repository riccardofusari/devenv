#!/bin/sh

if [ -e "work" ]; then
    vdel -all
fi

vlib work

vcom -F compilevhdl.f
vlog -F compilesv.f


vsim -c -sv_seed random -do "sim.do" -voptargs="+acc" tb_top +UVM_TESTNAME=test
