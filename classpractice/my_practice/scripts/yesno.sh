#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: yesno shell script
# usage: ./yesno.sh
######################################################
read -p "do u like linux?" reply
if [[ ${reply,,} = 'y' ]] || [[ ${reply^^} == 'YES' ]] 
   echo "great,continue your learning journey"
   exit 0
fi 