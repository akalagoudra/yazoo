#!/bin/bash
# echo "get token for docker ctf api / curl requests..."
curl -s -X POST \
    "http://localhost:8030/web_server_api/user/login/" \
    -H "accept: application/json" \
    -H "Content-Type: application/json" \
    -d "{ \"username\": \"admin@xebrium.com\", \"password\": \"admin2019\"}"
if [ "$?" != 0 ]; then
    printf "error %s\n" $?
fi