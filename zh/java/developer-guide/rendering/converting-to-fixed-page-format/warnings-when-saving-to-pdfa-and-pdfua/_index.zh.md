---
title: 保存到PDF/A和PDF/UA时的警告
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 保存到 PDF/A 和 PDF/UA 时的可访问性警告
linktitle: 保存到 PDF/A 和 PDF/UA 时的可访问性警告
description: "PDF/A和PDF/UA对文件内容规定了无障碍要求。 当保存到 PDF/A 或 PDF/UA 时 Java 如果问题违反规定,就发出警告。"
type: docs
weight: 29
url: /zh/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A和PDF/UA格式对文件内容规定了一些在从Word自动转换到PDF时无法满足的无障碍要求. 这些要求在上条*"与PDF/A或PDF/UA合作"中描述. 现在对其中一些问题发出警告。

在保存到一个PDF/A或PDF/UA格式时,会发出警告,问题违反规定. 例如,在保存到PDF/UA时会发出丢失文档标题的警告,而在保存到PDF/A时不会发出警告.

所有警告为: [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.最小格式损失** 和 [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.。 。 。 。 页:1**。 。 。 。 以下是新的描述警告值列表:

|  描述警告值 |  专题报告/A |  PDF/UA 数据 |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "文件标题缺失. 这违反了遵守要求。 输出文件不会完全遵守" |                          |   {{< emoticons/tick >}}  |
|  "本文件中的标题不是连续的。 这违反了遵守要求。 输出文件不会完全遵守" |                          |   {{< emoticons/tick >}}  |
|  "文档中有没有备选案文的形状. 这违反了遵守要求。 输出文件不会完全遵守" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "文档中有没有备选案文的表格. 这违反了遵守要求。 输出文件不会完全遵守" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "文档中有没有备选案文的超链接. 这违反了遵守要求。 输出文档将不会完全遵守" |                          |   {{< emoticons/tick >}}  |
|  "文档中有没有标题行/栏的表格. 这违反了遵守要求。 输出文档将不会完全遵守" |                          |   {{< emoticons/tick >}}  |
|  "文档中包含Unicode PUA字符. 这违反了遵守要求。 输出文件不会完全遵守" |   {{< emoticons/tick >}}  |                          |
|  "该文件包含. glyph编号 这违反了遵守要求。 输出文件不会完全遵守" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
