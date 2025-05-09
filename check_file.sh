#!/bin/bash
echo "Enter the filename"
read filename

if [ -e "$filename" ]; then
        fullpath=$(realpath "$filename")
        echo "File exists at : $fullpath "
else
        echo "File does not exists"
fi
