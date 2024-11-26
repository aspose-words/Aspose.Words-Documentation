---
title: 使用 C# 中的字体
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用字体
linktitle: 使用字体
description: "使用 C# 详细说明字体格式。 C# 中的强调标记。使用 C# 获取字体行距。"
type: docs
weight: 230
url: /zh/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

字体是一组具有一定大小、颜色和设计的字符。 Aspose.Words 允许您使用 [Fonts](https://reference.aspose.com/words/zh/net/aspose.words.fonts/) 命名空间和 [Font](https://reference.aspose.com/words/zh/net/aspose.words/font/) 类来处理字体。

## 字体格式

当前的字体格式由 [Font](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/font/) 属性返回的 **Font** 对象表示。 **Font** 类包含多种字体属性，复制 Microsoft Word 中可用的字体属性。

以下代码示例展示了如何设置字体格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

字体的填充属性也可用于设置文本填充格式。这使得可以更改例如前景色或文本填充的透明度。

## 获取字体行距

字体行距是两连续文本行的基线之间的垂直距离。因此，行间距包括行之间的空白以及字符本身的高度。

**Font**类中引入了[LineSpacing](https://reference.aspose.com/words/zh/net/aspose.words/font/linespacing/)属性来获取该值，如下例所示：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## 字体强调标记

一些东亚语言使用特殊的强调标记来表示强调。 **Font** 类提供 [EmphasisMark](https://reference.aspose.com/words/zh/net/aspose.words/font/emphasismark/) 属性来获取或设置格式化时要应用的 [EmphasisMark](https://reference.aspose.com/words/zh/net/aspose.words/emphasismark/) 枚举值。

以下代码示例显示如何设置 **EphasisMark** 属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
