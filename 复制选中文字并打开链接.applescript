#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Direct Link
# @raycast.mode silent

# Optional parameters:
# @raycast.icon
# @raycast.packageName DirctLink

# Documentation:
# @raycast.description Start link by Edge directly.
# @raycast.author LawrenceLiu

tell application "Microsoft Edge"
	activate
	set theURL to the clipboard
	if theURL contains "http://" then
		set theURL to theURL
	else if theURL contains "https://" then
		set theURL to theURL
	else
		set theURL to "http://" & theURL
	end if
	tell front window
		make new tab with properties {URL:theURL}
	end tell
end tell

