#!/bin/sh

# Exit immediately if any command fails
set -e


if [ -e "work" ]; then
    vdel -all
fi

vlib work


vlog -sv ../tb/top.sv
vsim top -do "sim.do"
