#!/usr/bin/osascript

# @raycast.title Video Trans
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description Trans Video to Other Format.

# @raycast.icon 📺
# @raycast.mode silent
# @raycast.packageName videoTrans
# @raycast.schemaVersion 1

# 选择目标格式
display dialog "将选中文件转换为：" buttons {".mp4", ".flv", ".mkv"} default button ".mp4"

# 设置格式变量
set inputText to the button returned of the result

# 获取选中文件
tell application "Finder"
    set selectedItems to selection
end tell

# 设置文件名变量
set itemName to ""

# 使用一个遍历，挨个转换所有文件
repeat with theItem in selectedItems
    set theName to (name of theItem)
    set thePath to theItem as alias
    do shell script "/opt/homebrew/bin/ffmpeg -i " & (POSIX path of thePath) & " -codec copy " & (POSIX path of thePath) & inputText
    do shell script "mv " & (POSIX path of thePath) & " ~/.Trash"
    log theName & "转换完成"
#    display dialog theName buttons {"取消", "好的"} default button "好的" giving up after 0.1
end repeat

# 显示转换完成
display dialog "转换完成！"