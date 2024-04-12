#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: return code demo
# usage: ./returncodedemo.sh
######################################################
# run acommand which will always work
mktemp
# storing the exit code of mktemp
mktemp_ec=$?
# run a command which always fails
mkdir /home/ubuntu/
mkdir_ec=$?
# print return statements
echo "mktemp returned  success exit code which${mktemp_ec}"
echo "mkdir returned failure exit code which${mkdir_ec}"
