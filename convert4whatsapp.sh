#!/bin/bash
# Call this script with at least 3 parameters, for example
# sh scriptname 1 2 3
if [ "$#" -ne 1 ]; then
    echo "Usage: convert4whatsapp <input file> <output file>"
    exit 0
fi

ffmpeg -i $1 -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p $2
