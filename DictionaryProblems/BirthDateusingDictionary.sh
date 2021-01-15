#!/bin/bash

declare -A year

keys=1
flag1=0
flag2=0
flag3=0
flag4=0
flag5=0
flag6=0
flag7=0
flag8=0
flag9=0
flag10=0
flag11=0
flag12=0


for (( counter=0; counter<50; counter++ ))
do
   var=$(((RANDOM%12)+1))
   if (( var==1 ))
   then
      ((flag1++))
		year[1]=$flag1
   elif (( var==2 ))
   then
      ((flag2++))
		year[2]=$flag2
   elif (( var==3 ))
   then
      ((flag3++))
		year[3]=$flag3
   elif (( var==4 ))
   then
      ((flag4++))
		year[4]=$flag4
   elif (( var==5 ))
   then
      ((flag5++))
		year[5]=$flag5
   elif (( var==6 ))
   then
      ((flag6++))
		year[6]=$flag6
	elif (( var==7 ))
   then
      ((flag7++))
		year[7]=$flag7
	elif (( var==8 ))
   then
      ((flag8++))
		year[8]=$flag8
	elif (( var==9 ))
   then
      ((flag9++))
		year[9]=$flag9
	elif (( var==10 ))
   then
      ((flag10++))
		year[10]=$flag10
	elif (( var==11 ))
   then
      ((flag11++))
		year[11]=$flag11
	elif (( var==12 ))
   then
      ((flag12++))
		year[12]=$flag12
	fi
done

#echo ${!year[@]} dash ${year[@]}
echo "Individuals having same birthday in the month of January are ${year[1]}"
echo "Individuals having same birthday in the month of February are ${year[2]}"
echo "Individuals having same birthday in the month of March are ${year[3]}"
echo "Individuals having same birthday in the month of April are ${year[4]}"
echo "Individuals having same birthday in the month of May are ${year[5]}"
echo "Individuals having same birthday in the month of June are ${year[6]}"
echo "Individuals having same birthday in the month of July are ${year[7]}"
echo "Individuals having same birthday in the month of August are ${year[8]}"
echo "Individuals having same birthday in the month of September are ${year[9]}"
echo "Individuals having same birthday in the month of October are ${year[10]}"
echo "Individuals having same birthday in the month of November are ${year[11]}"
echo "Individuals having same birthday in the month of December are ${year[12]}"

