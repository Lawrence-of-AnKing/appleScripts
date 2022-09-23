#!/usr/bin/osascript

# @raycast.title MacGesture Restart
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description 使用MacGesture时，当电脑睡眠再启动时，有概率出现出现：鼠标路径显示消失。重启可解决问题。

# @raycast.icon 🖱️
# @raycast.mode silent
# @raycast.packageName macGestureRestart
# @raycast.schemaVersion 1

# 判断条件
# 如果MacGesture正在运行，那么直接退出
# 如果没在运行，那么激活它
tell application "MacGesture"
   if its running then
       quit
       delay 0.2
   end if
   activate
end tell