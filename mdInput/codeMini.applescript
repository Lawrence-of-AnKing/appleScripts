#!/usr/bin/osascript

# @raycast.title code mini in markdown
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Using Karabiner-Elements to activate this script, by right_shift + c to input "``".

# @raycast.icon 
# @raycast.mode silent
# @raycast.packageName codeMiniMd
# @raycast.schemaVersion 1

tell application "System Events"
    keystroke "``"
    key code 123
end tell