if [file exists work] {vdel -all}
vlib work
vlog -f compile.f

#Here you specify the string 
#that UVM will use for instantiate the top hierarchy object
#Starting from top.sv, and using the factory
vsim  top +UVM_TESTNAME=verbose_test
set  NoQuitOnFinish 1
onbreak {resume}
run -all
vsim  top +UVM_TESTNAME=quiet_test
run -all
quit

