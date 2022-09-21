#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Trans Hook URL to Markdown URL
# @raycast.mode silent

# Documentation:
# @raycast.description Trans Hook URL to Markdown URL.
# @raycast.author LawrenceLiu

# 通过快捷键方式，获取当前程序的HookURL
tell application "System Events"
    key code 4 using {option down, shift down, command down}
end tell

# 赋值Markdown风格链接的后端
set theList to (get the clipboard as list)
set theURL to (item 1 of theList as text)
set hookLastURL to "(" & theURL & ")"

#display dialog hookLastURL

# 获取当前程序的窗口名
tell application "System Events"
    set frontApp to name of first application process whose frontmost is true
end tell

tell application frontApp
    if the (count of windows) is not 0 then
        set windowName to name of front window
    end if
end tell

# 赋值Markdown风格链接的前端为窗口名，并拼接前后部分
set hookFirstURL to "[" & windowName & "]"
set hookMdURL to hookFirstURL & hookLastURL

# 将拼接后的链接赋值给剪切板
set the clipboard to hookMdURL

#display dialog hookMdURL