#!/bin/bash

status_code=$(/usr/bin/lsof -ti :9080)

if [[ -z "$status_code" ]] ; then
    echo $(date +%Y-%m-%d_%H:%M) "Status code: " $status_code
    python /storage/share/scripts/apks-links-main/HTTPServer.py &
else
    exit 0
fi
