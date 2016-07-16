#!/bin/bash

while true; do
    pid=`pidof -s vod_httpserver`
    if [ -z "$pid" ]; then
        ./portal
    else
        sleep 60
    fi
done

