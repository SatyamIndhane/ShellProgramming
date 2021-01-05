#!/bin/bash -x

read -p "Enter a whole number: " x;

#if (( $x == 0 || $x == 1 ))
#then
	#echo It is not a Prime Number
#fi

#if (( $x == 2 ))
#then
	#echo It is a Prime number
#fi

for (( counter=2; counter<x; counter++ ))
do
	if (( $x%$counter==0 ))
	then
		value=0
		#echo It is not a Prime Number
		break
	fi
		value=1
		#echo It is a Prime number
done

#why it gives error for 2
if [ $value -eq '1' ]
then
	echo Prime
else
	echo Not a Prime
fi

