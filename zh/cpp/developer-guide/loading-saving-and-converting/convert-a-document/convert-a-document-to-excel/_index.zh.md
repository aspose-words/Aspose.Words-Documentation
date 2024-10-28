---
title: 在C++中将Word转换为Excel
second_title: Aspose.Words对于C++
articleTitle: 将文档转换为Excel
linktitle: 将文档转换为Excel
description: "将PDF转换为Excel，XML转换为Excel，DOCX转换为Excel C++。 使用C++将各种格式的文档保存到XLSX。"
type: docs
weight: 15
url: /zh/cpp/convert-a-document-to-excel/
---

将文档从一种格式转换为另一种格式是Aspose.Words的旗舰功能。 您还可以将任何可用的[load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)格式的文档转换为XLSX格式。

## 将文档转换为XLSX

将文档转换为XLSX是一个相当复杂的过程。 要使用Aspose.Words将文档保存为XLSX格式，请使用**XlsxSaveOptions**类和[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)枚举中的新`Xlsx`元素。 如上所述，您可以将文档保存为Aspose.Words到XLSX支持的任何加载格式。

下面的代码示例演示如何将PDF保存为XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## 保存到XLSX时查找和替换

同样使用Aspose.Words，您可以在文档中找到特定的字符串或正则表达式，并将其替换为所需的匹配字符串或正则表达式。 然后，您还可以将结果保存为XLSX格式。

下面的代码示例演示如何执行查找和替换操作并将结果保存为XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## 保存到XLSX时指定压缩级别

您还可以使用**CompressionLevel**属性指定保存时的压缩级别。

下面的代码示例演示如何在保存为XLSX格式时指定压缩级别:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## 请参阅

- 文件组 [保护或加密文档](/words/cpp/protect-or-encrypt-a-document/) 有关保护和加密文档的详细信息
- 文章 [查找和替换](/words/cpp/find-and-replace/) 有关查找和替换所需内容的更多信息
