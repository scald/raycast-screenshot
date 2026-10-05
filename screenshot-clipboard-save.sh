#!/bin/bash
# @raycast.schemaVersion 1
# @raycast.title Screenshot to Clipboard + Save
# @raycast.mode silent
# @raycast.icon 📸

dir="$HOME/Pictures/Screenshots"
mkdir -p "$dir"
f="$dir/Screenshot $(date '+%Y-%m-%d at %H.%M.%S').png"
screencapture -i "$f" || exit 0
[ -f "$f" ] && osascript -e "set the clipboard to (read (POSIX file \"$f\") as «class PNGf»)"
