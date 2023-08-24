#!/bin/bash

echo "Enter the n Value"
read n

sumodd=0
i=1

while [ $n -le $n ]; do
    sumodd=$((sumodd + i))
    i=$((i+2))
done

echo "The sum of n numbers is $sumodd"



