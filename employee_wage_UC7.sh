#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
numofworkingdays=20
maxrateinmonth=70
totalworkingdays=0
totalemphr=0
totalsalary=0

function getworkinghours()
{
  case $1 in
                        $isfulltime)
                                emphrs=8  ;;
                        $isparttime)
                                emphrs=4  ;;
                              *)
                                emphrs=0   ;;
   esac
}

while [[ $totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numofworkingdays ]]
do

  ((totalworkingdays++))
  getworkinghours $((RANDOM%3))
  totalemphr=$(($totalemphr+$emphrs))
done
totalsalary=$(($totalemphr*$emprateperhr))
echo "Total Monthly salary"$totalsalary


