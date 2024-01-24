#!/usr/bin/osascript

# @raycast.title OCR PDF
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description OCR your PDF by ocrmypdf.

# @raycast.icon 📑
# @raycast.mode silent
# @raycast.packageName ocrPDF
# @raycast.schemaVersion 1

# 想使用此脚本，先安装 ocrmypdf, tesseract, parallel
# ocrmypdf：识别 PDF 的命令行软件
# tesseract：ocrmypdf 的识别引擎
# parallel：命令行并行处理软件，可以同时运行多个进程以加快识别速度
# 使用如下指令安装：
# brew install ocrmypdf
# brew install tesseract
# brew install parallel

# 声明全局变量
global folderPath

# 在当前文件夹创建 `output` 文件夹
tell application "Finder"
    try
        set currentFolder to target of window 1 as alias
        set folderPath to POSIX path of currentFolder
        
        # 构建输出文件夹的路径
        set outputPath to folderPath & "output"
        
        # 检查输出文件夹是否已存在，如果不存在则创建
        if not (exists folder outputPath) then
            do shell script "mkdir -p " & quoted form of outputPath
        end if
    on error
        # 处理错误（可选）
    end try
end tell

# 构建 OCR 命令
set ocrCommand to "parallel --tag --load 80% -j 3 ocrmypdf -l chi_sim {} 'output/{}' ::: *.pdf"

# 打开新的终端窗口运行 OCR 指令
# 注意：parallel 运行中不会有任何进度提示，如果一次处理文件较大、较多，会耗费很长时间
do shell script "osascript -e 'tell application \"Terminal\" to do script \"cd " & folderPath & " && " & ocrCommand & "\"'"