---
title: 将文档保存为 Python
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 保存文档
linktitle: 保存文档
type: docs
description: "使用 Python 以任何支持的格式保存文档。"
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /zh/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

您需要使用 Aspose.Words 执行的大多数任务都涉及保存文档。 Aspose.Words提供了[Document](https://reference.aspose.com/words/python-net/aspose.words/document/)类的[save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)方法来保存文档。有一些重载允许将文档保存到文件或流中。文档可以保存为 Aspose.Words 支持的任何保存格式。有关所有支持的保存格式的列表，请参阅 [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 枚举。

## 将文档保存到文件 {#save-a-document-to-a-file}

只需使用带有文件名的 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 方法即可。 Aspose.Words 将根据您指定的文件扩展名确定保存格式。

以下代码示例演示如何加载文档并将其保存到文件：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)下载本示例的模板文件。

{{% /alert %}}

## 将文档保存到流 {#save-a-document-to-a-stream}

将流对象传递给 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 方法。保存到流时需要明确指定保存格式。

以下代码示例演示如何将文档加载和保存到流中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)下载本示例的模板文件。

## 将文档保存到 PCL {#save-a-document-to-pcl}

Aspose.Words 支持将文档保存为 PCL（打印机命令语言）。 Aspose.Words 可以将文档保存为 PCL 6（PCL 6 增强型或 PCL XL）格式。 [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) 类可用于在将文档保存为 PCL 格式时指定附加选项。

以下代码示例演示如何使用保存选项将文档保存到 PCL：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

