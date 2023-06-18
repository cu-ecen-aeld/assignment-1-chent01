#!/bin/bash

if [ $# != 2 ]
then
    exit 1
fi

writefile=$1
writeStr=$2

dirPath=$(dirname $writefile)

if [ ! -d $dirPath ]
then
    mkdir -p $dirPath
fi

$(echo "$writeStr" > $writefile)

if [ $? != 0 ]
then
    echo "File write error."
    exit 1
else
    exit 0
fi

