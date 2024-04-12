#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: internal feild separator
# usage: ./ifs.sh
######################################################
file="text.txt"
IFS=$'/n'
for item in $(cat $file)
do
  echo "$item"
done