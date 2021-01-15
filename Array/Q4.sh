#!/bin/bash -x

read -p "Enter first integers:" x;
read -p "Enter three integers:" y;
read -p "Enter three integers:" z;


if (( x+y+z == 0 ))
then
	echo The integers add to zero
else
	echo The integers are not adding upto zero
fi

