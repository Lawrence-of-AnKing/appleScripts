#!/bin/bash

# @raycast.title shTest
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description Test Script.

# @raycast.icon 📝
# @raycast.mode fullOutput
# @raycast.packageName Bash script test.
# @raycast.schemaVersion 1

tell application "System Events"
    tell process "VMware Fusion"
            tell windows 1
                entire contents
            end tell
    end tell
end tell