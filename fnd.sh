#!/bin/bash

read -p "Enter a path: " input

if [ -e "$input" ]; then
    if [ -f "$input" ]; then
        echo "$input is a regular file."
    elif [ -d "$input" ]; then
        echo "$input is a directory."
    elif [ -L "$input" ]; then
        echo "$input is a symbolic link."
    else
        echo "$input exists, but it's not a regular file, directory, or symbolic link."
    fi
else
    echo "$input does not exist."
fi

