#!/usr/bin/bash
FILES=$(ls $1)
echo $FILES $1
for f in $FILES
do
   echo "Processing $f file..."
   # count number of characters and output that for file $f
   wc -m $f
done
