#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: nestedloop demo
# usage: ./nestedloop.sh 
######################################################
for (( row=1; row<=3; row++ ))
do
   for (( col=1; col<=3; col++ ))
   do 
     echo "${row} * ${col}"
   done
done