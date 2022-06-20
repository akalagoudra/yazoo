#!/bin/bash

ATOK="put yours here"

TEAM=1

curl -s -X PUT \
    "http://localhost:8030/web_server_api/team/githubbind/update/$TEAM" \
    -H "accept: application/json" \
    -H "Authorization: Token $ATOK"