---
title: 将文档保存在Java中
second_title: Aspose.Words为Java
articleTitle: 保存文档
linktitle: 保存文档
type: docs
description: "使用Java以任何支持的格式保存文档。"
weight: 20
url: /zh/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

您需要使用Aspose.Words执行的大多数任务都涉及保存文档。 保存文档Aspose.Words提供[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)类的[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String))方法。 文档可以以Aspose.Words支持的任何保存格式保存。 有关所有支持的保存格式的列表，请参阅[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)枚举。

## 保存到文件 {#save-a-document-to-a-file}

只需使用带有文件名的[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String)方法。 Aspose.Words将从您指定的文件扩展名确定保存格式。

下面的代码示例演示如何将文档加载并保存到文件中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 保存到流 {#save-a-document-to-a-stream}

将stream对象传递给[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)方法。 在保存到流时，有必要显式指定保存格式。

下面的代码示例演示如何将文档加载并保存到流中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## 保存到PCL {#save-a-document-to-pcl}

Aspose.Words支持将文档保存为PCL（打印机命令语言）。 Aspose.Words可以将文档保存为PCL6（PCL6增强或PCLXL）格式。 在将文档保存为PCL格式时，可以使用`PclSaveOptions`类指定其他选项。

下面的代码示例演示如何使用保存选项将文档保存到PCL:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
