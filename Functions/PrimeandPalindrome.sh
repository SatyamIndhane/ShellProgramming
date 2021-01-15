#!/bin/bash -x

read -p "Enter a number" x;

function prime(){
	local flag=0
	if (( $1 == 0 || $1 == 1))
	then
			flag=0
	elif (( $1 == 2 ))
	then
			flag=1
	fi
	for (( counter=2; counter<$1; counter++ ))
	do
		if (( $1%counter == 0 ))
		then
			flag=0
			break
		else
			flag=1
		fi
	done
	if (( flag == 1 ))
	then
		echo Y
	else
		echo N
	fi
}

function palindrome(){
	local n=$1
	while (( $n>0 ))
	do
		local one=$(( n%10 ))
		local n=$(( n/10 ))
		local rev="$rev$one"
	done

	if [ "$rev" == "$1" ]
	then
		echo Y
	else
		echo N
	fi
}


rprime="$( prime $x )"
rpalindrome="$( palindrome $x )"

if [ "$rprime" == "Y" ]
then
	echo It is prime
	if [ "$rpalindrome" == "Y" ]
	then
		echo It is prime as well as palindrome
	fi
elif [ "$rpalindrome" == "Y" ]
then
	echo It is a palindrome
	if [ "$rprime" == "Y" ]
	then
		echo It is plaindrome as well as prime
	fi
else
	echo Neither prime nor palindrome
fi
