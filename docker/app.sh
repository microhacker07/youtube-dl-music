#!/bin/sh

chmod +x ./downloader.sh

printf "Starting download of all playlists\n"
./downloader.sh

chown -R 1000 /config /downloads

