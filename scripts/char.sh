#!/bin/bash
 while read c
 do
	 echo $c | wc -c
 done <$1

