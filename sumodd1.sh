#!/bin/bash

echo "Pl
ease enter the n value"
read n

sum=0
i=1

while [ $i -le $n ]; do
    sum=$((sum+i))
    i=$((i+2))
done

echo "The sum of n odd numbers is $sum"


