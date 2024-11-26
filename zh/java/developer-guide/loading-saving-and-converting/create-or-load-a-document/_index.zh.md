---
title: 在Java中创建或加载文档
second_title: Aspose.Words为Java
articleTitle: 创建或加载文档
linktitle: 创建或加载文档
type: docs
weight: 10
url: /zh/java/create-or-load-a-document/
description: "Aspose.Words使您能够创建空白文档或使用Java从文件或流中加载它。"
timestamp: 2024-01-27-14-07-04
---

几乎任何要使用Aspose.Words执行的任务都涉及加载文档。 `Document`类表示加载到内存中的文档。 该文档有几个重载的构造函数，允许您创建空白文档或从文件或流中加载它。 文档可以以Aspose.Words支持的任何加载格式加载。 有关所有支持的加载格式的列表，请参阅[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)枚举。

## 创建一个新文档 {#create-a-new-document}

我们将调用不带参数的[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)构造函数来创建一个新的空白文档。 如果要以编程方式生成文档，最简单的方法是使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder)类添加文档内容。

下面的代码示例演示如何使用文档生成器创建文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

注意默认值:

- 一个空白文档包含一个带有默认参数的部分，一个空段落，一些文档样式。 实际上，此文档与在Microsoft Word中创建"新文档"的结果相同。
- 文档纸张大小为[PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)。**Letter**.

{{% /alert %}}

## 加载文档

要以任何[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)格式加载现有文档，请将文件名或流传递到其中一个文档构造函数中。 加载文档的格式由其扩展名自动确定。

### 从文件 {#load-from-a-file}加载

将文件名作为字符串传递给文档构造函数，以从文件中打开现有文档。

下面的代码示例演示如何从文件中打开文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### 从流加载 {#load-from-a-stream}

要从流中打开文档，只需将包含文档的流对象传递到文档构造函数中。

下面的代码示例演示如何从流中打开文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
