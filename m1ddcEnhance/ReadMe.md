# 开始

- `lumDown.sh` 亮度-10
- `lumUp.sh` 亮度+10
- `toDP1.sh` 切换输入源到DP1
- `toTYPE-C.sh` 切换输入源到TYPE-C

输入源切换针对双平台、一外接显示器的用户准备（比如我），也就是说，你能直接通过调用脚本的方式来切换显示器的输入源，而不用去摸按键。

要想使用这些脚本，你可以使用Karabiner-Elements的 `do shell command` 方法，也可以使用Raycast绑定快捷键——实际上我更推荐前者。

或者其他你喜欢用的方法。

比如我就将GANSS 75T用来控制键盘亮度的摇杆，从驱动上改成了四个不同的组合键，继而用Karabiner将这四个组合键分别映射到四个脚本，实现了：
- 上拨摇杆：调高亮度
- 下拨摇杆：调低亮度
- 左拨摇杆：切换到Windows
- 右拨摇杆：切换到macOS

这也是为什么我只写了四个脚本的原因。

一方面当然是摇杆刚好四个方向，另一方面也是确实用不上其他功能：
- 音量：音量在键盘上有旋钮，可以直接调节系统音量，而且我的外接显示器没有喇叭
- 色温：这个对一部分用户可能是有用的，但我不调那个
- 对比度：基本也没调过。

当然，我也在下面给出了指令的详解，你可以自己写那些你需要的脚本。

# 介绍

## 关于DDC

DDC，即通过软件控制外接显示器。

你可以通过软件来控制显示器的亮度、色温、对比度、输入源、音量等选项，而不用去摸按钮。

在macOS上，DDCCTL是很有名的DDC软件，但是它在M1上 [并不好用](https://github.com/kfix/ddcctl/issues/122)，于是有人开发出了 [M1DDC](https://github.com/waydabber/m1ddc) 这款软件。

但是M1DDC是个命令行软件，你能拿到手的只有一个二进制文件，每次使用还要敲指令。

这显然既不方便也不优雅。

于是我写了几个脚本来调用这个软件，实现一些常用的功能。

所以要想使用这些脚本，你得先安装M1DDC才行。

## 安装

前往 [M1DDC的仓库](https://github.com/waydabber/m1ddc) ，下载其中的二进制文件，丢进 `/opt/Homebrew/bin` ，就算安装完成。

此时，你可以通过 `m1ddc` 来调用此程序。



# M1DDC 的指令详解

> M1DDC仅支持TYPE-C（DP工作模式）连接的显示器，HDMI暂不支持，望知悉。

下面是我对于其ReadMe中例子和指令的翻译。

### 例子

- `m1ddc set contrast 5` 设置对比度为5（- Sets contrast to 5 on default display）
- `m1ddc get luminance` 返回当前显示器的亮度（- Returns current luminance ("brightness") on default display）。
- `m1ddc set red 90` 将显示器的红色增益（人话：色温）调成90（- Sets red gain to 90）。
- `m1ddc chg volume -10`  音量减10（- Decreases volume by 10 on default display）
- `m1ddc display list` 列出已连接显示器（- Lists displays）
- `m1ddc display 1 set volume 50` 将显示器1的音量设置成50（- Sets volume to 50 on Display 1）
- `m1ddc display 10ACB8A0-0000-0000-1419-0104A2435078 set input 15` 将UUID为10ACB8A0-0000-0000-1419-0104A2435078的显示器的输入源设置为DP1（- Sets input to DisplayPort 1 on display with UUID 10ACB8A0-0000-0000-1419-0104A2435078）

### 指令

`set luminance n` 设置亮度为n（- Sets luminance ("brightness") to n, where n is a number between 0 and the maximum value (usually 100).）

`set contrast n` 设置对比度为n，通常为0-100（- Sets contrast to n, where n is a number between 0 and the maximum value (usually 100).）

`set (red,green,blue) n` 设置色温（红，绿，蓝）（- Sets selected color channel gain to n, where n is a number between 0 and the maximum value (usually 100).）

`set volume n` 设置音量为n，通常为0-100（- Sets volume to n, where n is a number between 0 and the maximum value (usually 100).）

`set input n` 设置输入源为n，通常的值包括：DP1：15，DP2：16，HDMI1：17，HDMI2：18，USB-C：27（- Sets input source to n, common values include:  
DisplayPort 1: 15, DisplayPort 2: 16, HDMI 1: 17 HDMI 2: 18, USB-C: 27.）

`set mute on` 静音，`on` 可用 `1` 代替（- Sets mute on (you can use 1 instead of 'on')）

`set mute off` 取消静音，`on` 可用 `0` 代替（- Sets mute off (you can use 2 instead of 'off')）

`get luminance` 返回当前显示器的亮度（- Returns current luminance (if supported by the display).）

`get contrast` 返回当前显示器的对比度（- Returns current contrast (if supported by the display).）

`get (red,green,blue)` 返回当前显示器的色温（红，绿，蓝）（- Returns current color gain (if supported by the display).）

`get volume` 返回当前的音量（- Returns current volume (if supported by the display).）

`max luminance` 返回当前显示器容许的最高亮度，一般为100（- Returns maximum luminance (if supported by the display, usually 100).）

`max contrast` 返回当前显示器容许的最大对比度，一般为100（- Returns maximum contrast (if supported by the display, usually 100).）

`max (red,green,blue)` 返回当前显示器容许的色温范围，一般为100（- Returns maximum color gain (if supported by the display, usually 100).）

`max volume` 返回当前显示器容许的最高音量（- Returns maximum volume (if supported by the display, usually 100).）

`chg luminance n` 在当前亮度基础上增加（正数）或减少（复数）n亮度，并返回增加或减少后的亮度（- Changes luminance by n and returns the current value (requires current and max reading support).）

`chg contrast n` 在当前对比度基础上增加（正数）或减少（复数）n对比度，并返回增加或减少后的对比度（- Changes contrast by n and returns the current value (requires current and max reading support).）

`chg (red,green,blue) n` 在当前色温基础上增加（正数）或减少（复数）n色温，并返回增加或减少后的色温（- Changes color gain by n and returns the current value (requires current and max reading support).）

`chg volume n` 在当前音量基础上增加（正数）或减少（复数）n音量，并返回增加或减少后的音量（- Changes volume by n and returns the current value (requires current and max reading support).）

`display list` 列出所有已外接显示器（- Lists displays.）

`display n` 选择控制哪个显示器，1、2或者其他（- Chooses which display to control (use number 1, 2 etc.)）

你还可以用 `l` 和 `v` 来代替 `luminance` 和 `volume`（You can also use 'l', 'v' instead of 'luminance', 'volume' etc.）

