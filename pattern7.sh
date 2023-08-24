#!/bin/bash

read -p "Enter an integer 'n': " n

# Loop to generate the pattern
for ((i=1; i<=n; i++)); do
    for ((j=1; j<=i; j++)); do
        echo -n "$j"
    done
    echo
done

