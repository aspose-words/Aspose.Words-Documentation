---
title: 在 Python 中使用文本框
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用文本框
linktitle: 使用文本框
description: "使用 Python 处理文档中的文本框。"
type: docs
weight: 250
url: /zh/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

在 Aspose.Words 中，[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) 类用于指定文本在形状内的显示方式。它提供了一个名为 [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) 的公共属性来获取文本框的父形状，以允许客户从链接的 [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) 中查找链接的 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)。

## 创建链接

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) 类提供了 [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) 方法来检查 [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) 是否可以链接到目标文本框。

以下代码示例显示如何检查 `TextBox` 是否可以链接到目标文本框：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## 检查文本框顺序

有多种方法可以在形状中显示文本。 [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) 可以是序列的头部、中间或尾部。

以下代码示例显示如何检查 **TextBox** 是序列的头、尾还是中间：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## 断开链接

使用 [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) 方法，您可以断开到下一个 **TextBox** 的链接。

以下代码示例显示如何断开 **TextBox** 的链接：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
