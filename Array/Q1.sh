#!/bin/bash

#echo ${#unSortAr[@]}        length of array


cor=10



function ran(){
	local index=0
	local unSortAr
	while (( index<$1 ))
	do
		val=$((RANDOM%1000))
		if (( val>99 ))
		then
		unSortAr[((index++))]=$val
		fi
	done
	echo ${unSortAr[@]}
}

result="$(ran $cor )" 
#echo $result

#while (( index<10 ))
#do
#	val=$((RANDOM%1000))
#	if (( val>99 ))
#	then
#	unSortAr[((index++))]=$val
#	fi
#done

#echo ${unSortAr[@]}
#small=$(( ${unSortAr[0]} ))
#s_small=$(( ${unSortAr[0]} ))
#length=$(( ${#unSortAr[@]} ))

#while (( number<length ))
#do
#	if (( $small>${unSortAr[number]} ))
#	then
#		small=${unSortAr[number]}
#	fi
#	((number++))
#done

#echo $small



function give_small(){
	local unSortAr=("$@")
	small=${unSortAr[0]}
	length=${#unSortAr[@]}

	while (( number<length ))
	do
		if (( $small>${unSortAr[number]} ))
		then
			small=${unSortAr[number]}
		fi
		((number++))
	done
	echo $small
}

#result1="$( give_small $result )"
#give_small $result
#echo $result1

function small_two(){
	tmp=("${@}")
	local x="$( give_small $tmp )"
	ans=("{$tmp[@]/$x}")
	ans="$( give_small $ans )"
	echo $ans
}

result2="$( small_two $result )"
echo $result2
