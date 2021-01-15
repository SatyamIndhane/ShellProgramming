

#!/bin/bash -x

read -p "Enter a number: " x;

case $x in
				1)
				echo Unit
				;;
				10)
				echo Ten
				;;
				100)
				echo Hundred
				;;
				1000)
				echo Thousand
				;;
				10000)
				echo Ten Thousand
				;;
				100000)
				echo Lakh
				;;
				1000000)
				echo Ten Lakh
				;;
				10000000)
				echo Crore
				;;
				100000000)
				echo Ten crore
				;;
				*)
				echo Enter valid input
				;;
esac
