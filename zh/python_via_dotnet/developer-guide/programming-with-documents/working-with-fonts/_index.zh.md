---
title: 使用 Python 中的字体
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用字体
linktitle: 使用字体
description: "使用 Python 自定义字体设置。"
type: docs
weight: 230
url: /zh/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

字体是一组具有一定大小、颜色和设计的字符。 Aspose.Words 允许您使用 [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) 模块和 [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) 类来处理字体。

## 字体格式

当前的字体格式由 [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) 属性返回的 **Font** 对象表示。 **Font** 类包含多种字体属性，复制 Microsoft Word 中可用的字体属性。

以下代码示例展示了如何设置字体格式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

填充属性现在也可用于字体来设置文本的填充格式。例如，它可以更改文本填充的前景色或透明度。

## 获取字体行距

字体行距是两连续文本行的基线之间的垂直距离。因此，行间距包括行之间的空白以及字符本身的高度。

[Font](https://reference.aspose.com/words/python-net/aspose.words/font/) 类中引入了 [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) 属性来获取该值，如下例所示：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## 字体强调标记

一些东亚语言使用特殊的强调标记来表示强调。 **Font** 类提供 [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) 属性来获取或设置要在格式设置中应用的 [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) 枚举值。

以下代码示例显示如何设置 **EphasisMark** 属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
