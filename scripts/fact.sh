#!/bin/bash

echo "Please enter the number"
read n

fact=1
i=$n

while [ $i -gt 1 ]; do
    fact=$((fact * i))
    ((i--))
done

echo "The factorial of $n is $fact"
