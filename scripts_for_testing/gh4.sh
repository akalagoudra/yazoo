#!/bin/bash

ATOK="put yours here"

TEAM=$1
HASH=$2
SCHEMA=$3

curl -s -X POST \
    "http://localhost:8030/web_server_api/team/git_contract/$TEAM/" \
    -d '{"repo_hash": "'$HASH'", "schema_path": "'$SCHEMA'"}' \
    -H "Content-Type: application/json" \
    -H "accept: application/json" \
    -H "Authorization: Token $ATOK"