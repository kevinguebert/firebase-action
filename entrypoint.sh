#!/bin/sh

set -e

npm install

if [ -z "$FIREBASE_TOKEN" ]; then
    echo "FIREBASE_TOKEN is required to run commands with the firebase cli"
    exit 126
fi

# if [ -n "$PROJECT_ID"]; then
    
# fi

firebase use $PROJECT_ID

sh -c "firebase $*"
