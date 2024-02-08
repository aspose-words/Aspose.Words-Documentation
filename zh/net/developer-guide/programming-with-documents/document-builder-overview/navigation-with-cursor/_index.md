---
title: C# 中的光标导航
second_title: .NET 格式的 Aspose.Words
articleTitle: 用光标导航
linktitle: 用光标导航
description: "使用 C# 在文档中的不同节点（例如段落、书签或特定字符）之间导航。"
type: docs
weight: 10
url: /zh/net/navigation-with-cursor/
---

在处理文档时，无论文档长短，您都需要浏览文档。使用虚拟光标导航表示在文档中的不同节点之间导航的能力。

在简短的文档中，在文档中移动非常简单，因为您甚至可以使用键盘的箭头键或单击鼠标将插入点定位到所需的位置，从而移动插入点。但是，一旦您有一个包含很多页的大型文档，这些基本技术就不够了。

本文介绍如何在文档中移动并使用虚拟光标导航到文档的不同部分。

## 检测当前光标位置

在开始浏览文档之前，您需要获取当前选定的节点。您可以使用 [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) 属性获取光标在选定节点处的准确位置。此外，您可以使用 [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) 和 [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) 属性获取当前选定的段落或当前选定的部分，而不是获取当前节点。

您使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 执行的任何插入操作都将插入到 [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) 之前。当当前段落为空或光标位于段落末尾之前时，**CurrentNode** 返回 null。

## 在文档中导航方法

编辑文本时，了解如何导航文档以及在文档中准确移动的位置非常重要。 Aspose.Words 允许您在文档中移动并导航到其不同的部分和部分 - 这类似于 Microsoft Word 中导航窗格的功能，无需滚动即可转到 Word 文档中的页面或标题。

主要方法是能够将光标位置移动到文档中的特定节点，您可以使用 [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) 方法来实现这一点。

以下代码示例演示如何将 **DocumentBuilder** 移动到文档中的不同节点：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

但除了基本的 **MoveTo** 方法之外，还有更具体的方法。

### 导航到文档的开头或结尾

您可以使用 [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) 和 [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) 方法转到文档的开头或结尾。

以下代码示例演示如何将光标位置移动到文档的开头或结尾：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### 使用书签导航

您可以标记想要查找的位置并轻松地再次移动到该位置。您可以根据需要在文档中插入任意数量的书签，然后通过识别具有唯一名称的书签来浏览它们。您可以使用 [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) 方法移动到书签。

以下代码示例演示如何将光标位置移动到书签：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### 导航到表格单元格

您可以使用 [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) 方法移动到表格单元格。此方法将使您能够将光标导航到特定表格中的任何单元格。此外，您还可以指定索引以将光标移动到 **MoveToCell** 方法内单元格中的任意位置或指定字符。

以下代码示例演示如何将光标位置移动到指定的表格单元格：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### 导航到字段

您可以使用 [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) 方法移动到文档中的特定字段。此外，您还可以使用 [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) 方法移动到特定的合并字段。

以下代码示例演示如何将文档生成器光标移动到特定字段：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### 导航到页眉或页脚

您可以使用 [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) 方法移至页眉或页脚的开头。

以下代码示例演示如何将文档生成器光标移动到文档页眉或页脚：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### 导航到某个部分或段落

您可以使用 [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) 或 [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) 方法移至特定部分或段落。此外，您还可以指定索引以将光标移动到 **MoveToParagraph** 方法内段落中的任意位置或指定字符。

以下代码示例演示如何移动到文档中的特定部分和特定段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
