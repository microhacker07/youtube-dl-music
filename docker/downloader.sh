#!/bin/bash

FILENAME_OUTPUT="/downloads/%(title)s.%(ext)s"
PLAYLIST_FILE="/config/playlists.txt"

COOKIES="--cookies /config/cookies.txt"
DOWNLOAD_ARCHIVE="--download-archive /config/downloaded.txt"

OPTIONS="${COOKIES} ${DOWNLOAD_ARCHIVE} --no-post-overwrites -f bestaudio[ext=m4a] --extract-audio --add-metadata"

yt-dlp $OPTIONS -o "${FILENAME_OUTPUT}" -a "${PLAYLIST_FILE}"
