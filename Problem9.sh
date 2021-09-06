#!/usr/bin/bash
FILES=$(ls $1)
echo $FILES $1
for f in $FILES
do
    filesize= wc -m $f
    if [[ $filsize -eq 1000 ]]
    then
    echo "Processing $f files..."
    elif [[ $filesize -gt 1000 ]]
    then
    echo "Skipping ${f}"
    fi
done
