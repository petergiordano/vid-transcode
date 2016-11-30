#!/bin/bash

# Use PRESET if using HandBrake CLI
PRESET=“Universal”
if [ -z "$1" ] ; then
    TRANSCODEDIR="."
else
    TRANSCODEDIR="$1"
fi


# Ignores dot files, Uses hardcoded file extensions, then REMOVES original file
  find "$TRANSCODEDIR"/*  \( ! -regex '.*/\..*' \) -type f \( -name "*.avi" -or -name "*.AVI" -or -name "*.wmv" -or -name "*.WMV" -or -name "*.3gp" -or -name "*.3g2" \) -exec bash -c 'HandBrakeCLI -i "$1" -o "${1%\.*}"-converted.mp4 --preset="$PRESET" && touch -r "$1" "${1%\.*}"-converted.mp4 && rm "$1"' __$


# This one looks for only one type of file extension
# find "$TRANSCODEDIR"/*  -type f -name "*.wmv" -exec bash -c 'HandBrakeCLI -i "$1" -o "${1%\.*}"-converted.mp4 --preset="$PRESET" && touch -r "$1" "${1%\.*}"-converted.mp4 && rm "$1"' __ {} \;





# This code is from https://47ronin.com/2014/04/07/preserve-photo-video-media-metadata-transcoding/
# Should work on *.AVI files -- but not good if folder contains other filename extensions
# Should PRESERVE meta data
# ls -p *.AVI | xargs -I {} /usr/local/bin/ffmpeg -i {} -y -vcodec copy -acodec libfaac -map_metadata 0 {}.mp4
# ls -p *.AVI | xargs -I {} touch -r {} {}.mp4
