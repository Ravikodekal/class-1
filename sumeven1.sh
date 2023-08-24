#!/bin/bash

echo "Please enter the n value"
read n

sum=0

while [ $n -gt 0 ]; do
    mod=$((n%2))
    if [ $mod -eq 0 ]; then
        sum=$((sum + n))
    fi
    ((n--))
done

echo "The sum of n odd numbers is $sum"
