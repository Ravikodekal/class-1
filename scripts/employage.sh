#!/bin/bash

i=1
while read line
do
    if [ $i -ne 1 ]; then
        age=`echo $line | awk '{print$3}'`
        if [ $age -ge 25 ]; then
            echo $line | awk '{print$1}'
        fi
    fi
    ((i++))
done < $1
