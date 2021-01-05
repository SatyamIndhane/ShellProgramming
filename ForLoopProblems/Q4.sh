#!/bin/bash -x

read -p "Enter first number: " x;
read -p "Enter second number: " y;

for (( counter=x; counter<y; counter++ ))
do
	for (( base=2; base<counter; base++ ))
	do
		if (( $base%$counter==0 ))
		then
		fi
	done
done

