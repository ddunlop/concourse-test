#!/bin/bash

set -ex

echo "inside rollbar script"
echo $@
echo "0: $0"
BASEDIR="`dirname $0`"
BASE_REPO="`cd "$BASEDIR/.." && pwd`"

find $BASE_REPO

SHAFILE="$BASE_REPO/$1"
ls $SHAFILE
cat $SHAFILE
