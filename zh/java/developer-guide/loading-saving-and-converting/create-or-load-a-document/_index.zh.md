---
title: 创建或装入文档 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 创建或装入文档
linktitle: 创建或装入文档
type: docs
weight: 10
url: /zh/java/create-or-load-a-document/
description: "Aspose.Words 允许您创建空白文档,或者使用 Java。 。 。 。"
---

几乎任何您想要完成的任务 Aspose.Words 涉及装入文档。 那个 `Document` 类代表装入内存的文档。 文档有多个超载的构造器允许您创建空白文档或者从文件或流中加载. 文档可以任意加载格式加载 Aspose.Words。 。 。 。 所有支持的负载格式列表见 [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) 计数.

## 创建新文档 {#create-a-new-document}

我们叫 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 没有参数的构造器创建新的空白文档。 如果您想在程序上生成文档,最简单的方式是使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) 分类以添加文档内容。

以下代码示例显示如何使用文档构建器创建文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

注意默认值:

- 空白文档包含一个带有默认参数的段落、一个空段落、一些文档样式。 实际上,这份文件与创建"新文件"的结果相同。 Microsoft Word。 。 。 。
- 怎么样? 文档纸张大小为 [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)。 。 。 。**Letter**。 。 。 。

{{% /alert %}}

## 装入文档

在任意一个 [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) 格式,将文件名称或流传到文档构建器中。 装入的文档的格式由其扩展自动决定.

### 从文件装入 {#load-from-a-file}

将文件名称作为字符串传递给文档构建器,以便从文件中打开已有的文档。

以下代码示例显示如何从文件中打开文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

### 从流中装入 {#load-from-a-stream}

要从流中打开文档,只需将包含文档的流对象传递到文档构建器中.

以下代码示例显示如何从流中打开文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

{{% /alert %}}
