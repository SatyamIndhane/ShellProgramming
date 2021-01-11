#!/bin/bash -x

echo "Enter a farhenhiet value : $1"


function convToDegC() {
	val=`echo "scale=3; ($1-32)*(5/9) " | bc`
	echo $val
}

result="$( convToDegC $1 )"

echo $result
