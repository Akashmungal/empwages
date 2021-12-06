#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

if [ $isPartTime -eq $randomCheck ]
then
	empHours=4;

elif [ $isFullTime -eq $randomCheck ]
then
	empHours=4;

else
	empHours=0;
fi

salery=$(($empHours*$empRatePerHr));
