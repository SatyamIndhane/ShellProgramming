#!/bin/bash -x

#Important for string comparison in bash how to do it

read -p "Is the number greater than $n (Y/N) " ans;

if [[ "$ans" == "y" || "$ans" == "Y" ]]
then
	echo Y
elif [[ "$ans" == "n" || "$ans" == "N" ]]
then
   echo n
else
   echo Put valid input
fi
