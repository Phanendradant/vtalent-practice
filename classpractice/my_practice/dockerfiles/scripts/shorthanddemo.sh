#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: shorthand  script in shell script
# usage: ./shorthanddemo.sh 
######################################################
HOME_DIRECTORY=/home/ubuntu
#check home directory exists or not
test -d ${HOME_DIRECTORY}
# return code of full command
full_check_rc=$?
# short hand
[ -d ${HOME_DIRECTORY} ]
# return 0
short_check_rc=$?
echo "return code for full command test -d is ${full_check_rc=$?}"
echo "return code for short command -d is ${short_check_rc=$?}"