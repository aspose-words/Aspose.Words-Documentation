---
title: 以光标进行导航 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 用光标导航
linktitle: 用光标导航
description: "在文档中不同节点之间导航,例如段落、书签或使用特定字符 Java。 。 。 。"
type: docs
weight: 5
url: /zh/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

在使用文档时,即使文件是短的或长的,您也需要浏览您的文档。 以虚拟光标进行导航,代表文档中不同节点之间的导航能力.

在简短的文档中,在文档中移动是简单的,因为即使您可以使用键盘的箭头键移动插入点,或者点击鼠标在任意位置定位插入点. 但是,一旦你有一个大的文件,有许多页,这些基本技术将是不够的.

本文解释了如何在文档中移动,并用虚拟光标导航到其中的不同部分.

## 检测当前光标位置

在通过文档开始导航进程之前,您需要获得当前选择的节点。 您可以使用 [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) 属性。 此外,您可以不获取当前节点,而是使用当前选定的段落或当前选定的区域。 [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) 和 [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) 属性。

您使用的插入操作 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 将在 [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode)。 。 。 当当前段落是空的或光标在段落末尾之前的位置时, **CurrentNode** 返回为无效。

## 文档中的导航方法

当您正在编辑文本时,必须知道如何浏览您的文档,以及文件的确切位置。 Aspose.Words 允许您在文档中移动并导航到其不同的部分和部分 - 这类似于导航窗格在 Microsoft Word 在不滚动的Word文档中跳转到页面或标题。

主要的方法是将光标位置移动到文档中的特定节点,您可以通过使用 [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) 方法。

以下代码示例显示如何移动 **DocumentBuilder** 改为文档中不同的节点:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

但除了基础 **MoveTo** 方法,有更具体的方法。

### 导航到文档的起始或结尾

您可以使用 [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) 和 [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) 方法。 方法。 。

以下代码示例显示如何将光标位置移动到文档的起始或结尾:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### 带有书签的导航

可以标出一个你想找到的地方,再轻松地移动到它. 您可以任意在文档中插入尽可能多的书签,然后通过识别具有独特名称的书签来浏览。 您可以使用 [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) 方法。

以下代码示例显示如何将光标位置移动到书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### 导航到表格单元格

您可以使用 [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) 方法。 这种方法将使您能够将光标导航到特定表格中的任何单元格。 此外,您还可以指定一个索引,将光标移动到单元格中的任何位置或指定字符。 **MoveToCell** 方法。

以下代码示例显示如何将光标位置移动到指定的表格单元格:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### 导航到字段

您可以使用 [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) 方法。 此外,还可以通过使用 [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) 方法。

以下代码示例显示如何将文档构建器光标移动到特定字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### 导航到页眉或页脚

您可以使用 [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) 方法。

以下代码示例显示如何将文档构建器光标移动到文档页眉或页脚:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 导航到一节或段落

您可以使用 [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) 或 [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) 方法。 方法。 。 此外,您还可以指定一个索引,将光标移动到段落中的任何位置或指定字符。 **MoveToParagraph** 方法。

以下代码示例说明如何移动到文档中的特定章节和特定段落:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
