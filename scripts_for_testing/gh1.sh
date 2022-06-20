#!/bin/bash

ATOK="put yours here"

TEAM=1

if [ "$1" != "" ]; then
TEAM=$1
fi

curl -s -X GET \
    "http://localhost:8030/web_server_api/team/git_repo_update/$TEAM" \
    -H "accept: application/json" \
    -H "Authorization: Token $ATOK"