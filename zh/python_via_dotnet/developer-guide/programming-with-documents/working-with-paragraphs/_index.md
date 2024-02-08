---
title: 使用 Python 中的段落
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用段落
linktitle: 使用段落
description: "使用 Python 在文档中插入段落并指定其格式。"
type: docs
weight: 210
url: /zh/python-net/working-with-paragraphs/
---

段落是组合成逻辑块的一组字符，并以特殊字符（*段落分隔符*）结尾。在 Aspose.Words 中，段落由 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 类表示。

## 插入一个段落

实际上，要在文档中插入新段落，您需要在其中插入分段符。 [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) 还会在文档中插入文本字符串，但此外，它还会添加段落分隔符。

当前字体格式也由 [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) 属性指定，当前段落格式由 [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) 属性确定。

以下代码示例演示如何将段落插入到文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## 设置段落格式

当前段落格式由 [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) 属性返回的 [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) 对象表示。该对象封装了 Microsoft Word 中可用的各种段落格式属性。您可以通过调用 [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/) 轻松地将段落格式重置为默认为普通样式、左对齐、无缩进、无间距、无边框和无底纹。

以下代码示例展示了如何设置段落格式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## 应用段落样式

某些格式化对象（例如 [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) 或 [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/)）支持样式。单个内置或用户定义的样式由 [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 对象表示，该对象包含相应的样式属性，如样式的名称、基本样式、字体和段落格式等。

此外，[Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 对象提供 [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) 属性，该属性返回由 [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) 枚举值表示的独立于语言环境的样式标识符。要点是 Microsoft Word 中内置样式的名称针对不同语言进行了本地化。使用样式标识符，无论文档语言如何，您都可以找到正确的样式。枚举值对应于 Microsoft Word 内置样式，例如 Normal 、 Heading 1 、 Heading 2 等。所有用户定义的样式都分配有 [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) 值。

以下代码示例展示了如何应用段落样式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## 插入样式分隔符以放置不同的段落样式

可以使用 MS Word 中的 Ctrl + Alt + Enter 键盘快捷键将样式分隔符添加到段落末尾。此功能允许在一个逻辑打印段落中使用两种不同的段落样式。如果您希望特定标题开头的某些文本出现在目录中，但不希望整个标题出现在目录中，则可以使用此功能。

以下代码示例演示如何插入样式分隔符以适应不同的段落样式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## 识别段落样式分隔符

Aspose.Words 在 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 类中提供了一个公共属性 [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/)，允许识别样式分隔符段落，如下例所示：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## 将边框和底纹应用到段落

边界由 [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) 表示。这是通过索引或边框类型访问的 [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) 对象的集合。边框类型由 [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) 枚举表示。枚举的某些值适用于多个或仅一个文档元素。例如，[BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) 适用于段落或表格单元格，而 [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) 仅指定表格单元格中的对角边框。

边框集合和每个单独的边框都具有相似的属性，例如颜色、线条样式、线条宽度、距文本的距离和可选的阴影。它们由同名的属性表示。您可以通过组合属性值来实现不同的边框类型。此外，[BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) 和 [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) 对象都允许您通过调用 [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) 方法将这些值重置为默认值。

{{% alert color="primary" %}}

请注意，当边框属性重置为其默认值时，边框将变得不可见。

{{% /alert %}}

Aspose.Words 还具有 [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) 类，其中包含文档元素的底纹属性。您可以设置所需的着色纹理以及应用于元素的背景和前景的颜色。

着色纹理使用 [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) 枚举值进行设置，该枚举值允许将各种图案应用到 [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) 对象。例如，要设置文档元素的背景颜色，请使用 [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) 值并根据需要设置前景色。下面的示例展示了如何将边框和底纹应用于段落。

以下代码示例演示如何将边框和底纹应用到段落：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
