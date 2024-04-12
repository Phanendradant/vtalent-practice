#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: default parameter values  in shell script
# usage: ./defaultparams.sh <name> <course>
######################################################
name=${1-"balu"}
course=${2-"linux"}

echo "hello ${name},welcome to ${course}"