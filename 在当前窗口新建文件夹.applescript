#!/usr/bin/osascript

# @raycast.title Creat a Folder
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description 在当前文件夹中创建一个空白文件夹。Creat a blank folder in current folder.

# @raycast.icon 📁
# @raycast.mode silent
# @raycast.packageName newFolderCreater
# @raycast.schemaVersion 1

# 显示输入框
display dialog "输入文件夹名称 / Input folder name:" buttons {"YES", "NO"} default button "YES" default answer ""

# 获取输入内容
set fileName to (text returned) of the result

# 如果未打开访达，则弹窗提示
if application "Finder" is not running then
	display dialog "未打开访达！ / Open Finder.app First!" buttons {"YES", "NO"} default button "YES"
end if

# 创建指定文件名的文件
# 返回创建成功的提示
tell application "Finder"
	make new folder at (folder of the front window as alias) with properties {name:fileName}
	return "创建成功！ / Creat Success!"
end tell