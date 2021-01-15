#!/bin/bash -x

#!/bin/bash -x

read -p "Enter number to know weekday: " x;

case $x in
				1)
				echo Monday
				;;
				2)
				echo Tuesday
				;;
				3)
				echo Wednesday
				;;
				4)
				echo Thursday
				;;
				5)
				echo Friday
				;;
				6)
				echo Saturday
				;;
				7)
				echo Sunday
				;;
				*)
				echo Enter valid input
				;;

esac
