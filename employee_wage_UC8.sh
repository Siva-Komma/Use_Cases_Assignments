#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
numofworkingdays=20
maxrateinmonth=100
totalworkingdays=0
totalemphr=0
totalsalary=0

function getworkinghours()
{
  case $randomcheck in
                        $isfulltime)
                                emphrs=8  ;;
                        $isparttime)
                                emphrs=4  ;;
                              *)
                                emphrs=0   ;;
   esac
}

function getempwages()
{
    echo $(($totalemphr*$emprateperhr))
}

while [[ $totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numofworkingdays ]]
do

  ((totalworkingdays++))
  randomcheck=$((RANDOM%3))
  getworkinghours $randomcheck
  totalemphr=$(($totalemphr+$emphrs))
  dailywages[$totalworkingdays]=$(($emphrs * $emprateperhr))
done
totalsalary="$(getempwages $totalemphr)"
echo ${dailyWages[@]}


