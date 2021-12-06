#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHours=20
randomCheck=$((RANDOM%3))


case $randomCheck in
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

salary=$(($empHours*$empRatePerHours))

