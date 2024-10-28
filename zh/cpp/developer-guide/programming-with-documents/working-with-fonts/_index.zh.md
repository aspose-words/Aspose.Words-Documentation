---
title: 使用C++中的字体
second_title: Aspose.Words对于C++
articleTitle: 使用字体
linktitle: 使用字体
description: "使用C++详细设置字体格式。"
type: docs
weight: 230
url: /zh/cpp/working-with-fonts/
---

字体是一组具有一定大小、颜色和设计的字符。 Aspose.Words允许您使用[Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/)命名空间和[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)类处理字体。

## 字体格式

当前字体格式由[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)属性返回的**Font**对象表示。 **Font**类包含各种各样的字体属性，复制Microsoft Word中可用的属性。

下面的代码示例演示如何设置字体格式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

填充属性现在也可用于字体设置文本的填充格式。 它提供了改变例如文本填充的前景颜色或透明度的能力。

## 获取字体行间距

字体行间距是连续两行文本基线之间的垂直距离。 所以行间距包括行与字符本身的高度之间的空白空间。

[LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/)属性被引入到**Font**类中以获得此值，如下面的示例所示:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## 字体EmphasisMark

一些东亚语言使用特殊的强调标记来表示强调. **Font**类提供[EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/)属性以获取或设置要在格式化时应用的`EmphasisMark`枚举值。

下面的代码示例演示如何设置**EphasisMark**属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
