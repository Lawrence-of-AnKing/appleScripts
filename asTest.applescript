#!/usr/bin/osascript

# @raycast.title asTest
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description Test Script.

# @raycast.icon 📝
# @raycast.mode fullOutput
# @raycast.packageName Apple script test.
# @raycast.schemaVersion 1


tell application "System Events"
    tell process "VMware Fusion"
            tell windows 1
                tell group 1 of group 1 of toolbar 1
                    entire contents
                end tell
            end tell
    end tell
end tell