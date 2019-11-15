#!/bin/bash

set -ex

OUTDIR="$1"

BASEDIR="`dirname $0`"

BASE_REPO="`cd "$BASEDIR/.." && pwd`"

cd "$BASE_REPO"

mkdir -p "$OUTDIR"
git rev-parse HEAD > "$OUTDIR/SHA"

cd $OUTDIR
cat SHA
