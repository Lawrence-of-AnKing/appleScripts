#!/usr/bin/osascript

# @raycast.title Path Get
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description 获取选中文件的路径地址。Get the choosen file's path.

# @raycast.icon 📑
# @raycast.mode silent
# @raycast.packageName pathGet
# @raycast.schemaVersion 1

# 将选中文件转换为列表
tell application "Finder"
    set selectedItems to selection as alias list
end tell

# 如果列表为空，即未选择文件，则直接退出
# 否则，获取所选文件的上级目录，并创建空字符，用于拼接多个路径
if selectedItems is {} then
    return
else
    set parentPath to do shell script "dirname " & quoted form of POSIX path of (item 1 of selectedItems)
    set pathData to ""
end if

# 遍历选中文件
repeat with theItem in selectedItems
    set pathData to pathData & POSIX path of theItem & linefeed
end repeat

# 发送结果到剪切板
set the clipboard to pathData

# 提示获取地址成功
return "成功获取地址：" & pathData