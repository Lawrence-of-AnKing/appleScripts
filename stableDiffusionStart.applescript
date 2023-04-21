#!/usr/bin/osascript

# @raycast.title Start Stable Diffusion WebUI
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description 启动 Stable Diffusion WebUI 并打开对应网页。

# @raycast.icon 🎨
# @raycast.mode silent
# @raycast.packageName stableDiffusionStart
# @raycast.schemaVersion 1

# 向控制台发出指令，打开 Stable Diffusion WebUI （需要根据自己用户名的不同，变更地址）
# 此指令会导致长时间等待：do shell script "cd /Users/liu/stable-diffusion-webui/; ./webui.sh"
tell application "Terminal"
    activate
    do script "cd /Users/liu/stable-diffusion-webui"
    delay 0.2
    do script "./webui.sh" in front window
end tell

# 根据自己 Mac 打开程序所需的时间，设定延时（单位：秒），当延时走完，打开对应网页
# 也可以注释掉，注意终端的情况，当出现对应提示时刷新网页
#delay 20

# 打开 Stable Diffusion WebUI 的链接
tell application "Google Chrome"
    activate
    open location "http://127.0.0.1:7860"
end tell

