#!/usr/bin/osascript

# @raycast.title asTest
# @raycast.author Lawrence Liu
# @raycast.authorURL https://github.com/LawrenceLiuQuanzhou
# @raycast.description Test Script.

# @raycast.icon 📝
# @raycast.mode fullOutput
# @raycast.packageName Apple script test.
# @raycast.schemaVersion 1


display dialog "Input file name:" buttons {"YES", "NO"} default button "YES" default answer ""

set returnRecord to the result
get the text returned of returnRecord
display dialog