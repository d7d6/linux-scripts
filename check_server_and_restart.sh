#!/bin/bash

status_code=$(curl --write-out %{http_code} --silent --output /dev/null http://et8000/index.html)

if [[ "$status_code" -ne 200 ]] ; then
    echo $(date +%Y-%m-%d_%H:%M) "Status code: " $status_code
    python /mnt/DATA/apks-links/HTTPServer.py &
else
    exit 0
fi
