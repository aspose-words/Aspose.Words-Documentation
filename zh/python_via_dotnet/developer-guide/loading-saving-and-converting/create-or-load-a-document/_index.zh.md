---
title: 在 Python 中创建或加载文档
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 创建或加载文档
linktitle: 创建或加载文档
type: docs
url: /zh/python-net/create-or-load-a-document/
description: "创建空白文档或使用 Python 从文件或流加载它。"
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

几乎您想要使用 Aspose.Words 执行的任何任务都涉及加载文档。 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 类表示加载到内存中的文档。该文档有几个重载的构造函数，允许您创建空白文档或从文件或流加载它。文档可以以 Aspose.Words 支持的任何加载格式加载。有关所有支持的加载格式的列表，请参阅 [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 枚举。

## 创建一个新文档

我们将调用不带参数的 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 构造函数来创建一个新的空白文档。如果要以编程方式生成文档，最简单的方法是使用 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 类添加文档内容。

以下代码示例展示了如何使用文档生成器创建文档：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

请注意默认值：

- 空白文档包含一个带有默认参数的部分、一个空段落和一些文档样式。实际上这个文档和Microsoft Word中创建"新文档"的结果是一样的。
- 文档纸张尺寸为 [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter)。

{{% /alert %}}

## 加载文档

要加载任何 [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 格式的现有文档，请将文件名或流传递到 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 构造函数之一。加载文档的格式由其扩展名自动确定。

### 从文件加载

将文件名作为字符串传递给 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 构造函数以从文件打开现有文档。

以下代码示例显示如何从文件打开文档：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)下载本示例的模板文件。

### 从流加载

要从流中打开文档，只需将包含文档的流对象传递到 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 构造函数中即可。

以下代码示例演示如何从流中打开文档：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)下载本示例的模板文件。

{{% /alert %}}
