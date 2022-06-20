#!/bin/bash

ATOK="put yours here"

if [ "$1" = "" ]; then
    TEAM="1"
else
    TEAM=$1
fi

if [ "$2" = "" ]; then
    TEST="test_setups"
else
    TEST=$2
fi

if [ "$3" = "" ]; then
    HASH=0414b67bf045337cd823bcd52520bb3f88039be1
    HASH="master"
else
    HASH=$3
fi

curl -s -X GET \
    "http://localhost:8030/web_server_api/team/git_schemas/$TEAM/$HASH/$TEST" \
    -H "accept: application/json" \
    -H "Authorization: Token $ATOK"