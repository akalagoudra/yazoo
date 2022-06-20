#!/bin/bash

ATOK="put yours here"

CATEGORY="branches"
CATEGORY="tags"
CATEGORY="commits"

if [ "$1" = "" ]; then
    TEAM="1"
else
    TEAM=$1
fi

if [ "$2" = "" ]; then
    CATEGORY="commits"
else
    CATEGORY=$2
fi

curl -s -X GET \
    "http://localhost:8030/web_server_api/team/git_hashes/$TEAM/$CATEGORY" \
    -H "accept: application/json" \
    -H "Authorization: Token $ATOK"