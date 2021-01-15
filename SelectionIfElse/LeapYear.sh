#!/bin/bash -x

read -p "Enter a year: " x;

if [ $x > '999' ]
then
	if(( $x%'4' == '0' && $x%'100' != '0' || $x%'400' == '0'))
	then
		echo It is a leap year
	else
		echo It is not a leap year
	fi
else
	echo Please enter valid input
fi
