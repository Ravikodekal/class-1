#!/bin/bash

read -p "Enter an integer 'n': " n

current_num=1

# Loop to generate the pattern
for ((i=1; i<=n; i++)); do
    for ((j=1; j<=i; j++)); do
        echo -n "$current_num "
        current_num=$((current_num + 1))
    done
    echo
done

