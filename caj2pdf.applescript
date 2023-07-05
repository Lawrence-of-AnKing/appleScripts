#!/usr/bin/osascript

# @raycast.title Start caj2pdf
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description 因为 caj2pdf-qt 有问题，在 M1 上直接启动会无法转换，只有从控制台转换才能正常转换，所以写了个脚本来启动。

# @raycast.icon 📜
# @raycast.mode silent
# @raycast.packageName caj2pdfStart
# @raycast.schemaVersion 1

set caj2pdfStart to "/Applications/caj2pdf.app/Contents/MacOS/caj2pdf"
do shell script caj2pdfStart