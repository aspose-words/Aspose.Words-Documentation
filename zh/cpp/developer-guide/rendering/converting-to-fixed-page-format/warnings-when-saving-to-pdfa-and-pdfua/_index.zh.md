---
title: 保存到PDF/A和PDF/UA时的警告
second_title: Aspose.Words对于C++
articleTitle: 可访问性在保存到PDF/A和PDF/UA时发出警告
linktitle: 可访问性在保存到PDF/A和PDF/UA时发出警告
description: "PDF/A 和 PDF/UA 规定了与文档内容相关的可访问性要求。当使用 C++ 保存到 PDF/A 或 PDF/UA 时，如果问题违反了合规性，则会发出警告。"
type: docs
weight: 39
url: /zh/cpp/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A和PDF/UA格式施加了许多与文档内容相关的可访问性要求，这些要求在从Word自动转换为PDF期间无法满足。 在前一篇文章*"Working with PDF/A or PDF/UA"*中描述了这些要求。 现在对其中一些问题发出警告。

保存为PDF/A或PDF/UA格式之一时会发出警告，并且该问题违反了合规性。 例如，有关缺少文档标题的警告将在保存到PDF/UA时发出，而在保存到PDF/A时不会发出。

所有警告都是**WarningType.MinorFormattingLoss**和**WarningSource.Pdf**。 以下是新描述警告值的列表:

| 说明警告值 | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "文档标题丢失。 这违反了合规要求。 输出文档将不完全兼容。" |  | {{< emoticons/tick >}} |
| "该文件包含标题哪些级别不是连续的。 这违反了合规要求。 输出文档将不完全兼容。" |  | {{< emoticons/tick >}} |
| "文档中有没有alt文本的形状。 这违反了合规要求。 输出文档将不完全兼容。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "文档中有没有alt文本的表格。 这违反了合规要求。 输出文档将不完全兼容。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "文档中有没有alt文本的超链接。 这违反了合规要求。 输出文档将不完全兼容。" |  | {{< emoticons/tick >}} |
| "文档中有没有标题行/列的表。 这违反了合规要求。 输出文档将不完全兼容。" |  | {{< emoticons/tick >}} |
| "文档包含UnicodePUA字符。 这违反了合规要求。 输出文档将不完全兼容。" | {{< emoticons/tick >}} |  |
| "该文件包含。notdef字形。 这违反了合规要求。 输出文档将不完全兼容。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |