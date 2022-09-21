#!/usr/bin/osascript

# @raycast.title italic in markdown
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Using Karabiner-Elements to activate this script, by right_shift + l to input "- [ ] ".

# @raycast.icon 
# @raycast.mode silent
# @raycast.packageName italicMarkdown
# @raycast.schemaVersion 1

tell application "System Events"
    keystroke "- [ ] "
end tell