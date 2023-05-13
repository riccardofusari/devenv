#!/usr/bin/env sh

# Exit immediately if any command fails
set -e

vcom constants.vhd
vcom registerfile.vhd
vcom tb_registerfile.vhd

vsim -do dofileREG.do
