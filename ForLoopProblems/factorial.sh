#!/bin/bash -x

read -p "Enter a whole number: " x;

if (( x==0 ))
then
	echo 0
fi


var=1

for (( counter=1; counter<=x; counter++ ))
do
	var=$(($var*$counter))
done
