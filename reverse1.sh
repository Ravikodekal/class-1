#!/bin/bash

# Loop through the arguments in reverse order
for (( i=$#; i>0; i-- )); do
    echo "${!i}"
done


