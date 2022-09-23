#!/usr/bin/osascript

# @raycast.title Karabiner Restart
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description 使用karabiner时，当macOS睡眠后，如果使用外接蓝牙键盘，可能出现中文输入法下英文标点的情况，此时通过重启karabiner可解决，疑似 `input source` 老bug。While the macOS into sleep for a while, the input of zh-Hans may turn to Engilish puctuation, try restart Karabiner-Elements may solve this bug.

# @raycast.icon 🔠
# @raycast.mode silent
# @raycast.packageName karabinerRestart
# @raycast.schemaVersion 1

# 判断条件
# 如果Karabiner-Elements正在运行，那么直接退出
# 如果没在运行，那么激活它
tell application "MacGesture"
   if its running then
       quit
       delay 0.2
   end if
   activate
end tell

# 关闭弹出的窗口
tell application "System Events"
    key code 13 using {command down}
end tell