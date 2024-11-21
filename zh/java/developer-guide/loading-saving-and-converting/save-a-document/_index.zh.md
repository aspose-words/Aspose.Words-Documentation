---
title: 将文档保存于 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 保存文档
linktitle: 保存文档
type: docs
description: "使用任何支持的格式保存文档 Java。 。 。 。"
weight: 20
url: /zh/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

您需要完成的大部分任务 Aspose.Words 涉及保存文档。 要保存文档 Aspose.Words 提供 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)方法 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 课。 文档可以用支持的任何保存格式保存 Aspose.Words。 。 。 。 关于所有支持保存格式的列表,请参见 [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 计数.

## 保存到文件 {#save-a-document-to-a-file}

随便用 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) 使用文件名的方法。 Aspose.Words 将确定您指定的文件扩展名中的保存格式。

以下代码示例显示如何将文档加载并保存到文件:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

{{% /alert %}}

## 保存为流 {#save-a-document-to-a-stream}

将流对象传递到 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 方法。 在保存到流时需要明确指定保存格式.

以下代码示例显示如何将文档加载并保存到流中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

## 保存到 PCL {#save-a-document-to-pcl}

Aspose.Words 支持将文档保存到 PCL( Printer 命令语言) 。 Aspose.Words 可以将文档保存到PCL 6(PCL 6增强或PCL XL)格式中. 那个 `PclSaveOptions` 当将文档保存到 PCL 格式时,可以使用类指定附加选项。

以下代码示例显示如何使用保存选项保存文档到 PCL:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
