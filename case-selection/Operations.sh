#!/bin/bash -x

read -p "Enter First Number a : " a;
read -p "Enter Second Number b : " b;
read -p "Enter Third Number c : " c;
read -p "Enter operation number: " x;

case $x in
				1)
				op1=$(( ($b*$c)+$a ))
				echo $op1
				;;
				2)
				op2=$(( ($a/$b)+$c ))
				echo $op2
				;;
				3)
				op3=$(( ($a%$b)+$c ))
				echo $op3
				;;
				4)
				op4=$(( ($a*$b)+$c ))
				echo $op4
				;;
				*)
				echo Enter valid operation number
				;;
esac
