#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Simone Asperti

# ./writer.sh arg1 arg2

writefile=$1;
writestr=$2;

if test -z "$writefile" || test -z "$writestr"  
then
    echo "Invalid argument"
    exit 1;
fi

echo $writestr > $writefile #make create the required files with the required string