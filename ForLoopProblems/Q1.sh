#!/bin/bash -x

read -p "Enter a whole number: " x;

for (( counter=0; counter<=x; counter++ ))
do
	var=$((2**$counter))
	printf "$counter = $var\n"
done
