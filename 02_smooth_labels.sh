#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ] ; then
    >&2 echo 'No arguments supplied'
    exit 1
fi

DATA=$1
OUTPUT_NAME=$2 
SIGMA=$3 

CODE="/home/jsl19/dev/python/imatools/imatools"

python $CODE/segmentation_tools.py smooth -in $DATA -out $OUTPUT_NAME --resample-sigma $SIGMA --resample-close 

