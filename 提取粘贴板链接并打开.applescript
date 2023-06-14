#!/usr/bin/osascript

# @raycast.title Open Link from Clipboard
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description 从粘贴板中提取链接，并使用 Chrome 打开

# @raycast.icon 🖇️
# @raycast.mode fullOutput
# @raycast.packageName linkOpenFromClipboard
# @raycast.schemaVersion 1

display dialog "hello" 


(*
set theText to (the clipboard as text)
set theLinks to {}
set linkPattern to "(https?://\\\\S+\\\\b)"
(*
set theMatches to find text linkPattern in theText with regexp and string result

log theMatches

(*if (count of theMatches) > 0 then
    repeat with theMatch in theMatches
        set the end of theLinks to contents of theMatch
    end repeat
end if

if (count of theLinks) > 0 then
    tell application "Google Chrome"
        activate
        repeat with theLink in theLinks
            open location theLink
        end repeat
    end tell
end if
*)

# 测试：https://www.baidu.com