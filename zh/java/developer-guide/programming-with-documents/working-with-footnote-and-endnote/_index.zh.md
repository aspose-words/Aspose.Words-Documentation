---
title: 在Java中使用脚注和尾注
second_title: Aspose.Words为Java
articleTitle: 使用脚注和尾注
linktitle: 使用脚注和尾注
description: "如何使用Java操作脚注和尾注。"
type: docs
weight: 160
url: /zh/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words还提供了一些用于处理脚注和尾注的类、方法和属性。

## 插入尾注并设置编号选项

如果要在Word文档中插入脚注或尾注，请使用[InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String)方法。 此方法将脚注或尾注插入到文档中。

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/)和[FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/)类表示脚注和尾注的编号选项。

下面的代码示例演示如何将endnote插入到文档中并设置其编号选项:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## 设置脚注布局列数

您可以使用[Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns)属性设置脚注布局列的数量。 如果此属性的值为0，则脚注区域将根据显示的页面上的列数设置为若干列的格式。

下面的代码示例演示如何设置脚注布局的列数:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## 设置脚注和EndNote的位置

脚注位置可以在每页的底部，也可以在每页文本的下方。 尾注位置可以在章节的末尾，也可以在文档的末尾。

下面的代码示例演示如何设置脚注和尾注的位置:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
