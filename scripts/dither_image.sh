#!/bin/sh
echo $1
echo $2
scripts/didder --palette "black white" --recolor "#437aa2 #ebe6d5" -i "$1" -o "$2"  edm --serpentine FloydSteinberg
