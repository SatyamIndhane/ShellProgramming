#!/bin/bash -x

read -p "Enter the date" d;



ynot=$(( (y-(14-m))/12 ))
x=$(( ((y0+y0)/4)-(((y0/100)+y0)/400) ))
mnot=$(( ((m+12)*((14-m)/12))-2 ))
dnot=$(( ((d+x+(31*mnot))/12)%7 ))
