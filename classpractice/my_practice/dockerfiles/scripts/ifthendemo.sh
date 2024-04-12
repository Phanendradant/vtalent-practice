#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: ifthenrc 
# usage: ./ifthendemo.sh 
######################################################
mkdir temps
mkdir_rc=$?
#test if directory craetion is success
if [[  ${mkdir_rc} -ne 0 ]]; then
   echo "mkdir do not create directory,stop execution"
   exit 1
fi
touch temps/tempfile.txt
