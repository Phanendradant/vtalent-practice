#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: for loop another metod 
# usage: ./fordemo2.sh
######################################################
courses= (devops aws azure linux windows) 
for ((index=0; index<5; index++))
do
  echo $"{course[$index]}"
done