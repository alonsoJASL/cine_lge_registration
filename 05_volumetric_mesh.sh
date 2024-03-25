#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ] ; then
    >&2 echo 'No arguments supplied'
    exit 1
fi

SEGMENTATION_DIR=$1
SEGMENTATION_NAME=$2
PARFILE=$3

CODE="/home/jsl19/dev/python/imatools/imatools"
M3D="/home/jsl19/syncdir/cemrgapp_prebuilds/v2018.04.2/linux/Externals/M3DLib"

# convert segmentation to inr 
python $CODE/segmentation_tools.py inr -in "$SEGMENTATION_DIR/$SEGMENTATION_NAME" -out converted.inr 

# create meshing parameters file 
python $CODE/m3d_parfile.py new --filepath $PARFILE --outdir "$SEGMENTATION_DIR/mesh" --seg_dir $SEGMENTATION_DIR --seg_name converted.inr 

# call meshtools3d 
$M3D/meshtools3d -f $PARFILE 
