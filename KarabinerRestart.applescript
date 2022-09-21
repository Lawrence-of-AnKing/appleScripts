#!/usr/bin/osascript

# @raycast.title Karabiner Restart
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description While the macOs into sleep for a while, the input of zh-Hans may turn to Engilish puctuation, try restart Karabiner-Elements may solve this bug.

# @raycast.icon 🔠
# @raycast.mode fullOutput
# @raycast.packageName karabinerRestart
# @raycast.schemaVersion 1

tell application "Karabiner-Elements"
   if its running then
       quit
       delay 0.2
   end if
   activate
end tell

tell application "System Events"
    key code 13 using {command down}
end tell