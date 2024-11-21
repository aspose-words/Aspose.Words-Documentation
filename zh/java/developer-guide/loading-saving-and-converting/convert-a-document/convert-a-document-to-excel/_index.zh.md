---
title: 将单词转换为 Excel 在 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 将文档转换为 Excel
linktitle: 将文档转换为 Excel
description: "将 PDF 转换为 Excel, XML 转换为 Excel, DOCX 转换为 Excel Java。 。 。 。 使用各种格式的文档保存到 XLSX Java。 。 。 。"
type: docs
weight: 15
url: /zh/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

将文档从一种格式转换到另一种格式是旗舰特性 Aspose.Words。 。 。 。 您可以在任何可用的文档中转换文档 [装入格式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ưμ㼯A

## 将文档转换为 XLSX

将文档转换为 XLSX 是一个相当复杂的过程. 要将文档保存到 XLSX 格式 <span notrans="<span notrans=" Aspose.Words"=""></span>",> 使用 [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) 类和新 `Xlsx` 图标 [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 计数. 如上所述,您可以将文档保存在支持的任何负载格式中 Aspose.Words 呼叫XLSX,请回答

以下代码示例显示如何将 PDF 保存到 XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

有时需要指定附加选项,这可能会影响将文档保存为XLSX的结果. 这些选项可以通过使用 [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) 类,包含决定 XLSX 输出将如何显示的属性。

{{% /alert %}}

## 保存到 XLSX 时查找和替换

还使用 Aspose.Words, 您可以在文档中找到特定的字符串或正则表达式,并替换为所需的匹配的表达式。 然后也可以将结果保存到XLSX格式.

以下代码示例显示如何执行查找和替换操作并保存结果给 XLSX:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## 保存到 XLSX 时指定压缩级别

您也可以在保存时指定压缩级别 [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) 属性。

以下代码示例显示保存到 XLSX 格式时如何指定压缩级别:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## 另见

- 文件科 [保护或加密文档](/words/zh/java/protect-or-encrypt-a-document/) 用于保存和加密文档的更多信息
- 这篇文章 [查找和替换](/words/zh/java/find-and-replace/) 获取更多关于查找和替换您想要的内容的信息
