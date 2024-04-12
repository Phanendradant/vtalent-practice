#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: ifthenrc 
# usage: ./ifthendemo.sh 
######################################################
FILE=random.txt
# check if there is a file r not
if [[ ! -f ${FILE} ]]; then
   echo "file mentioned as ${file} doesnt exists so exit"
   exit 1
else 
   echo "printing contents of file ${FILE}"
   cat ${FILE}
fi