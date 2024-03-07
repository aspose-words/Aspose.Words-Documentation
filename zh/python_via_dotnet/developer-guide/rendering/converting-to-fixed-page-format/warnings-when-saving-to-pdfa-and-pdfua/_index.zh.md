---
title: 保存为 PDF/A 和 PDF/UA 时的警告
second_title: Python 格式的 Aspose.Words
articleTitle: 保存为 PDF/A 和 PDF/UA 时出现辅助功能问题警告
linktitle: 保存为 PDF/A 和 PDF/UA 时出现辅助功能问题警告
description: "PDF/A 和 PDF/UA 施加了与文档内容相关的可访问性要求。当保存为 Python 中的 PDF/A 或 PDF/UA 且问题违反合规性时，会发出警告。"
type: docs
weight: 29
url: /zh/python-net/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A 和 PDF/UA 格式提出了许多与文档内容相关的辅助功能要求，而这些要求在从 Word 自动转换为 PDF 的过程中无法满足。这些要求在上一篇文章 *"使用 PDF/A 或 PDF/UA"* 中进行了描述。现在针对其中一些问题发出了警告。

保存为 PDF/A 或 PDF/UA 格式之一并且该问题违反合规性时会发出警告。例如，保存为 PDF/UA 时会发出有关缺少文档标题的警告，而保存为 PDF/A 时则不会发出有关缺少文档标题的警告。

所有警告均为 [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.MinorFormattingLoss** 和 [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**.pdf**。以下是新的描述警告值的列表：

|  说明 警告值 |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "该文档包含的标题的级别不连续。这违反了合规性要求。输出文档将不完全合规。" |                          |   {{< emoticons/tick >}}  |
|  "文档中存在没有替代文本的形状。这违反了合规性要求。输出文档将不完全合规。" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "文档中有些表格没有替代文本。这违反了合规性要求。输出文档将不完全合规。" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "该文档包含 Unicode PUA 字符。这违反了合规性要求。输出文档将不完全合规。" |   {{< emoticons/tick >}}  |                          |
|  "该文档包含 .notdef glyph。这违反了合规性要求。输出文档将不完全合规。" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |