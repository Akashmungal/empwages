#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))

if [ $ispresent -eq $randomcheck ]
then
	emprateperhour=20;
	emphour=8;
	salary=$(($emprateperhour * $emphour));
else
	salary=0;
fi

echo $salary
