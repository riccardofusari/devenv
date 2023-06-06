#!/bin/bash
# Check if the user requests help
if [[ "$1" == "--help" ]]; then
  echo "Usage: $0 <local_folder> <remote_folder> <simulation_script_name>"
  echo
  echo "This script synchronizes the local repository with the remote repository on the server using rsync"
  echo "and then executes a simulation script on the remote server."
  echo "It retrieves the simulation output file from the remote server and copies it to the local folder."
  echo
  echo "Example:"
  echo "  $0 /path/to/local/folder   /path/to/remote/folder simulation_script_name"
  echo "  $0 /home/riccardo/folder   /remotefolder          simulate.sh" 
  exit 0
fi

# Check if both local and remote folder paths are provided
if [ $# -lt 3 ]; then
  echo "Error: Missing arguments."
  echo "Usage: $0 <local_folder_full_path> <remote_folder_relative_path> <simulation_script_name>"
  echo "$0 --help for more information"
  exit 1
fi

local_folder="$1"
remote_folder="/home/2023-socv-6/git/$2"
remote_script="$3"
output_file="report.log"

#####################################################################################
# SSH Settings
#####################################################################################

ssh_username="2023-socv-6"
ssh_password="qxmeemt8"
ssh_port="10036"
server_address="led-x3850-2.polito.it"

#####################################################################################
# Folders Settings
#####################################################################################

# Sync local folder with server
rsync -avz --delete -e "sshpass -p $ssh_password ssh -p $ssh_port" $local_folder/ $ssh_username@$server_address:$remote_folder/
# Execute script on server and retrieve output file
sshpass -p $ssh_password ssh -p $ssh_port  $ssh_username@$server_address "source /eda/scripts/init_questa_core_prime && cd $remote_folder/sim && ./simulate.sh > $output_file "
sshpass -p $ssh_password scp -P $ssh_port $ssh_username@$server_address:$remote_folder/sim/$output_file $local_folder/


