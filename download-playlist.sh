#!/bin/bash

#youtube-dl --download-archive downloaded.txt --no-post-overwrites --write-thumbnail --add-metadata -ciwx --audio-format mp3 -o "./%(playlist)s/%(title)s-%(id)s.%(ext)s" -a playlists.txt

#youtube-dl --cookies ./cookies.txt --download-archive downloaded.txt --no-post-overwrites -f bestaudio[ext=m4a] --extract-audio --add-metadata --write-thumbnail -o "./music/%(title)s - %(id)s.%(ext)s" -a playlists.txt

FILENAME_OUTPUT="./music/%(title)s - %(id)s.%(ext)s"
COOKIES="--cookies ./cookies.txt"
OPTIONS="${COOKIES} --download-archive downloaded.txt --no-post-overwrites -f bestaudio[ext=m4a] --extract-audio --add-metadata"

echo -e "Starting download of all playlists in ./playlists.txt\n"
STATUS=1

while [ "$STATUS" -eq "1" ]
do
    youtube-dl $OPTIONS -o "${FILENAME_OUTPUT}" -a playlists.txt
    STATUS=$?
    if [ "$STATUS" -eq "1" ]
    then
        echo -e "\nRestarting the download -----\n";
    fi
done

# From https://gist.github.com/tabrindle/ed9f77b4e96f4c98b49b

#find ./music -name "*.webp" -print0 | parallel -0 dwebp {} -o {.}.png
#find ./music -type f -name "*.webp" -exec rm -f {} \;sudo
