#!/bin/bash

# Purpose of this script is to batch transcode specific video files with HandBrake CLI - Command Line Interface
# Inspiration from SurlyJake
# http://www.surlyjake.com/blog/2010/08/10/script-to-run-handbrake-recursively-through-a-folder-tree/
# Modified to restore metadata for creation dates for Digital Asset Management apps (e.g. Lightroom, Photos)

# Place script in /usr/local/scripts (or your choice)
# Make sure location is in your $PATH
# Script assumes HandBrakeCLI is in your $PATH

# Use PRESET if using HandBrake CLI
# Change this to specify a different handbrake preset. You can list them by running: "HandBrakeCLI --preset-list"
PRESET=“Universal”

if [ -z "$1" ] ; then
    CONVERTDIR="."
else
    CONVERTDIR="$1"
fi


# Ignores dot files, uses hardcoded file extensions, restores the metadata, then REMOVES original file
  find "$CONVERTDIR"/*  \( ! -regex '.*/\..*' \) -type f \( -name "*.avi" -or -name "*.AVI" -or -name "*.wmv" -or -name "*.WMV" -or -name "*.3gp" -or -name "*.3g2" \) -exec bash -c 'HandBrakeCLI -i "$1" -o "${1%\.*}"-converted.mp4 --preset="$PRESET" && touch -r "$1" "${1%\.*}"-converted.mp4 && rm "$1"' __$
