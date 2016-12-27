# vid-transcode
Script to batch encode AVI and WMV files into MP4

Purpose of this script is to batch transcode specific video files with HandBrake CLI - Command Line Interface

Inspiration from SurlyJake
http://www.surlyjake.com/blog/2010/08/10/script-to-run-handbrake-recursively-through-a-folder-tree/

Modified to restore metadata for creation dates for Digital Asset Management apps (e.g. Lightroom, iPhoto)

# Directions

# ** Back Up your files before running this script **
Place script in /usr/local/scripts (or your choice)
Make sure location is in your $PATH
Script assumes HandBrakeCLI is in your $PATH

If using HandBrakeCLI, then set PRESET to the encoding option of your choice.

Change this to specify a different handbrake preset. 

List HandBrake presets by running: "HandBrakeCLI --preset-list"

HandBrakeCLI docs are here: https://handbrake.fr/docs/en/latest/cli/cli-guide.html

# Warnings

Back up your files before running this script 

Script is hardcoded to:
- convert to mp4 with *.mp4 filename extension
- look for the following filename extensions: *.avi, *.wmv, *.3gp, *.3g2
- append "converted" to the filename
