#!/bin/bash -x
#check employee is present or not and calculate working hours

isparttime=1
isfulltime=2
random_check=$((RANDOM%3))
emprateperhr=20

if(($isfulltime == $random_check))
then 
     emphrs=8
     echo "Employee is present and  doing full time"
elif(($isparttime == $random_check))
then
     emphrs=4
     echo "Employee is present and doing part time"
else
     emphrs=0
     echo "Employee is absent"
fi

