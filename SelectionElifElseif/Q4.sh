#!/bin/bash -x

read -p "Enter First Number a : " a;
read -p "Enter Second Number b : " b;
read -p "Enter Third Number c : " c;

op1=$(( ($b*$c)+$a ))

op2=$(( ($a/$b)+$c ))

op3=$(( ($a%$b)+$c ))

op4=$(( ($a*$b)+$c ))

if [ $op1 -ge $op2 -a $op1 -ge $op3 -a $op1 -ge $op4 ]
then
	echo Operation 1 is Maximum with value $op1

elif [ $op2 -ge $op1 -a $op2 -ge $op3 -a $op2 -ge $op4 ]
then
	echo Operation 2 is Maximum with value $op2

elif [ $op3 -ge $op2 -a $op3 -ge $op1 -a $op3 -ge $op4 ]
then
	echo Operation 3 is Maximum with value $op3

elif [ $op4 -ge $op2 -a $op4 -ge $op3 -a $op4 -ge $op1 ]
then
	echo Operation 1 is Maximum with value $op4
fi

if [ $op1 -le $op2 -a $op1 -le $op3 -a $op1 -le $op4 ]
then
	echo Operation 1 is Minimum with value $op1

elif [ $op2 -le $op1 -a $op2 -le $op3 -a $op2 -le $op4 ]
then
	echo Operation 2 is Minimum with value $op2

elif [ $op3 -le $op2 -a $op3 -le $op1 -a $op3 -le $op4 ]
then
	echo Operation 3 is Minimum with value $op3

elif [ $op4 -le $op2 -a $op4 -le $op3 -a $op4 -le $op1 ]
then
	echo Operation 4 is Maximum with value $op4
fi
