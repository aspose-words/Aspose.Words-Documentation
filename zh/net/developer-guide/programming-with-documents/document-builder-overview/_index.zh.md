---
title: C# 中的文档生成器概述
second_title: .NET 格式的 Aspose.Words
articleTitle: 文档生成器概述
linktitle: 文档生成器概述
type: docs
description: "DocumentBuilder 允许您从头开始构建动态文档或使用 C# 将新元素添加到现有文档中。 DocumentBuilder 提供了在 .NET 中插入文本、复选框、表格、图像和其他内容元素的方法。"
weight: 30
url: /zh/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 是一个功能强大的类，它与 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 相关联，使您能够从头开始构建动态文档或向现有文档添加新元素。

**DocumentBuilder** 提供了插入文本、复选框、ole 对象、段落、列表、表格、图像和其他内容元素的方法。它允许您指定字体、段落或部分格式以及执行其他操作。

## 文档生成器或 Aspose.Words DOM

**DocumentBuilder** 补充了 Aspose.Words Document Object Model (DOM) 中可用的类和方法，以简化最常见的文档构建任务。也就是说，您既可以通过Aspose.Words DOM（这需要很好地了解树结构）也可以使用DocumentBuilder 创建和修改文档内容。 `DocumentBuilder` 是复杂 **Document** 结构的"外观"，允许您快速轻松地插入内容和格式。

直接使用 Aspose.Words DOM 的类时，也可以使用 **DocumentBuilder** 进行的操作。然而，直接使用 Aspose.Words DOM 类通常比使用 **DocumentBuilder** 需要更多的代码行。

## 文档导航

文档导航基于虚拟光标的概念，通过虚拟光标，您可以使用各种 **DocumentBuilder.MoveToXXX** 方法（例如 [MoveToDocumentStart](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/movetodocumentstart/) 和 [MoveToField](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/movetofield/)）移动到文档中的另一个位置。该虚拟光标指示调用 [Write](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/write/)、[Writeln](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/write/ln/index)、[InsertBreak](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertbreak/) 等方法时文本将插入的位置。请参阅以下文章"使用光标导航"以了解有关虚拟光标的更多信息。

以下代码示例展示了如何导航到书签：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## 文档构建和修改

Aspose.Words API 提供了几个类，负责格式化文档的各种元素。每个类都封装与特定文档元素相关的格式化属性，例如文本、段落、部分等。例如，[Font](https://reference.aspose.com/words/zh/net/aspose.words/font/) 类表示字符格式化属性，[ParagraphFormat](https://reference.aspose.com/words/zh/net/aspose.words/paragraphformat/) 类表示段落格式化属性，等等。这些类的对象由相应的 **DocumentBuilder** 属性返回，这些属性与类具有相同的名称。因此，您可以在文档构建期间访问它们并设置所需的格式。

您还可以使用 `Write` 方法或任何 **DocumentBuilder.InsertXXX** 方法（例如 [InsertField](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertfield/#insertfield/)、[InsertHtml](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) 和类似方法）在光标位置插入文本、复选框、ole 对象、图像、书签、表单字段和其他文档元素。

让我们看看如何使用 **DocumentBuilder** 创建一个简单的文档。

### 使用 DocumentBuilder 创建文档

首先，您需要创建一个 **DocumentBuilder** 并将其与 **Document** 对象关联。您可以通过调用其构造函数来创建 **DocumentBuilder** 的新实例，并将其传递给 **Document** 对象以附加到构建器。

要插入文本，请将需要插入到文档中的文本字符串传递给 **Write** 方法。

以下代码示例演示如何使用文档生成器创建简单文档。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### 指定文档格式

[Font](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/font/) 属性定义文本格式。该对象包含不同的字体属性（字体名称、字体大小、颜色等）。一些重要的字体属性也由 **DocumentBuilder** 属性表示，以便您直接访问它们。这些是 [Font.Bold](https://reference.aspose.com/words/zh/net/aspose.words/font/bold/)、[Font.Italic](https://reference.aspose.com/words/zh/net/aspose.words/font/italic/) 和 [Font.Underline](https://reference.aspose.com/words/zh/net/aspose.words/font/underline/) 布尔属性。

以下代码示例演示如何使用 **DocumentBuilder** 插入格式化文本：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/font/) 指定将应用于从文档当前位置开始插入的所有文本的字符格式。
- [ParagraphFormat](https://reference.aspose.com/words/zh/net/aspose.words/paragraphformat/) 指定当前段落和所有要插入的段落的段落格式。
- [PageSetup](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/) 指定当前节和将插入的整个节的页面和节属性。
- [CellFormat](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/cellformat/) 和 [RowFormat](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/rowformat/) 指定格式属性，这些属性将从文档中的当前位置开始应用于表格单元格和行。

在这种情况下，"当前"是指光标所在的位置、段落、部分、单元格或行。

{{% /alert %}}

{{% alert color="primary" %}}

请注意，每当您导航到文档中的其他位置时，**Font**、**ParagraphFormat** 和 **PageSetup** 属性都会更新，以反映该位置的格式设置属性。

{{% /alert %}}
