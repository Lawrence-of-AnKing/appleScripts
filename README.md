# 开始

这个仓库是我平时使用过程中写的一些AppleScript的集合。

当然，也不局限于AppleScript，还有其他类型的脚本。

## 如何使用？

你可以直接下载整个仓库的 `.zip` 然后把解压出来的文件放在某个文件夹，使用Raycast加载脚本目录的方式加载这个文件夹，然后使用AliasName和快捷键的方式调用这些脚本。

## 使用效果

调用macOCR识别屏幕中的文字：

![8G2bH20921172908](https://cdn.jsdelivr.net/gh/LawrenceLiuQuanzhou/ImgBank@main/MdImg/2022/8G2bH20921172908.png)

创建空白文件：

![cAH0LF0921173058](https://cdn.jsdelivr.net/gh/LawrenceLiuQuanzhou/ImgBank@main/MdImg/2022/cAH0LF0921173058.png)


创建空白文件夹：

![OPTwkC0921173150](https://cdn.jsdelivr.net/gh/LawrenceLiuQuanzhou/ImgBank@main/MdImg/2022/OPTwkC0921173150.png)

## 归档

还在琢磨、没有完成、已经有别的实现方式等等类型的脚本，不用管他。

## m1ddcEnhance

用键盘控制显示器的一些脚本。

包括切换输入源和调节亮度。

## mdInput

用来实现全局快速输入Markdown标记，比如在GitHubIssues快速输入 `****` 来实现加粗什么的。

带自动移动光标。

## 其他

没有进行文件夹分类的，往往是我最常用的脚本，下面进行单独介绍。

# 常用脚本

## 复制文件路径

我们经常有一种需求，比如 `cd` 进某个文件夹，或者 `bash` 某个脚本。

打开终端再输入显然比较麻烦，右键打开终端当然也是一个方法，不过我不太喜欢为这种小操作加额外的软件。

所以就写了这么个AppleScript，可以获取鼠标选中文件的路径，然后直接进终端复制就行。

使用效果：

![BoO9rL0921173615](https://cdn.jsdelivr.net/gh/LawrenceLiuQuanzhou/ImgBank@main/MdImg/2022/BoO9rL0921173615.png)

> 我的用法：绑定快捷键 `hyper_key` + `c`

## 复制选中文字并打开链接

又一个很常见的需求：全局打开选中的链接。

有时候在文档里、在浏览器中、在文本编辑器中，我们总会碰到一些链接，想要在浏览器中打开它们。

这时候，无论是复制然后进浏览器粘贴，又或者我们正处于浏览器中，复制后右键打开，都总是显得那么笨拙。

Raycast当然是个好工具，可是它没有类似Alfred那样的全局打开链接的功能，让人十分费解。

于是我写了一个脚本，通过Raycast或者Karabiner调用后，可以在全局范围内打开选中的链接，实现如下流程：

1. 用鼠标选中链接；
2. 按下快捷键；
3. 在Edge中打开链接。

如果你用的浏览器不是Edge，那么你需要稍微修改一下脚本中的浏览器为其他浏览器。

> 我的用法：绑定快捷键 `hyper_key` + `q`

## 新建空白文件

macOS不像Windows，它没法方便地从右键新建文件。

我们一般的方法是进入对应的软件，Word的归Word，Excel的归Excel，txt的归txt。

这对于Word、Excel、PNG等格式来说问题不大，因为当我们准备创建这些文件时，实际上是准备好了长时间在其上工作，并且很长时间专注于一个工作目录。

但是当你需要创建一些脚本文件、Markdown文件、txt文件，或者要为自己的设置写一个简单的ReadMe时，总之就是一切散落在各个目录中的txt文档。

用脚本编辑器创建，然后保存，就不是那么美丽的事情了。

这时候我们就需要一个方便的方法，让我们能直接创建一个空白文件，然后动手往里面写东西。

> 我的用法：Raycast设置AliasName为 `cnd`

## 新建空白文件夹

这个需求跟上面颇为类似，尤其当你使用分栏视图，并且文件多到没有空白让你右键来新建文件夹时，调出Raycast，输入 `cnf` 并输入文件夹的名字，直接创建好一个文件夹，不要太方便：

调用脚本：

![1mW8kG0921175002](https://cdn.jsdelivr.net/gh/LawrenceLiuQuanzhou/ImgBank@main/MdImg/2022/1mW8kG0921175002.png)

创建文件夹：

![Z3jd6t0921175037](https://cdn.jsdelivr.net/gh/LawrenceLiuQuanzhou/ImgBank@main/MdImg/2022/Z3jd6t0921175037.png)

> 我的用法：Raycast设置AliasName为 `cnf`

## 粘贴纯文本

我们平常从网页上或者其他程序中复制而来的往往是富文本，当我们往Markdown编辑器或者Word里粘贴时，往往需要去除原来的格式，再调整成我们需要的格式。

这个脚本可以帮助你省去第一步，直接开始第二步。

> 我的用法：绑定快捷键 `hyper_key` + `v`

## 重启Karabiner

Karabiner有个久远的bug，是关于在复杂语言环境下的输入源切换问题，比如中文、日文、韩文等输入环境，如果你使用它提供的 `input source` 方法来切换输入法，有时候会出现图标切换了，实际上并没有切换的bug。

这个bug由来已久，而且几乎可以肯定不会修复。

而当我使用外接蓝牙键盘时，发现了另一个更烦人的bug，那就是当电脑睡眠一段时候并唤醒时，有概率出现中文输入法下出现英文标点的问题。

解决办法有两个：

1. 有时有效，有时失效：反复敲击大小写按键切换大小写（我怀疑这个问题就是在切换到中文后，保持了大写状态，结果中文标点就变成了英文标点）；
2. 百分比有效：重启Karabiner。

所以写了这么个脚本，当出现bug时，直接调用Raycast，输入 `kr` 并回车，重启Karabiner，直接解决bug。

是没办法的办法。

不过我现在换了另一把2.4g的键盘，这个脚本已经用不上了，但我并没有删除它。

> 我的用法：Raycast设置AliasName为 `kr`

## macOCR

OCR是个亘古不变的需求。

尤其当你的同事喜欢给你发各种图片、截图，你的工作又要求你去各种文库上当文抄公。

你一方面没法改变同事没用微信给你发图片的习惯，另一方面又没办法拎着百度老大来个“宏颜获水”，你就只能让自己适应这些恶劣环境。

所以我选择使用OCR，你可以用 `brew install schappim/ocr/ocr` 来方便地安装这个强大的OCR软件。

然后使用这个脚本来调用它。

识别率极高、正确率极高，强力推荐。

> 我的用法：绑定快捷键 `hyper_key` + `r`

## 视频转换插件

功能简单粗暴，使用 `ffmpeg` ，将任何格式视频转成 `.mp4` `.flv` `.mkv` 三种格式中的一种。

要安装 `ffmpeg` ，使用 `brew install ffmpeg` 。

使用效果：

![LOXUqJ0922081955](https://cdn.jsdelivr.net/gh/LawrenceLiuQuanzhou/ImgBank@main/MdImg/2022/LOXUqJ0922081955.png)

> 我的用法：Raycast设置AliasName为 `vt` 。