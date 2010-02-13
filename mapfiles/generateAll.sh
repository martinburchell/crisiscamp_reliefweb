#!/bin/bash

#exit on error
set -e

#loop through all pdf files in current dir
for filename in `ls *.pdf`
do
    ./generate.sh $filename
done
