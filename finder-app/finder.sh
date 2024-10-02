#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Simone Asperti

# ./finder.sh arg1 arg2 where arg1 = directory and arg2 = string

filesdir=$1;
searchstr=$2;

echo "filesdir="$filesdir;
echo "searchstr="$searchstr;

if test -z "$filesdir" || test -z "$searchstr"  #check if arg 1 and arg 2 are empty
then
    echo "Invalid argument"
    exit 1;
fi

if test -d "$filesdir" #Check if arg1 exists
then
    echo "Directory exists";
    cd "$filesdir" #Locate itself in arg1
    NumFiles=$(ls | wc -l); #Count files in arg1
    NumMatchlines=$( grep -Rnw "$filesdir" -e "$searchstr" | wc -l); #Count files with string = arg2
    echo "The number of files are $NumFiles and the number of matching lines are $NumMatchlines";
else
    echo "Invalid directory"
    exit 1;
fi


