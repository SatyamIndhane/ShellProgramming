#!/bin/bash -x

read -p "Enter First Random Three Digit Value : " R1;
read -p "Enter Second Random Three Digit Value : " R2;
read -p "Enter Third Random Three Digit Value : " R3;
read -p "Enter Fourth Random Three Digit Value : " R4;
read -p "Enter Fifth Random Three Digit Value : " R5;

if [ $R1 -ge $R2 ]
	if [ $R1 -ge $R3 ]
		if [ $R1 -ge $R4 ]
			if [ $R1 -ge $R5 ]
				echo Maximum Value is $R1
if [ $R2 -ge $R1 ]
	if [ $R2 -ge $R3 ]
		if [ $R2 -ge $R4 ]
			if [ $R2 -ge $R5 ]
				echo Maximum Value is $R2
if [ $R3 -ge $R2 ]
	if [ $R3 -ge $R1 ]
		if [ $R3 -ge $R4 ]
			if [ $R3 -ge $R5 ]
				echo Maximum Value is $R3
if [ $R4 -ge $R2 ]
	if [ $R4 -ge $R3 ]
		if [ $R4 -ge $R1 ]
			if [ $R4 -ge $R5 ]
				echo Maximum Value is $R4
if [ $R5 -ge $R2 ]
	if [ $R5 -ge $R3 ]
		if [ $R5 -ge $R4 ]
			if [ $R5 -ge $R1 ]
				echo Maximum Value is $R5
fi





