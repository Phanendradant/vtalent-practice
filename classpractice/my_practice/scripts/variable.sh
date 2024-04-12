#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: variable shell script
# usage: ./variable.sh
######################################################

# create a variable with name
name="balu mahendra"
org_name="qt"
course="devops,aws"
duration="6 months."
# here i interpolating variable name
echo "this is ${name} from ${org_name} ,learning ${course} from last ${duration}"