#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ] ; then
    >&2 echo 'No arguments supplied'
    exit 1
fi

DATA=$1
OUTPUT=$2 
INTERP=$3 

echo "Resampling $DATA to $OUTPUT with $INTERP interpolation"
CODE="/home/jsl19/installs/mirtk.base/build/bin"
$CODE/mirtk resample-image $DATA $OUTPUT -size 1 1 1 -interp $INTERP

# now reorient to RAI 

echo "Reorienting $OUTPUT to RAI"
CEMRG="/home/jsl19/dev/build/CEMRG2-U20.04/MITK-build/bin"
$CEMRG/MitkCemrgResampleReorient -i $OUTPUT -o $OUTPUT --reorient



