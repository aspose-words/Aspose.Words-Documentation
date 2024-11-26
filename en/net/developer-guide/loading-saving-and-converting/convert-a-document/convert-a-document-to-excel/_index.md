---
title: Convert Word to Excel in C#
second_title: Aspose.Words for .NET
articleTitle: Convert a Document to Excel
linktitle: Convert a Document to Excel
description: "Convert PDF to Excel, XML to Excel, DOCX to Excel C#. Save a document in various formats to XLSX using C#."
type: docs
weight: 15
url: /net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Converting documents from one format to another is the flagship feature of Aspose.Words. You can convert documents in any available [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) also to XLSX format.

## Convert a Document to XLSX

Converting a document to XLSX is a rather complicated process. To save your document to XLSX format using Aspose.Words, use the [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) class and the new `Xlsx` element in the [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) enumeration. As mentioned above, you can save the document in any load format supported by Aspose.Words to XLSX.

The following code example shows how to save PDF to XLSX:

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "pdf-to-xlsx.cs" >}}

{{% alert color="primary" %}}

Sometimes it is necessary to specify additional options, which can affect the result of saving a document as a XLSX. These options can be specified by the use of the [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) class, containing properties that determine how the XLSX output will be displayed.

{{% /alert %}}

## Find and Replace When Saving to XLSX

Also using Aspose.Words, you can find a specific string or regular expression in your document and replace it with the matching one you need. Then you can also save the result to XLSX format.

The following code example shows how to perform find and replace operation and save result to XLSX:

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "find-replace-xlsx.cs" >}}

## Specify Compression Level When Saving to XLSX

You can also specify the compression level when saving using the [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) property.

The following code example shows how to specify the compression level when saving to XLSX format:

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "compress-xlsx.cs" >}}

## See Also

- Documentation section [Protect or Encrypt a Document](/words/net/protect-or-encrypt-a-document/) for more information about protecting and encrypting a document
- The article [Find and Replace](/words/net/find-and-replace/) for more more information about finding and replacing the content you want
