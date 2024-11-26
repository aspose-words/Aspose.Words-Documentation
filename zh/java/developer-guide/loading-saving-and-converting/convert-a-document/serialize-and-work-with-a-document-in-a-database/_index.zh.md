---
title: 序列化并使用数据库中的文档
second_title: Aspose.Words为Java
articleTitle: 序列化并使用数据库中的文档
linktitle: 序列化并使用数据库中的文档
description: "将文档转换为字节数组，以便在数据库中处理此文档。 您可以使用Java在数据库中存储和检索文档。"
type: docs
weight: 40
url: /zh/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

在处理文档时，您可能需要完成的任务之一是在数据库中存储和检索**Document**对象。 例如，如果您正在实施任何类型的内容管理系统，这将是必要的。 所有以前版本的文档都必须存储在数据库系统中。 当您的应用程序提供基于web的服务时，在数据库中存储文档的能力也非常有用。

Aspose.Words提供了将文档转换为字节数组的功能，以便在数据库中处理此文档。

## 将文档转换为字节数组

要将文档存储在数据库中或准备文档以在web上传输，通常需要对文档进行序列化以获得字节数组。

序列化Aspose.Words中的[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)对象:

1. 使用**Document**类的[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int)方法重载将其保存到**MemoryStream**中。
1. 调用**ToArray**方法，该方法返回以字节形式表示文档的字节数组。

然后可以颠倒上面的步骤，将字节加载回**Document**对象。

{{% alert color="primary" %}}

选定的保存格式对于确保在保存并重新加载到**Document**对象时保持最高保真度非常重要。 出于这个原因，建议使用一系列OOXML文件格式。

{{% /alert %}}

下面的示例演示如何序列化**Document**对象以获取字节数组，然后如何取消序列化字节数组以再次获取**Document**对象:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 在数据库中存储、读取和删除文档

本节演示如何将文档保存在数据库中，然后将其加载回`Document`对象以进行处理。 为简单起见，文件名是用于存储和从数据库中获取文档的密钥。 数据库包含两列。 第一列"FileName"存储为字符串，用于标识文档。 第二列"FileContent"存储为`BLOB`对象，该对象以字节形式存储文档对象。

下面的代码示例演示如何设置与数据库的连接并执行命令:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

在这个例子中，我们使用MySQL数据库来存储Aspose.Words文档。

{{% /alert %}}

下面的代码示例演示如何将文档保存到数据库，然后再次读取同一文档，最后从数据库中删除包含该文档的记录:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### 将文档保存到数据库

要将文档保存在数据库中，请将此文档转换为字节数组，如本文开头所述。 然后，将此字节数组保存到数据库字段中。

下面的代码示例演示如何将文档保存到指定的数据库:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

指定commandString，它是执行所有工作的SQL表达式:

- 要将文档保存到数据库中，使用"INSERTINTO"命令并指定一个表以及两个记录字段的值–FileName和FileContent。 为了避免额外的参数，文件名取自**Document**对象本身。 `FileContent`字段值是从内存流中分配的字节，该内存流包含存储文档的二进制表示。
- 剩余的代码行执行将Aspose.Words文档存储在数据库中的命令。

### 从数据库检索文档

要从数据库中检索文档，请选择包含文档数据的记录作为字节数组。 然后将字节数组从记录加载到**MemoryStream**中，并创建一个**Document**对象，该对象将从**MemoryStream**加载文档。

下面的代码示例演示如何使用文件名作为获取此文档的键从指定的数据库中检索和返回文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

SQL命令"SELECT*FROM"用于根据文件名获取适当的记录。

{{% /alert %}}

### 从数据库中删除文档

要从数据库中删除文档，请使用适当的SQL命令，而不对**Document**对象进行任何操作。

下面的代码示例演示如何从数据库中删除文档，使用文件名来获取记录:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
