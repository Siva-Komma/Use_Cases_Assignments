#!/bin/bash -x
#calculate wage of month upto limit .taotal working day less tahn 20 or totalworkinghr less than 100

isparttime=1
isfulltime=2
emprateperhr=20
numofworkingdays=20
maxrateinmonth=100
totalworkingdays=0
totalemphr=0
totalsalary=0

while [[ $totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numofworkingdays ]] 
do 
  ((totalworkingdays++))
  randomcheck=$((RANDOM%3))
  case $randomcheck in
                        $isfulltime)
                                emphrs=8  ;;
                        $isparttime)
                                emphrs=4  ;;
                              *)
                                emphrs=0   ;;
   esac
totalemphr=$(($totalemphr+$emphrs))
done
totalsalary=$(($totalemphr*$emprateperhr))
echo "Total Monthly salary" $totalsalary
