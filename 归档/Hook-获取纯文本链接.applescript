#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Trans Hook URL to Plain Text URL
# @raycast.mode silent

# Documentation:
# @raycast.description Trans Hook URL to Plain Text URL.
# @raycast.author LawrenceLiu

# 通过快捷键方式，获取当前程序的HookURL
tell application "System Events"
    key code 4 using {option down, shift down, command down}
end tell

set theList to (get the clipboard as list)
set the clipboard to (item 1 of theList as text)

(*
tell application "System Events"
  key code 9 using {command down}
end tell
*)