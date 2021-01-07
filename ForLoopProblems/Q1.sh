#!/bin/bash -x

echo "Enter a whole number: $1";

for (( counter=0; counter<=$1; counter++ ))
do
	var=$((2**$counter))
	printf "$counter = $var\n"
done
