#!/usr/bin/osascript

# @raycast.title asTest
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Test Script.

# @raycast.icon 📝
# @raycast.mode fullOutput
# @raycast.packageName Apple script test.
# @raycast.schemaVersion 1


tell application "System Events"
  delay 0.5
  keystroke space using command down
  delay 0.5
  keystroke "Text"
  delay 0.5
  keystroke "Edit"
  delay 0.5
  keystroke return
  delay 1
  keystroke "Hello world!"
end tell