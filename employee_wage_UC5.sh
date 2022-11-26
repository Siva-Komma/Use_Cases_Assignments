#!/bin/bash -x
#calculate  employee monthly wage

isparttime=1
isfulltime=2
emprateperhr=20
numofworkingdays=20
for((day=1; day<=numofworkingdays; day++))
do
  randomcheck=$((RANDOM%3))
  case $randomcheck in
                        $isfulltime)
                                emphrs=8  ;;
                        $isparttime)
                                emphrs=4  ;;
                              *)
                                emphrs=0   ;;
    esac
salary=$(($emphrs*$emprateperhr))
totalsalary=$(($totalsalary+$salary))
done
echo "Total Monthly salary" $totalsalary
