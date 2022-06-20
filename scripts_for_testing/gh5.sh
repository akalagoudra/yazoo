#!/bin/bash

ATOK="put yours here"

TEAM=1
HASH=0414b67bf045337cd823bcd52520bb3f88039be1
SCHEMA=test_setups/dvt/milan/testbed1.json
SCHEMA=testbed1.json

curl -s -X GET \
    "http://localhost:8030/web_server_api/team/githubbind/$TEAM" \
    -H "accept: application/json" \
    -H "Authorization: Token $ATOK"