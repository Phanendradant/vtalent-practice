#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: sample if condition
# usage: ./ifdemo.sh
######################################################
FILE= /tmp/random.txt
# check if file exists
if [[ -f ${FILE} ]]; then
   cat${FILE}
   exit 0
fi

exit 1
