#!/bin/bash

# @raycast.title We Chat Tweak
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description WeChatTweak supportted.

# @raycast.icon 🗨️
# @raycast.mode fullOutput
# @raycast.packageName WeChatTweak
# @raycast.schemaVersion 1
# @raycast.argument1 { "type": "text", "placeholder": "用户名：" }

# To use this AppleScript, install WeChatTweak by "brew install sunnyyoung/repo/wechattweak-cli".
# Thanks to Sunnyyoung, he creat and maintain the WeChatTweak-macOS, a great WeChat enhance tool.
# Clik "https://github.com/Sunnyyoung/WeChatTweak-macOS" to visit his project.

curl http://localhost:48065/wechat/search?keyword="$1"



# 第一步：使用如下形式，在本地服务上搜索关键词
# http://localhost:48065/wechat/search?keyword=老姐
# 第二步：本地服务器返回结果，形如的字典：
# {"items":[{"icon":{"path":"\/Users\/liu\/Library\/Containers\/com.tencent.xinWeChat\/Data\/Library\/Application Support\/com.tencent.xinWeChat\/2.0b4.0.9\/7b62bbb511240c34905eb99d0973e785\/Avatar\/645f577009202eae861adb547f333794.jpg"},"title":"老姐（农历10.16）","subtitle":"长不大","arg":"wxid_99mqa93wxclj21","valid":1}]}
# 第三步：将其中的 arg 值，填入 session 字段，直接打开微信对应联系人
# http://localhost:48065/wechat/start?session=wxid_99mqa93wxclj21