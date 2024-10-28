---
title: 在C++中创建或加载文档
second_title: Aspose.Words对于C++
articleTitle: 创建或加载文档
linktitle: 创建或加载文档
type: docs
description: "创建空白文档或使用C++从文件或流中加载它。"
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /zh/cpp/create-or-load-a-document/
---

几乎任何要使用Aspose.Words执行的任务都涉及加载文档。 `Document`类表示加载到内存中的文档。 该文档具有多个重载构造函数，允许您创建空白文档或从文件或流中加载它。 文档可以以Aspose.Words支持的任何加载格式加载。 有关所有支持的加载格式的列表，请参阅[LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)枚举。

## 创建一个新文档{#create-a-new-document}

我们将调用不带参数的[Document](https://reference.aspose.com/words/cpp/class/aspose.words.document)构造函数来创建一个新的空白文档。 如果要以编程方式生成文档，最简单的方法是使用[DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder)类添加文档内容。

下面的代码示例演示如何使用文档生成器创建文档:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

注意默认值:

- 一个空白文档包含一个带有默认参数的部分，一个空段落，一些文档样式。 实际上，此文档与在Microsoft Word中创建"新文档"的结果相同。
- 文档纸张大小为[PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/)。**Letter**.

{{% /alert %}}

## 加载文档

要以任何`LoadFormat`格式加载现有文档，请将文件名或流传递到其中一个文档构造函数中。 加载文档的格式由其扩展名自动确定。

### 从文件{#load-from-a-file}加载

将文件名作为字符串传递给文档构造函数，以从文件中打开现有文档。

下面的代码示例演示如何从文件中打开文档:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### 从流加载{#load-from-a-stream}

要从流中打开文档，只需将包含文档的流对象传递到文档构造函数中。

下面的代码示例演示如何从流中打开文档:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
