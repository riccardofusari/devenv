vsim work.tb_acc(test) -t 100ps -voptargs=+acc
add wave *
run 300 ns
