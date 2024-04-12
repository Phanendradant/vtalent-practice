#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: default parameter values  in shell script
# usage: ./defaultparams.sh <name> <course>
######################################################
name=$1
course=$2
[ -z $name ] && name="balu"
[ -z $course ] && course="linux"
echo "hello ${name},welcome to ${course}"
