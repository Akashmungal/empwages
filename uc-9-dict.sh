#!/bin/bash -x

isPartTime=2
isFullTime=1
maxHoursInMonth=160
empRatePerHours=20
numOfWorkingDays=20

totalEmpHours=0
totalWorkingDays=0


function getWorkingHours()
{
	case $1 in
			$isPartTime)
				empHours=4
			;;
			$isFullTime)
				empHours=8
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
		dailyWages["$totalWorkingDays"]=$(($empHours+$empRatePerHours))
done

totalSalary="$( getEmpWages $totalEmpHours )"

echo ${dailyWages[@]}
echo ${!dailyWages[@]}
