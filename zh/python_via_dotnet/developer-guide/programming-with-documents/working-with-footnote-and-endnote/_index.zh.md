---
title: 使用脚注和尾注
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用脚注和尾注
linktitle: 使用脚注和尾注
description: "将 ffotnotes 或尾注插入文档并使用 Python 指定其选项。"
type: docs
weight: 160
url: /zh/python-net/working-with-footnote-and-endnote/
---

Aspose.Words 还提供了一些用于处理脚注和尾注的类、方法和属性。

## 插入尾注并设置编号选项

如果您想在Word文档中插入脚注或尾注，请使用[insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/)方法。此方法将脚注或尾注插入文档中。

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) 和 [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) 类代表脚注和尾注的编号选项。

以下代码示例演示如何将尾注插入文档并设置其编号选项：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## 设置脚注布局列数

您可以使用 [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) 属性设置脚注布局列数。如果此属性的值为 0，则脚注区域的格式将根据显示页面上的列数设置为列数。

以下代码示例显示如何设置脚注布局的列数：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## 设置脚注和尾注的位置

脚注位置可以位于每页的底部或每页文本的下方。尾注位置可以位于该节的末尾或文档的末尾。

下面的代码示例展示了如何设置脚注和尾注的位置：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
