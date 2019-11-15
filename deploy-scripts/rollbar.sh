#!/bin/bash

set -ex

echo "inside rollbar script"
pwd
echo $@
echo "0: $0"
BASEDIR=`dirname $0`
BASE_REPO=`realpath $BASEDIR/..`

echo 
echo "------"
find /tmp

echo "------"

SHAFILE=`realpath $BASE_REPO/$1"
ls $SHAFILE
cat $SHAFILE
