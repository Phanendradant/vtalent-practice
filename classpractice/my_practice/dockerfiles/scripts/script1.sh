#!/bin/bash

#variable scope
name=balumahendra
echo "this is from script1 name=${name}"
export name
./script2.sh 