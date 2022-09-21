#!/usr/bin/osascript

# @raycast.title m1ddc Display Control
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Due to ddcctl usable on M1 Mac (https://github.com/kfix/ddcctl/issues/122), here comes a new tools name m1ddc (https://github.com/waydabber/m1ddc). I creat this applescript to use it easier.

# @raycast.icon 🖥️
# @raycast.mode silent
# @raycast.packageName m1ddcDisplayControl
# @raycast.schemaVersion 1

# 切换显示器
## 切换到DP1
m1ddc display 1 set input 15
## 切换到TYPE-C
m1ddc display 1 set input 27

# 亮度调节
## 亮度+10
m1ddc chg luminance +10
## 亮度-10
m1ddc chg luminance -10

# 音量调节（虽然用不到）
## +10
m1ddc chg volume +10
## -10
m1ddc chg volume -10

# 将音量旋钮映射为亮度调节，并将按下映射为切换显示器