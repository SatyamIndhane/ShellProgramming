#!/bin/bash

keys=1
flag1=0
flag2=0
flag3=0
flag4=0
flag5=0
flag6=0

declare -A dice
declare -A ans


while (( flag1<10 && flag2<10 && flag3<10 && flag4<10 && flag5<10 && flag6<10 ))
do
	var=$((RANDOM%6+1))
	if (( var==1 ))
	then
		((flag1++))
	elif (( var==2 ))
	then
		((flag2++))
	elif (( var==3 ))
	then
		((flag3++))
	elif (( var==4 ))
	then
		((flag4++))
	elif (( var==5 ))
	then
		((flag5++))
	elif (( var==6 ))
	then
		((flag6++))
	fi
	dice[$((keys++))]="$var"
done

counter=0
ans[$((counter++))]=$flag1
ans[$((counter++))]=$flag2
ans[$((counter++))]=$flag3
ans[$((counter++))]=$flag4
ans[$((counter++))]=$flag5
ans[$((counter++))]=$flag6

echo ${ans[@]}

e=${ans[0]}
for (( flag=0; flag<=4; flag++ ))
do
	if (( $e>${ans[$((flag+1))]} ))
	then
		e=${ans[$((flag+1))]}
	fi
done

f=${ans[0]}
for (( flag=0; flag<=4; flag++ ))
do
	if (( $f<${ans[$((flag+1))]} ))
	then
		f=${ans[$((flag+1))]}
	fi
done

echo $e $f
echo ${!ans[@]}
echo ${ans[@]}



for i in ${!ans[@]}
do
	if (( ${ans[$((i))]} == $e ))
	then
			echo $((i+1)) is the minimum occured
	fi
done

for i in ${!ans[@]}
do
	if (( ${ans[$((i))]} == $f ))
	then
			echo $((i+1)) is the maximum occured
	fi
done
