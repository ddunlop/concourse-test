#!/bin/bash

set -ex

REVISION_FILE=$1

BASEDIR=`dirname $0`
BASE_REPO=`realpath $BASEDIR/..`

REVISION_FULLPATH=`realpath $BASE_REPO/$REVISION_LOCATION`

cat $REVISION_FULLPATH

# curl -i -X POST https://api.rollbar.com/api/1/deploy/ \
curl -i -X POST https://postman-echo.com/post \
  -F "access_token=$ROLLBAR_ACCESS_TOKEN" \
  -F "environment=$ENVIRONMENT" \
  -F "revision="$(cat $REVISION_FULLPATH)
