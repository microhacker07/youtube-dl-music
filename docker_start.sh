#!/bin/sh

DIR=$(pwd)

cd docker

docker build -t music_downloader .
docker run -ti --rm -v "${DIR}/config:/config" -v "${DIR}/music:/music" -v "${DIR}/unidentified-music/:/download" --env USERID="${USERID}" music_downloader
