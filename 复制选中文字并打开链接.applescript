#!/usr/bin/osascript

# @raycast.title Open Link Directly
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Open the link directly by Edge, whatever it contains http:// or https://.

# @raycast.icon 🖇️
# @raycast.mode silent
# @raycast.packageName 
# @raycast.schemaVersion 1

# 复制选中文字
tell application "System Events"
	key code 9 using (command down)
end tell

# 剪切板内容设置为变量
# 设置判断条件：
# 如果剪切板中的字符包含 "http://" ，则什么都不做
# 如果剪切板中的字符包含 "https://" ，则什么都不做
# 其余情况，则添加上 "http://"
# 调用Edge第一个窗口，用重组的链接新建TAB
tell application "Microsoft Edge"
	activate
	set theURL to the clipboard
	if theURL contains "http://" then
		set theURL to theURL
	else if theURL contains "https://" then
		set theURL to theURL
	else
		set theURL to "http://" & theURL
	end if
	tell front window
		make new tab with properties {URL:theURL}
	end tell
end tell