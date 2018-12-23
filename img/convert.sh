#!/bin/bash

# Shrink all .jpg files in a direcory, strip them of metadata and rename them
# to numbers

num=1
for filename in *.jpg; do
    echo $filename
    convert $filename -resize 800 $filename
    exiftool -all= $filename
    mv $filename $num'.jpg';
    num=$((num + 1));
done
