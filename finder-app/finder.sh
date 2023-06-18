#!/bin/bash

if [ $# != 2 ]
then
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]
then
    exit 1
fi

fileCount=$(grep -rl ${searchstr} ${filesdir} | wc -l)
matchCount=$(grep -ro ${searchstr} ${filesdir} | wc -l)



echo "The number of files are ${fileCount} and the number of matching lines are ${matchCount}"
