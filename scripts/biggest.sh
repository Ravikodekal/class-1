#!/bin/bash
  num1=$1
  num2=$2

  if [ $num1 -gt $num2 ]; then
	  echo "$num1 is greatest of the two numbers"
  elif [$num1 -eq $num2 ]; then
	  echo "numbers are equal"
  else
	  echo "$num2 is the greatest of two numbers"
  fi

