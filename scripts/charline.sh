#!/bin/bash

i=1
while read c
do
    char=`echo $c | wc -c`
    echo "$i: $char"
    ((i++))
done < $1
