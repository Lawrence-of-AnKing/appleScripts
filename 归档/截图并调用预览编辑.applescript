#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title CaptureEditor 
# @raycast.mode silent

# Documentation:
# @raycast.description Capture screen and edit it by preview.
# @raycast.author LawrenceLiu

# 交互模式截图并存储进剪切板，可通过空格在鼠标选择和窗口捕获中选择
do shell script "screencapture -i -o -P -W"

# 截图，并调用预览编辑，然后上传PicGo
# 自定义截图路径和文件名
# 截图是否包含窗口阴影
# 是否缩放图片
# 调用预览打开截图并编辑
# 将文件名按照你需要的格式放入剪切板
# 通过设置按钮开关应用菜单和AppSwiter截图


(*
截图快捷键+截图工作流：
不同的截图快捷键，可以使用不同的截图工作流，该截图工作流，即对截图进行不同的参数配置；
可选是否在截图后进行后续操作，该后续操作一般可设置为快捷键（比如用来上传剪切板文件到PicGo）；
*)