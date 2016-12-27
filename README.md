# foldermp4convert.sh
Command line script to batch encode AVI and WMV files into a new MP4 and *retain metadata*, then *delete the original file*

This is particularly useful if you like to retain time-stamps for home videos so they are sorted correctly within Digital Asset Management applications like Photos, Lightroom, etc.

Script recursively traverses a directory structure and converts files that match the find criteria.

Inspiration from SurlyJake
http://www.surlyjake.com/blog/2010/08/10/script-to-run-handbrake-recursively-through-a-folder-tree/


# Directions

# *Back Up your files before running this script*

Usage: `foldermp4convert.sh [convert_dir]`

If `convert_dir` is not set, script executes in current directory

Edit script and update `PRESET` variable to match encoding desired
If your desired encoding is not `MP4`, then consider changing the output filename structure.

Place script in `/usr/local/scripts` (or your choice)
Make sure `pwd` is in your `$PATH`
Script assumes `HandBrakeCLI` is in your `$PATH`


Handbrake Encoding Presets:
If using HandBrakeCLI, then set `PRESET` to the encoding option of your choice.
Change `PRESET` to specify a different handbrake preset. 
List HandBrake presets by running: `HandBrakeCLI --preset-list`
HandBrakeCLI docs are here: https://handbrake.fr/docs/en/latest/cli/cli-guide.html


# Warnings

# *Back Up your files before running this script*

Script is hardcoded to:
- look for the following filename extensions: `*.avi, *.wmv, *.3gp, *.3g2`
- convert to mp4 with `*.mp4` filename extension
- append "converted" to the filename
