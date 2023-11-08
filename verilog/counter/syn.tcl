set clkname clock

set modname counter

set RTL_DIR ./

set type lecture

set report_default_significant_digits 4

read_verilog $RTL_DIR/counter.v

current_design $modname


#---------------------------------------------------------
#  LIBRARY
#---------------------------------------------------------

set synthetic_library [list dw_foundation.sldb]

set target_library osu018_stdcells_slow.db
set link_library [concat $target_library $synthetic_library]

#---------------------------------------------------------
# CONSTRAINTS
#---------------------------------------------------------

set CLK_PER 5
set CLK_SKEW 0.3

create_clock -name $clkname -period  $CLK_PER -waveform "o [expr $CLK_PER /2]" $clkname
set_clock_uncertainty $CLK_SKEW $clkname


# LOGIC MUST BE CONNECTED TO SOMETHING ELSE, WHICH WILL AFFECT ITS TIMING
# HERE WE SPECIFY WHAT THE SYNTHESIZE DESIGN IS CONNECTED TO AND ITS TIMING


# ASSUME being driven by a slowest d-ff. the dff cell has a clock-q delay of 353 ps. allow another 
# 100 ps for wiring delay at the input to design

set DFF_CKQ 0.353
set IP_DELAY [expr 0.1 + $DFF_CKQ]
set_input_delay $IP_DELAY -clock $clkname [remove_from_collection [all_inputs] $clkname]

# assume this module is driving a dff with a setup time of 919 ps. allow another 100ps for wiring

set DFF_SETUP 0.919
set OP_DELAY [expr 0.1 + $DFF_SETUP]
set_output_delay $OP_DELAY -clock $clkname [all_outputs]


SET dr_cell_name DFFPOSX1
set DR_CELL_PIN Q
set_driving_cell -lib_cell "$DR_CELL_NAME" -pin "$DR_CELL_PIN" [remove_from_collection [all_inputs] $clkname]


set PORT_LOAD_CELL osu018_std_cells_slow/DFFPOSX1/D
set WIRE_LOAD_EST 0.2
set FANOUT 4
set PORT_LOAD [expr $WIRE_LOAD_EST + $FANOUT * [load_of $PORT_LOAD_CELL]]
set_load $PORT_LOAD [all_outputs]



#---------------------------------------------------------
# AREA
#---------------------------------------------------------

#The goal is minimum area, so 0
set_max_area 0

set_fix_multiple_port_nets -all [get_design]

#the adder for example will be a black box cause it is behavioral and synopsys will use its designware library
#so you do flat the design in order to eliminate the hierarchy and break down instances into individual components
#for further optimization
#is the same as ungroup -all -flatten
replace_synthetic -ungroup

check_design

link

#logic optimization. the map effort specifies how much optimization effort there is
compile -map_effort medium

report_timing > timing_max_slow.rpt


# This was to check if there is any setup time violations
# Now for checking if there is any hold time violations
# you need to specify the fastest process corner and lowest temperature and highest Vcc

# Translate the library
set target_library osu018_stdcells_fast.db
set link_library osu018_stdcells_slow.db
translate

# Design rule, check hold violations
set_fix_hold clock
compile -only_design_rule -incremental


report_timing -delay min > timing_min_fast_holdcheck.rpt

write_sdf counter_min.sdf


#Now that the hold violations are fixed by synopsys, we have to check again the setup violation

set target_library osu018_stdcells_slow.db
set link_library osu018_stdcells_fast.db
translate

report_timing > timing_max_slow_holdfixed.rpt

report_cell > cell_report_final

change_names -rules verilog -hierarchy > fixed_names_init
write -hierarchy -f verilog -o counter_final.v

write_sdf counter_max.sdf


