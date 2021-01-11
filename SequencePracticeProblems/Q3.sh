#!/bin/bash -x

R1=$(( RANDOM%6+1 ))
R2=$(( RANDOM%6+1 ))

Add=$(( $R1+$R2 ))

echo Addition of Two Random Dice Number is $Add
