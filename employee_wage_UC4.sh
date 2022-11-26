#!/bin/bash -x
#check employee is present or not and calculate working hours and salry using switch case

isparttime=1
isfulltime=2
random_check=$((RANDOM%3))
emprateperhr=20

  case $random_check in
                        $isfulltime)
                                emphrs=8  ;;
                        $isparttime)
                                emphrs=4  ;;
                              *)
                                emphrs=0   ;;
    esac
salary=$(($emphrs*$emprateperhr))
echo $salary
