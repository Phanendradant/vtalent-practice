#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: creating files ifthenelse byu arguments
# usage: ./createfiles.sh <arg1> <arg2> <arg3>
######################################################
if [[ $# -ne 3 ]]; then
   echo "incorrect number of arguments passed"
   echo "usage:./createfiles.sh <directoryname> <file_name> <file_content>"
   exit 1
fi
#create parameters with argument values
directory_name=$1
file_name=$2
file_content=$3
# check if directory exists or do not exists
if [[ ! -d ${directory_name} ]]; then
   mkdir ${directory_name} || { echo "cannnot create directory";exit 1; }
fi
# lets create a absolute file path
abs_filepath=${directory_name}/${file_name}
#try to create a file if file doesnot exists 
if [[ ! -f ${abs_filepath} ]]; then
   touch ${abs_filepath} || {exho "cannot create file";exit 1;}
fi
#since file is created or present
#add the contents to it
echo ${file_content} > ${abs_filepath}
