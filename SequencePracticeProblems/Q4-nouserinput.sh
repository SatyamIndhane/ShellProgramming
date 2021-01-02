#!/bin/bash -x

R1=$(( RANDOM%100 ))
R2=$(( RANDOM%100 ))
R3=$(( RANDOM%100 ))
R4=$(( RANDOM%100 ))
R5=$(( RANDOM%100 ))

echo First Random Two Digit Value $R1
echo Second Random Two Digit Value $R2
echo Third Random Two Digit Value $R3
echo Fourth Random Two Digit Value $R4
echo Fifth Random Two Digit Value $R5

sum=$(( $R1+$R2+$R3+$R4+$R5 ))

average=$(( $sum/5 ))

echo The Sum of Five numbers is : $sum
echo The Average of Five numbers is : $average



