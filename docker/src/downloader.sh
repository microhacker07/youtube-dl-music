#!/bin/bash

#youtube-dl --download-archive downloaded.txt --no-post-overwrites --write-thumbnail --add-metadata -ciwx --audio-format mp3 -o "./%(playlist)s/%(title)s-%(id)s.%(ext)s" -a playlists.txt

#youtube-dl --cookies ./cookies.txt --download-archive downloaded.txt --no-post-overwrites -f bestaudio[ext=m4a] --extract-audio --add-metadata --write-thumbnail -o "./music/%(title)s - %(id)s.%(ext)s" -a playlists.txt

FILENAME_OUTPUT="/downloads/%(title)s - %(id)s.%(ext)s"
COOKIES="--cookies /config/cookies.txt"
DOWNLOAD_ARCHIVE="--download-archive /config/downloaded.txt"
OPTIONS="${COOKIES} ${DOWNLOAD_ARCHIVE} --no-post-overwrites -f bestaudio[ext=m4a] --extract-audio --add-metadata"
PLAYLIST_FILE="/config/playlists.txt"

echo -e "Starting download of all playlists\n"

yt-dlp $OPTIONS -o "${FILENAME_OUTPUT}" -a "${PLAYLIST_FILE}"

# From https://gist.github.com/tabrindle/ed9f77b4e96f4c98b49b

#find ./music -name "*.webp" -print0 | parallel -0 dwebp {} -o {.}.png
#find ./music -type f -name "*.webp" -exec rm -f {} \;sudo
