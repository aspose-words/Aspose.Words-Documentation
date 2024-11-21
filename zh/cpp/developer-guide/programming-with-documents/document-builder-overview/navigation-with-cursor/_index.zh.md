---
title: C++中光标导航
second_title: Aspose.Words对于C++
articleTitle: 光标导航
linktitle: 光标导航
description: "使用C++在文档中的不同节点之间导航，例如段落、书签或特定字符。"
type: docs
weight: 10
url: /zh/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

在处理文档时，即使是短文档或长文档，您也需要浏览文档。 使用虚拟光标导航表示在文档中的不同节点之间导航的能力。

在一个简短的文档中，在文档中移动很简单，因为您可以移动插入点，即使使用键盘的箭头键或单击鼠标将插入点定位到您想要的任何位置。 但是一旦你有一个有很多页面的大文档，这些基本技术就会不足。

本文介绍了如何在文档中移动并使用虚拟光标导航到文档的不同部分。

## 检测当前光标位置

在开始浏览文档之前，您需要获取当前选择的节点。 您可以使用[CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/)属性获取光标在选定节点上的确切位置。 此外，您可以通过使用[CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/)和[CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/)属性来获取当前选定的段落或当前选定的部分，而不是获取当前节点。

您使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)执行的任何插入操作都将插入到[CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/)之前。 当当前段落为空或光标位于段落末尾之前时，**CurrentNode**返回nullptr。

## 在文档中导航方法

在编辑文本时，重要的是要知道如何导航文档以及在其中准确移动的位置。 Aspose.Words允许您在文档中移动并导航到其不同的部分和部分-这与Microsoft Word中的导航窗格的功能类似，可以在不滚动的情况下转到Word文档中的页面或标题。

主要方法是能够将光标位置移动到文档中的特定节点，您可以通过使用[MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/)方法来实现这一点。

下面的代码示例演示如何将**DocumentBuilder**移动到文档中的不同节点:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

但除了基本的**MoveTo**方法之外，还有更具体的方法。

### 导航到文档的开头或结尾

您可以使用[MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/)和[MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/)方法转到文档的开头或结尾。

下面的代码示例演示如何将光标位置移动到文档的开头或结尾:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### 使用书签导航

你可以标记一个你想找到的地方，然后很容易地再次移动到它。 您可以在文档中插入任意数量的书签，然后通过识别具有唯一名称的书签来浏览它们。 您可以使用[MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/)方法移动到书签。

以下代码示例演示如何将光标位置移动到书签:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### 导航到表格单元格

您可以使用[MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/)方法移动到表格单元格。 此方法将使您能够将光标导航到特定表中的任何单元格中。 此外，您还可以指定索引以将光标移动到**MoveToCell**方法中单元格中的任何位置或指定字符。

下面的代码示例演示如何将光标位置移动到指定的表格单元格:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### 导航到字段

您可以使用[MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/)方法移动到文档中的特定字段。 此外，您可以使用[MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/)方法移动到特定的合并字段。

下面的代码示例演示如何将文档生成器光标移动到特定字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### 导航到页眉或页脚

您可以使用[MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/)方法移动到页眉或页脚的开头。

下面的代码示例演示如何将文档生成器光标移动到文档页眉或页脚:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### 导航到部分或段落

您可以使用[MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/)或[MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/)方法移动到特定的部分或段落。 此外，您还可以指定一个索引，将光标移动到**MoveToParagraph**方法中的段落中的任何位置或指定字符。

下面的代码示例演示如何移动到文档中的特定部分和特定段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
