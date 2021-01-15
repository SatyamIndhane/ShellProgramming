#!/bin/bash -x

read -p "Enter Inches to convert into Feet: " x;

#DistinInches=$(( DistFeet*12 ))
#DistinFeet=$(( DistInches*0.084 ))        #approx 0.8333333333333 ~ 0.084

x1=84
x2=1000
val=$(( ($x*$x1)/$x2 ))

#data needed for area of rectangular plot

x3=60
x4=40
area=$(($x3*$x4))

#data needed for how many plots to be caluclated

x5=25
PlotArea=$(($area*$x5))

echo $x Inches is equal to $val Feet
echo Area of One Plot given as $area
echo Area of 25 such Plots is $PlotArea


