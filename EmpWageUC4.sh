#!/bin/bash -x

empCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20

case $empCheck in
        $isFullTime)
        echo "Full time Employee"
        empHrs=8
        ;;

        $isPartTime)
        echo "Part time Employee"
        empHrs=4
        ;;

        *)
        echo "Employee is absent"
        empHrs=0
        ;;
esac

salary=$(( $ratePerHr*$empHrs ))
echo "Employee Wage : " $salary
