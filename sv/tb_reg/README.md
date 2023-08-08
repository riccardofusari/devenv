# General Register Testbench

For running the test in your local pc you can use the script ./sim/serverSim.sh. Be sure to put your server username, password and port in it (high level security, I know..) Be also sure to have `sshpass` installed.

```bash
#################################################################################
# SSH Settings
#################################################################################

ssh_username="<here>"
ssh_password="<here>"
ssh_port="<here>"
server_address="led-x3850-2.polito.it"

```
For checking the correct script usage hit
```bash
./sim/serverSim.sh --help
```
For running the test directly in the server you can run the script 

```bash
./sim/simulate.sh
```

This script will launch the others script and it will create the report-cov.log and the report-sim.log.