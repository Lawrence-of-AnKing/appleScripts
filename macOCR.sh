#!/bin/bash

# Dependency: requires macOCR
# Download: https://github.com/schappim/macOCR

# @raycast.schemaVersion 1
# @raycast.title macOCR
# @raycast.mode silent
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/Lawrence-of-AnKing
# @raycast.description 截屏，并返回OCR后的内容到你的剪切板上，支持中英文。要使用此脚本，先安装macOCR：`brew install schappim/ocr/ocr`。Get any text on your screen into your clipboard. To use this script, install macOCR first by `brew install schappim/ocr/ocr`.
# @raycast.packageName macOCR
# @raycast.icon 📸

# 中文OCR
ocr -l zh-Hans