#!/bin/bash
echo "enter the value of num"

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

if [ "$num1" -gt "$num2" ] && [ "$num1" -gt "$num3" ]; then
    echo "The biggest number is: $num1"
elif [ "$num2" -gt "$num1" ] && [ "$num2" -gt "$num3" ]; then
    echo "The biggest number is: $num2"
else
    echo "The biggest number is: $num3"
fi

