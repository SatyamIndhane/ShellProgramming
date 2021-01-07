#!/bin/bash

# Example: Number is 67 - Y,N,Y,N,Y,Y

low=0
high=100

echo "Think of a number between 0 to 100"

while (( high-low>2 ))
do
	n=$(( (low+high)/2 ))				#Please take care of the BODMAS RULE
	read -p "Is the number greater than $n (Y/n) " ans;

	if [[ "$ans" == "y" || $ans == "Y" ]]
	then
		low=$(( (low+high)/2 ))
		#printf "low is now $low\nhigh is now $high\n"
	elif [[ "$ans" == "n" || $ans == "N" ]]
	then
		high=$(( (low+high)/2 ))
		#printf "low is now $low\nhigh is now $high\n"
	else
		echo Put valid input
	fi
done

NUM=$(( (low+high)/2 ))
echo Your number is $NUM
