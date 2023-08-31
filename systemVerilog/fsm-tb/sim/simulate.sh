#!/bin/sh

if [ -e "work" ]; then
    vdel -all
fi

vlib work

vcom -F compilevhdl.f
vlog -coveropt 3 +cover +acc -F compilesv.f


vsim -c -sv_seed random -do "sim.do" -do cov.do -voptargs="+acc" top -coverage +UVM_TESTNAME=test | tee report-sim.log
