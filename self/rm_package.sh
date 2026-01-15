#!/bin/bash

FEEDS_FOLDER="$1"
if [ -z "$FEEDS_FOLDER" ]; then
    echo "Usage: $0 <feeds_folder>"
    exit 1
fi
cd $FEEDS_FOLDER || exit 2

#qb冲突的包
rm -rf packages/libs/rblibtorrent
rm -rf luci/applications/luci-app-qbittorrent

#tr冲突的包
rm -rf packages/net/transmission
rm -rf packages/net/transmission-web-control