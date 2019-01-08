#!/bin/sh

set -e

npm install

firebase use staging

if [ -z "$FIREBASE_TOKEN" ]; then
    echo "FIREBASE_TOKEN is required to run commands with the firebase cli"
    exit 126
fi

if [ -n "$PROJECT_ID"]; then
    firebase use $PROJECT_ID
fi

sh -c "firebase $*"
