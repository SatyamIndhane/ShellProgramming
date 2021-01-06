#!/bin/bash -x

read -p "Enter a whole number: " x;

for (( counter=2; counter<=x; counter++ ))
do
	if (( $x%$counter == 0 ))
	then
		echo $counter
	fi
done
