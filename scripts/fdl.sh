#!/bin/bash

# Get user input
read -p "Enter a file or directory path: " input

# Check if the input exists
if [ -e "$input" ]; then

    if [ -f "$input" ]; then
        echo "$input is a regular file."

    elif [ -d "$input" ]; then
        echo "$input is a directory."

    elif [ -L "$input" ]; then
        echo "$input is a symbolic link."
    else
        echo "$input is something else."
    fi
else
    echo "$input does not exist.
