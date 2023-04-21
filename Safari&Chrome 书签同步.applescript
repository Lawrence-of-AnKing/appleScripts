#!/usr/bin/osascript

# @raycast.title Chrome&Safari Sync
# @raycast.author 怀城一只猫
# @raycast.authorURL https://iiong.com/macos-implements-sync-bookmarks-between-safari-and-chrome/
# @raycast.description 同步Chrome书签到Safari。Sync the bookmarks from Chrome to Safari.

# @raycast.icon 🔖
# @raycast.mode fullOutput
# @raycast.packageName syncChromeSafari
# @raycast.schemaVersion 1

# 设置延时

set SecondsDelay1 to 1
set SecondsDelay2 to 1

# 退出 Chrome 才能导入书签，退出 Safari 以确保无误
tell application "Safari"
	quit
	tell application "Google Chrome"
		quit
	end tell
end tell

# 延时3s
delay SecondsDelay1

# 激活Safari
tell application "Safari" to activate

# 模拟 Safari 从 Chrome 导入书签的点击
tell application "System Events" to tell process "Safari"
	click menu bar item "文件" of menu bar 1
	click menu item "导入自" of menu "文件" of menu bar item "文件" of menu bar 1
	key code 76
# 下面一行代码经测试不好使，原因在于根据 macOS 的不同，“Google Chrome.app”的显示方式可能不同，有的是 `Google Chrome.app` ，有的是 `Google Chrome...` ，还有的甚至是 `Google Chrome.app...` ，所以干脆换成一个回车
#	click menu item "Google Chrome.app..." of menu "导入自" of menu item "导入自" of menu "文件" of menu bar item "文件" of menu bar 1

# 下面两行代码，用于取消不必要的选项，从而避免 Safari 被过多的历史记录卡爆
# 根据自己Safari的显示结果决定，如果有 `密码` ，那么就取消注释，反之就注释掉
# 因为如果你使用 Bitwarden 或者 LastPass 等密码管理软件存储密码，Chrome 中没有密码，那么此处会因为没有 `密码` 选项而出错
#	click checkbox "密码" of sheet 1 of window 1
	click checkbox "历史记录" of sheet 1 of window 1
	
	click button "导入" of sheet 1 of window 1
	
	tell application "System Events" to tell process "Safari"
		repeat until static text "完成从Google Chrome导入" of sheet 1 of window "起始页" exists
		end repeat
		click button "好" of sheet 1 of window "起始页"
		keystroke "q" using command down
		delay SecondsDelay2
		-- tell application "System Events"
		-- 	keystroke "q" using command down
		-- end tell
	end tell
end tell