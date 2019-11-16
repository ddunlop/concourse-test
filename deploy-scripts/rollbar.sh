#!/bin/bash

set -e

REVISION_FILE=$1

SCRIPT_DIR=`dirname $0`
REPO_BASE_DIR=`realpath $SCRIPT_DIR/..`

REVISION_FULLPATH=`realpath $REPO_BASE_DIR/$REVISION_FILE`

SHA=$(cat $REVISION_FULLPATH)

echo "Updating the $ENVIRONMENT to revision: $SHA"

curl -i -X POST https://api.rollbar.com/api/1/deploy/ \
  -F "access_token=$ROLLBAR_ACCESS_TOKEN" \
  -F "environment=$ENVIRONMENT" \
  -F "revision=$SHA"
