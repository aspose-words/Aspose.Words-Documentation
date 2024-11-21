---
title: C++中的文档生成器概述
second_title: Aspose.Words对于C++
articleTitle: 文档生成器概述
linktitle: 文档生成器概述
type: docs
description: "DocumentBuilder允许您从头开始构建动态文档或使用C++向现有文档添加新元素。 DocumentBuilder提供了在C++中插入文本、复选框、表、图像和其他内容元素的方法。"
weight: 30
url: /zh/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)是一个功能强大的类，它与[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)相关联，使您能够从头开始构建动态文档或向现有文档添加新元素。

**DocumentBuilder**

## 文档生成器或Aspose.WordsDOM

**DocumentBuilder**

当直接使用Aspose.WordsDOM的类时，也可以使用**DocumentBuilder**进行操作。 但是，直接使用Aspose.WordsDOM类通常需要比使用**DocumentBuilder**更多的代码行。

## 文档导航

文档导航基于虚拟光标的概念，您可以使用各种**DocumentBuilder.MoveToXXX**方法（如[MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/)和[MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/)）将其移动到文档中的另一个位置。 此虚拟光标指示调用方法时文本将插入的位置[Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), 和其他人。

下面的代码示例演示如何导航到书签:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## 文档构建和修改

Aspose.WordsAPI提供了几个类，它们负责格式化文档的各种元素。 每个类都封装了与特定文档元素（如文本、段落、节等）相关的格式属性。 例如，[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)类表示字符格式设置属性，[ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/)类表示段落格式设置属性，等等。 这些类的对象由相应的**DocumentBuilder**属性返回，这些属性与类具有相同的名称。 因此，您可以在文档构建期间访问它们并设置所需的格式。

您还可以使用`Write`方法或任何**DocumentBuilder.InsertXXX**方法（如[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)、[InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/)和类似方法）在光标位置插入文本、复选框、ole对象、图像、书签、表单字段和其他文档元素。

让我们看看如何使用**DocumentBuilder**创建一个简单的文档。

### 使用DocumentBuilder创建文档

首先，您需要创建一个**DocumentBuilder**并将其与**Document**对象相关联。 您可以通过调用其构造函数来创建**DocumentBuilder**的新实例，并将其传递给**Document**对象以附加到构建器。

要插入文本，请将需要插入到文档中的文本字符串传递给**Write**方法。

下面的代码示例演示如何使用文档生成器创建简单文档。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### 指定文档格式

[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)属性定义文本格式。 此对象包含不同的字体属性（字体名称、字体大小、颜色等）。 一些重要的字体属性也由**DocumentBuilder**属性表示，以允许您直接访问它们。 这些是[Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/)、[Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/)和[Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/)布尔属性。

下面的代码示例演示如何使用**DocumentBuilder**插入格式化文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)指定将应用于从文档当前位置开始插入的所有文本的字符格式。
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/)指定要插入的当前段落和所有段落的段落格式。
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/)指定当前节和将插入的整个节的页和节属性。
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/)和[RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/)指定将从文档中的当前位置开始应用于表格单元格和行的格式属性。

在这种情况下，"当前"表示光标所在的位置，段落，部分，单元格或行。

{{% /alert %}}

{{% alert color="primary" %}}

请注意，只要导航到文档中的不同位置，**Font**、**ParagraphFormat**和**PageSetup**属性就会更新，以反映此位置的格式属性。

{{% /alert %}}
