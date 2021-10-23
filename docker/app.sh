#!/bin/sh

chmod +x ./downloader.sh
chmod +x ./organizer.sh

beet config -p
cp /config/beets_config.yml /root/.config/beets/config.yaml

printf "Starting download of all playlists\n"
./downloader.sh

printf "Starting beets\n"
./organizer.sh

chown -R 1000 /config /music /downloads

