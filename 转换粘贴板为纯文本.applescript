#!/usr/bin/osascript

# @raycast.title Paste as Plain Text
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description 将剪切板内容转换为纯文本。Trans the Clipboard Contents to Plain Text.

# @raycast.icon 📋
# @raycast.mode silent
# @raycast.packageName pastePlainText
# @raycast.schemaVersion 1

# 将剪切板内容转换为纯文本
set the clipboard to (get the clipboard) as text

# 粘贴纯文本内容
tell application "System Events"
  key code 9 using {command down}
end tell