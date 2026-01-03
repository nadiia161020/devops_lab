#!/bin/bash
DIR=$1
EXT=$2

if [ -z "$DIR" ] || [ -z "$EXT" ]; then
    echo "Usage: $0 [path] [extension]"
    exit 1
fi

COUNT=$(ls -1 "$DIR"/*."$EXT" 2>/dev/null | wc -l)
echo "Directory $DIR has $COUNT files with extension .$EXT."