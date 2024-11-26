---
title: 在 C# 中使用脚注和尾注
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用脚注和尾注
linktitle: 使用脚注和尾注
description: "如何使用 C# 操作脚注和尾注。"
type: docs
weight: 160
url: /zh/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 还提供了一些用于处理脚注和尾注的类、方法和属性。

## 插入尾注并设置编号选项

如果您想在Word文档中插入脚注或尾注，请使用[InsertFootnote](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertfootnote/)方法。此方法将脚注或尾注插入文档中。

[EndnoteOptions](https://reference.aspose.com/words/zh/net/aspose.words.notes/endnoteoptions/) 和 [FootnoteOptions](https://reference.aspose.com/words/zh/net/aspose.words.notes/footnoteoptions/) 类代表脚注和尾注的编号选项。

以下代码示例演示如何将尾注插入文档并设置其编号选项：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## 设置脚注布局列数

您可以使用 [Columns](https://reference.aspose.com/words/zh/net/aspose.words.notes/footnoteoptions/columns/) 属性设置脚注布局列数。如果此属性的值为 0，则脚注区域的格式将根据显示页面上的列数设置为列数。

以下代码示例显示如何设置脚注布局的列数：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## 设置脚注和尾注的位置

脚注位置可以位于每页的底部或每页文本的下方。尾注位置可以位于该节的末尾或文档的末尾。

下面的代码示例展示了如何设置脚注和尾注的位置：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
