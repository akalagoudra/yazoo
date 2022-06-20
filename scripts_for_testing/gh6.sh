#!/bin/bash

ATOK="put yours here"

TEAM=1
OWNER=stewartj
REPO=gel.com
GTOK="ababababab"

curl -s -X GET \
    "http://localhost:8030/web_server_api/team/githubaccount/$OWNER/$REPO/$GTOK/$TEAM" \
    -H "accept: application/json" \
    -H "Authorization: Token $ATOK"