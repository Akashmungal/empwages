#!/bin/bash -x

isPartTime=0
isFullTime=1
maxHoursInMonth=100
empRatePerHours=20
numOfWorkingDays=20

totalEmpHours=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
			$isPartTime)
				empHours=8
			;;
			$isFullTime)
				empHours=4
			;;
			*)
				empHours=0
			;;
esac
}

function getEmpWages()
{
	echo $(($1*$empRatePerHours))

}

while [[ $totalEmpHours -lt $maxHoursInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
		((totalWorkingDays++))
		empCheck=$((RANDOM%3))
		getWorkingHours $empCheck
		totalEmpHours=$(($totalEmpHours+$empHours))
		dailyWages[$totalWorkingDays]=$(($empHours+$empRatePerHours))
done

totalSalary="$( getEmpWages $totalEmpHours )"
echo ${dailyWages[@]}
