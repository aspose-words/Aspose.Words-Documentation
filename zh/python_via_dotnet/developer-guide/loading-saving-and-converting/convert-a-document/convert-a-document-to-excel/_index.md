---
title: 将 Python 格式的 Word 转换为 Excel
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 将文档转换为 Excel
linktitle: 将文档转换为 Excel
description: "将 PDF 转换为 Excel、将 XML 转换为 Excel、将 DOCX 转换为 Excel Python。使用 Python 将各种格式的文档保存到 XLSX。"
type: docs
weight: 15
url: /zh/python-net/convert-a-document-to-excel/
---

将文档从一种格式转换为另一种格式是 Aspose.Words 的旗舰功能。您可以将任何可用的 [加载格式](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 文档转换为 XLSX 格式。

## 将文档转换为 XLSX

将文档转换为 XLSX 是一个相当复杂的过程。要使用 Aspose.Words 将文档保存为 XLSX 格式，请使用 [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) 类和 [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 枚举中的新 `Xlsx` 元素。如上所述，您可以将文档保存为 Aspose.Words 支持的任何加载格式到 XLSX。

以下代码示例显示如何将 PDF 保存到 XLSX：

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

有时需要指定其他选项，这可能会影响将文档另存为 XLSX 的结果。这些选项可以通过使用 [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) 类来指定，其中包含确定如何显示 XLSX 输出的属性。

{{% /alert %}}

## 保存到 XLSX 时查找和替换

另外，使用 Aspose.Words，您可以在文档中查找特定字符串或正则表达式，并将其替换为您需要的匹配字符串或正则表达式。然后您还可以将结果保存为 XLSX 格式。

以下代码示例显示如何执行查找和替换操作并将结果保存到 XLSX：

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## 保存到 XLSX 时指定压缩级别

您还可以使用 [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) 属性指定保存时的压缩级别。

以下代码示例演示如何在保存为 XLSX 格式时指定压缩级别：

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## 也可以看看

- 文档部分 [保护或加密文档](/words/zh/python-net/protect-or-encrypt-a-document/) 了解有关保护和加密文档的更多信息
- 文章 [查找和替换](/words/zh/python-net/find-and-replace/) 了解有关查找和替换所需内容的更多信息
