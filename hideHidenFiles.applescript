#!/usr/bin/osascript

# @raycast.title Show hiden files in finder
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description 显示访达中的隐藏文件。 / Show the hiden files in Finder.

# @raycast.icon 🔎
# @raycast.mode fullOutput
# @raycast.packageName showHidenFiles
# @raycast.schemaVersion 1

# 此脚本的意义在于：
# 将原来的隐藏显示隐藏文件的快捷键 `Shift` + `Command` + `.` 映射成英文句号，用于在中文状态下输入英文句号
# 因此，原来的的功能被覆盖，所以要用脚本+ Raycast 的方式来弥补

# 该指令通过修改 `~/Library/Preferences/com.apple.finder.plist` 路径下的配置文件实现隐藏隐藏文件

tell application "Teriminal"
    activate
    do shell script "defaults write com.apple.Dock showhidden -bool NO"
end tell