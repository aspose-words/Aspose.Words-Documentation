---
title: 使用 C# 中的段落
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用段落
linktitle: 使用段落
description: "将段落插入文档 C#。在 C# 中设置段落样式。使用段落样式分隔符 C#。使用 C# 操作段落节点。"
type: docs
weight: 210
url: /zh/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

段落是组合成逻辑块的一组字符，并以特殊字符（*段落分隔符*）结尾。在 Aspose.Words 中，段落由 [Paragraph](https://reference.aspose.com/words/zh/net/aspose.words/paragraph/) 类表示。

## 插入一个段落

实际上，要在文档中插入新段落，您需要在其中插入分段符。 [DocumentBuilder.Writeln](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/writeln/) 不仅在文档中插入文本字符串，而且还添加段落分隔符。

当前字体格式也由 [Font](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/font/) 属性指定，当前段落格式由 [ParagraphFormat](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/paragraphformat/) 属性确定。在下一节中，我们将更详细地讨论段落格式。

以下代码示例演示如何将段落插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## 设置段落格式

当前段落格式由 [ParagraphFormat](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/paragraphformat/) 属性返回的 [ParagraphFormat](https://reference.aspose.com/words/zh/net/aspose.words/paragraphformat/) 对象表示。该对象封装了 Microsoft Word 中可用的各种段落格式属性。通过调用 [ClearFormatting](https://reference.aspose.com/words/zh/net/aspose.words/paragraphformat/clearformatting/)，您可以轻松地将段落的格式重置为其默认值 - 正常样式、左对齐、无缩进、无间距、无边框、无底纹。

以下代码示例展示了如何设置段落格式：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## 应用段落样式

某些格式化对象（例如 **Font** 或 **ParagraphFormat**）支持样式。一种内置或用户定义的样式由 [Style](https://reference.aspose.com/words/zh/net/aspose.words/style/) 对象表示，该对象包含适当的样式属性，如名称、基本样式、字体、样式段落格式设置等。

此外，**Style** 对象公开 [StyleIdentifier](https://reference.aspose.com/words/zh/net/aspose.words/style/styleidentifier/) 属性，该属性返回由 [StyleIdentifier](https://reference.aspose.com/words/zh/net/aspose.words/styleidentifier/) 枚举值表示的与区域设置无关的样式标识符。事实上，Microsoft Word 中内置样式的名称已针对不同语言进行了本地化。使用样式标识符，无论文档语言如何，您都可以找到正确的样式。枚举值对应内置的 Microsoft Word 样式，例如 *Normal*、*标题 1*、*标题 2* 等。所有用户定义的样式都设置为 **StyleIdentifier.User** 枚举值。

以下代码示例展示了如何应用段落样式：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### 插入样式分隔符以放置不同的段落样式

在 Microsoft Word 中，可以使用键盘快捷键 Ctrl+Alt+Enter 将样式分隔符添加到段落末尾。此功能允许您在同一逻辑打印段落中使用两种不同的段落样式。如果您希望特定标题开头的某些文本出现在目录中，但不希望整个标题显示在目录中，则可以使用此功能。

以下代码示例演示如何插入样式分隔符以适应不同的段落样式：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### 识别段落样式分隔符

Aspose.Words 在 `Paragraph` 类上公开 [BreakIsStyleSeparator](https://reference.aspose.com/words/zh/net/aspose.words/paragraph/breakisstyleseparator/) 公共属性，以标识带有样式分隔符的段落，如下例所示：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## 将边框和底纹应用到段落

Aspose.Words 中的边框由 [BorderCollection](https://reference.aspose.com/words/zh/net/aspose.words/bordercollection/) 类表示 - 这是通过索引或边框类型访问的 [Border](https://reference.aspose.com/words/zh/net/aspose.words/border/) 对象的集合。边框类型又由 [BorderType](https://reference.aspose.com/words/zh/net/aspose.words/bordertype/) 枚举表示。某些枚举值适用于多个或仅一个文档元素。例如，**BorderType.Bottom** 适用于段落或表格单元格，而 **BorderType.DiagonalDown** 仅指定表格单元格中的对角边框。

边框集合和每个单独的边框都具有相似的属性，例如颜色、线条样式、线条宽度、距文本的距离和可选的阴影。它们由同名的属性表示。您可以通过组合属性值来获得不同的边框类型。此外，**BorderCollection** 和 **Border** 对象允许您通过调用 [ClearFormatting](https://reference.aspose.com/words/zh/net/aspose.words/border/clearformatting/) 方法将这些值重置为其默认值。

{{% alert color="primary" %}}

请注意，当边框属性重置为其默认值时，边框将变得不可见。

{{% /alert %}}

Aspose.Words 还具有 [Shading](https://reference.aspose.com/words/zh/net/aspose.words/shading/) 类，其中包含文档元素的底纹属性。您可以使用 [TextureIndex](https://reference.aspose.com/words/zh/net/aspose.words/textureindex/) 枚举值设置应用于元素的背景和前景的所需着色纹理和颜色。 **TextureIndex** 还允许您将不同的模式应用于 **Shading** 对象。例如，要设置文档元素的背景颜色，请使用 **TextureIndex.TextureSolid** 值并根据需要设置前景色。

以下代码示例演示如何将边框和底纹应用到段落：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## 计算段落行数

如果您想计算任何Word文档的段落行数，可以使用以下代码示例：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
