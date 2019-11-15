#!/bin/bash

set -ex

echo "inside rollbar script"
echo $@
echo "0: $0"
BASEDIR="`dirname $0`"

SHAFILE="$BASEDIR/$1"
ls $SHAFILE
