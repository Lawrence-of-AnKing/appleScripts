#!/usr/bin/osascript

# @raycast.title Close the VMware Fusion
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description 关闭 VMware Fusion 及开启的虚拟机。Close the VMware Fusion and the opened Virtual Machine.

# @raycast.icon 🖥️
# @raycast.mode silent
# @raycast.packageName closeVMF
# @raycast.schemaVersion 1

tell application "System Events" to tell process "VMware Fusion"
    click menu bar item "虚拟机" of menu bar 1
    click menu item "关机" of menu bar item "虚拟机" of menu bar 1
    delay 1
    quit
end tell
