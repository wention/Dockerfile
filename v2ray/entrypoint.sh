#!/bin/sh

if [ ! -e /data ];then
    mkdir -p /data
fi

if [ ! -e /data/config.json ];then
    cp /etc/v2ray/config.json /data/config.json
fi

exec v2ray -config=/data/config.json
