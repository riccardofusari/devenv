#log /* -r
#run -all
#coverage save perch.ucdb
#vcover report perch.ucdb -cvg -details
puts "\n########## SIMULATION STARTS ##########\n"
run -all
puts "\n##########  SIMULATION ENDS  ##########\n"
#do cov.do


exit
