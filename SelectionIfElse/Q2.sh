#!/bin/bash -x

read -p "Enter the month: " y;
read -p "Enter the day: " x;

if [ $x -gt '0' -a $x -le '31' ]
then
	val=`echo $y | awk '{ print tolower($0) }'`
	echo $val
	if [ $val == 'march' -o $val == 'april' -o $val == 'may' -o $val == 'june' ]
	then
		if [ $x -eq '31' ]
		then
			if [ $val == 'march' -o $val == 'may' ]
			then
				echo TRUE
			else
				echo Please put valid input
			fi
		else
			echo TRUE
		fi
	else
		echo FALSE
	fi
else
	echo FALSE
fi
