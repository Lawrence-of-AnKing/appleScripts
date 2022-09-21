#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title TransPath
# @raycast.mode silent

# Optional parameters:
# @raycast.icon
# @raycast.packageName TransPath

# Documentation:
# @raycast.description Trans the selected file to path, and copy to clipboard.
# @raycast.author LawrenceLiu

tell application "Finder" to set selectedItems to selection as alias list
-- 没选择的话直接退出脚本
if selectedItems is {} then return
-- 获得所选文件/文件夹的父目录。
set parentPath to do shell script "dirname " & quoted form of POSIX path of (item 1 of selectedItems)
-- 用于拼接多个路径
set pathData to ""

-- 历遍选择的项目
repeat with theItem in selectedItems
    set pathData to pathData & POSIX path of theItem & linefeed
end repeat

-- 发送到剪贴板
set the clipboard to pathData