#!/usr/bin/env bash
set -euo pipefail

if [ $# -eq 0 ] ; then
    >&2 echo 'No arguments supplied'
    exit 1
fi

SOURCE=$1
OUTPUT=$2
DOFIN=$3

CODE="/home/jsl19/syncdir/cemrgapp_prebuilds/v2018.04.2/linux/Externals/MLib/"

$CODE/transform-image $SOURCE $OUTPUT -dofin $DOFIN -interp nn