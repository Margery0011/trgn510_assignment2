#!/bin/bash
FILES=$(ls $@)
echo $FILES $@
for f in $FILES
do
    if [[ `stat -c%s $f` -le 1000 ]]
    then
        echo "Processing $f files..."
        wc -m $f
    else
        echo "Skipping ${f}"
    fi
done
