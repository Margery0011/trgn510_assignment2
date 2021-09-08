#!/usr/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 filename."
    exit 1
fi
filename=$1
wget -O website $filename
while read -n   1 c 
do
  echo head  "$c"
done <  "website" | grep '[[:alpha:]]' | sort | uniq -c | sort -nr
