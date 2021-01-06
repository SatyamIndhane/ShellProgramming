#!/bin/bash -x

read -p "Enter a whole number: " x;

counter=0
while (( counter<=x ))
do
	if (( counter<9 ))
	then
		var=$((2**$counter))
		echo $counter=$var
	((counter++))
	else
		echo Iterations above 256 are not allowed
	fi
done
