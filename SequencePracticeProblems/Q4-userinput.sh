#!/bin/bash -x

read -p "Enter First Random Two Digit Value : " R1;
read -p "Enter Second Random Two Digit Value : " R2;
read -p "Enter Third Random Two Digit Value : " R3;
read -p "Enter Fourth Random Two Digit Value : " R4;
read -p "Enter Fifth Random Two Digit Value : " R5;

sum=$(( $R1+$R2+$R3+$R4+$R5 ))

average=$(( $sum/5 ))

echo The Sum of Five numbers is : $sum
echo The Average of Five numbers is : $average



