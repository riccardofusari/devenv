#!/bin/sh

if [ -e "work" ]; then
    vdel -all
fi

vlib work

vcom -F compilevhdl.f
vlog -F compilesv.f
#
#
#vsim -c -sv_seed random -do "sim.do" -voptargs="+acc" tb_top -coverage +UVM_TESTNAME=test

vsim -c -sv_seed random   -do sim.do -voptargs="+acc" +UVM_TESTNAME=test tb_top -do cov.do | tee report-sim.log