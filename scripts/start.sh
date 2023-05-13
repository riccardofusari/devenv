#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <lab number> <number of exercises>"
  exit 1
fi

# Get arguments from command line
exercises=$2
lab=$1

# Create lab directory
mkdir -p "lab${lab}"

# Create exercise directories
for i in $(seq 1 "${exercises}")
do
    mkdir -p "lab${lab}/ex${i}"
    mkdir -p "lab${lab}/ex${i}/sim"
    mkdir -p "lab${lab}/ex${i}/sys"
    touch "lab${lab}/ex${i}/compile_ex${i}.bash"
done

echo "Directories created successfully!"
