#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: ifthenelse demonestraion with parameters
# usage: ./ifthenelsedemo.sh <path of file>
######################################################
file_name=$1
# user might enter empty value
if [[ -z ${file_name} ]]; then
   echo "Incorrect usage: ./ifthenelsedemo.sh <path of file>"
   exit 1
fi
if [[ ! -f ${file_name} ]]; then
   echo "please correct the file path and reexecute"
   exit 1
else 
   echo "contents of the files are"
   cat ${file_name}
fi


