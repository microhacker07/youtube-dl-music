#!/bin/sh

chmod +x ./src/downloader.sh
chmod +x ./src/organizer.sh

./src/downloader.sh

./src/organizer.sh

chown -R 1000 /config /music /download

