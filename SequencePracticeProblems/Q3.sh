#!/bin/bash -x

R1=$(( RANDOM%7 ))
R2=$(( RANDOM%7 ))

Add=$(( $R1+$R2 ))

echo Addition of Two Random Dice Number is $Add
