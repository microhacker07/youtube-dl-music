#!/bin/sh

DIR=$(pwd)

cd docker

docker build -t music_downloader .
docker run -ti --rm -v "${DIR}/config:/config" -v "${DIR}/unidentified-music/:/downloads" --env USERID="${USERID}" music_downloader
