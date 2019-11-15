#!/bin/bash

set -ex

OUTDIR="$1"

pwd

BASEDIR=`dirname $0`

BASE_REPO=`realpath $BASEDIR/..`

echo $BASE_REPO

cd "$BASE_REPO"

mkdir -p "$OUTDIR"
git rev-parse HEAD > "$OUTDIR/SHA"

find /tmp
