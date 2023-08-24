#!/bin/bash

i=1
total_words=0

while read c
do
    char=`echo $c | wc -c`
    words=`echo $c | wc -w`
    echo "$i: $char characters, $words words"
    ((i++))
    ((total_words+=words))
done < "$1"

echo "Total number of words: $total_words"

