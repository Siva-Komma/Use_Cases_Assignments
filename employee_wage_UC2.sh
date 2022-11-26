#!/bin/bash -x
#check whether employee is present and calculate his daily  wages
 
ispresent=1
random_check=$((RANDOM%3))
emprateperhr=20
emphrs=8

if(($ispresent == $random_check))
then 
     salary=$(($emprateperhr*$emphrs))
     echo "The salary is " $salary
else
     salary=0
     echo "The salary is" $salary
fi
 
