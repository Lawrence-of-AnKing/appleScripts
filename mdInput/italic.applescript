#!/usr/bin/osascript

# @raycast.title italic in markdown
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Using Karabiner-Elements to activate this script, by right_shift + i to input "**" and move behind.

# @raycast.icon *️⃣
# @raycast.mode silent
# @raycast.packageName boldMarkdown
# @raycast.schemaVersion 1

tell application "System Events"
    keystroke "**"
    key code 123
end tell