---
title: 脚注和尾注 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 脚注和尾注
linktitle: 脚注和尾注
description: "如何操纵脚注和尾注 Java。 。 。 。"
type: docs
weight: 160
url: /zh/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 还提供了一些使用脚注和尾注的类、方法和属性。

## 插入尾注和设置编号选项

如果您要在 Word 文档中插入脚注或尾注,请使用 [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) 方法。 这种方法在文档中插入脚注或尾注。

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) 和 [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) 分类表示脚注和尾注的编号选项。

以下代码示例显示如何在文档中插入尾注并设定其编号选项:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## 设置脚注布局列的数目

您可以使用 [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) 属性。 如果此属性的值为 0,则根据显示页面上的列数,将脚注区域格式化为若干列。

以下代码示例显示如何设置脚注布局的列数:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## 设置脚注和尾注的位置

脚注位置可以位于每页底部或每页文字下面. 尾注位置可以是本节末尾或文档结尾.

以下代码示例显示如何设置脚注和尾注的位置:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
