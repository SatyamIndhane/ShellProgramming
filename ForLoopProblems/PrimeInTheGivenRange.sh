#!/bin/bash

read -p "Enter first number: " x;
read -p "Enter second number: " y;

for (( counter=x+1; counter<y; counter++ ))
do
	flag=0
	for (( base=2; base<x; base++ ))
	do
		if (( $counter%$base==0 ))
		then
			flag=1
			break
		fi
	done
	if (( flag==0 ))
	then
		echo $counter
	fi
done

