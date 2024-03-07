---
title: 使用控制字符
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用控制字符
linktitle: 使用控制字符
description: "介绍如何使用 Aspose.Words for Python 中的控制字符。"
type: docs
weight: 400
url: /zh/python-net/working-with-control-characters/
---

Microsoft Word 文档可能包含具有特殊含义的各种字符。通常它们用于格式化目的并且不在正常模式下绘制。如果单击标准工具栏上的显示/隐藏格式标记按钮，可以使它们可见。

有时您可能需要在文本中添加或删除字符。例如，当以编程方式从文档中获取文本时，Aspose.Words 会保留大部分控制字符，因此如果您需要使用此文本，您可能应该删除或替换这些字符。

[ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) 类是常量的存储库，这些常量表示文档中经常遇到的控制字符。它提供相同常量的字符和字符串版本。例如，字符串 [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) 和字符 [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) 具有相同的值。

以下代码示例演示了如何使用控制字符：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
