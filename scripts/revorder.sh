#!/bin/bash

# arguments in an array
args=("$@")

# Get the number of arguments
num_args=$#

# Loop through the arguments in reverse order and print them
for ((i = num_args - 1; i >= 0; i--)); do
    echo "${args[i]}"
done

