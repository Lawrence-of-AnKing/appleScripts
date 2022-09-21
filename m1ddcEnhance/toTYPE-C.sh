#!/bin/bash

# @raycast.title display to type-c
# @raycast.author LawrenceLiu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Due to ddcctl usable on M1 Mac (https://github.com/kfix/ddcctl/issues/122), here comes a new tools name m1ddc (https://github.com/waydabber/m1ddc). I creat this applescript to use it easier.

# @raycast.icon 🖥️
# @raycast.mode silent
# @raycast.packageName toTypeC
# @raycast.schemaVersion 1

do shell script "m1ddc display 1 set input 27"