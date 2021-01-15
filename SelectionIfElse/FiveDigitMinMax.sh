[A#!/bin/bash -x

read -p "Enter First Random Three Digit Value : " R1;
read -p "Enter Second Random Three Digit Value : " R2;
read -p "Enter Third Random Three Digit Value : " R3;
read -p "Enter Fourth Random Three Digit Value : " R4;
read -p "Enter Fifth Random Three Digit Value : " R5;



if [ $R1 -ge $R2 ]
then
	if [ $R1 -ge $R3 ]
	then
		if [ $R1 -ge $R4 ]
		then
			if [ $R1 -ge $R5 ]
			then
				echo Maximum Value is $R1
			fi
		fi
	fi
fi
if [ $R2 -ge $R1 ]
then
	if [ $R2 -ge $R3 ]
	then
		if [ $R2 -ge $R4 ]
		then
			if [ $R2 -ge $R5 ]
			then
				echo Maximum Value is $R2
			fi
		fi
	fi
fi
if [ $R3 -ge $R2 ]
then
	if [ $R3 -ge $R1 ]
	then
		if [ $R3 -ge $R4 ]
		then
			if [ $R3 -ge $R5 ]
			then
				echo Maximum Value is $R3
			fi
		fi
	fi
fi
if [ $R4 -ge $R2 ]
then
	if [ $R4 -ge $R3 ]
	then
		if [ $R4 -ge $R1 ]
		then
			if [ $R4 -ge $R5 ]
			then
				echo Maximum Value is $R4
			fi
		fi
	fi
fi
if [ $R5 -ge $R2 ]
then
	if [ $R5 -ge $R3 ]
	then
		if [ $R5 -ge $R4 ]
		then
			if [ $R5 -ge $R1 ]
			then
				echo Maximum Value is $R5
			fi
		fi
	fi
fi





