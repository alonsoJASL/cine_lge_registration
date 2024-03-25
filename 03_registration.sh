#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ] ; then
    >&2 echo 'No arguments supplied'
    exit 1
fi

MOVING=$1
FIXED=$2
MODEL=$3
OUTPUT_NAME=$4

CODE="/home/jsl19/syncdir/cemrgapp_prebuilds/v2018.04.2/linux/Externals/MLib/"

$CODE/register $MOVING $FIXED -model $MODEL -dofout $OUTPUT_NAME 