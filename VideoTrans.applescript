#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title VideoTrans
# @raycast.mode silent

# Documentation:
# @raycast.description Trans Video to Other Format.
# @raycast.author LawrenceLiu

display dialog "将选中文件转换为：" buttons {".mp4", ".flv", ".mkv"} default button ".mp4"
set inputText to the button returned of the result

tell application "Finder"
    set selectedItems to selection
end tell

set itemName to ""

repeat with theItem in selectedItems
    set theName to (name of theItem)
    set thePath to theItem as alias
    do shell script "/opt/homebrew/bin/ffmpeg -i " & (POSIX path of thePath) & " -codec copy " & (POSIX path of thePath) & inputText
    do shell script "mv " & (POSIX path of thePath) & " ~/.Trash"
    log theName & "转换完成"
#    display dialog theName buttons {"取消", "好的"} default button "好的" giving up after 0.1
end repeat

display dialog "转换完成！"