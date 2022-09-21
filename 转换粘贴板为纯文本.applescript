#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Trans Clipboard to Plain Text
# @raycast.mode silent

# Documentation:
# @raycast.description Trans clipboard context to plain text and paste it.
# @raycast.author LawrenceLiu

set the clipboard to (get the clipboard as text)

tell application "System Events"
  key code 9 using {command down}
end tell