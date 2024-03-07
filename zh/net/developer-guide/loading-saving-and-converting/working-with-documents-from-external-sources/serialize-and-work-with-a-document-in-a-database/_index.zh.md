---
title: 序列化数据库中的文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 序列化和使用数据库中的文档
linktitle: 序列化和使用数据库中的文档
description: "将文档转换为字节数组，以便使用 C# 在数据库中处理该文档。您可以在数据库中存储和检索文档。"
type: docs
weight: 10
url: /zh/net/serialize-and-work-with-a-document-in-a-database/
---

处理文档时可能需要完成的任务之一是在数据库中存储和检索 **Document** 对象。例如，如果您正在实施任何类型的内容管理系统，则这是必要的。所有以前版本的文档都必须存储在数据库系统中。当您的应用程序提供基于 Web 的服务时，在数据库中存储文档的能力也非常有用。

Aspose.Words 提供了将文档转换为字节数组的功能，以便后续在数据库中使用该文档。

## 将文档转换为字节数组

为了将文档存储在数据库中或准备文档以便在网络上传输，通常需要序列化文档以获得字节数组。

要在 Aspose.Words 中序列化 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 对象：

1. 使用 **Document** 类的 [Save](https://reference.aspose.com/words/zh/net/aspose.words/document/save/) 方法重载将其保存到 **MemoryStream**。
1. 调用 **ToArray** 方法，该方法返回以字节形式表示文档的字节数组。

然后可以颠倒上述步骤，将字节加载回 **Document** 对象。

{{% alert color="primary" %}}

所选的保存格式对于确保保存并重新加载到 **Document** 对象时保留最高保真度非常重要。因此，建议使用一系列 OOXML 文件格式。

{{% /alert %}}

下面的示例展示了如何序列化 **Document** 对象以获取字节数组，然后如何反序列化字节数组以再次获取 **Document** 对象：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)下载本示例的模板文件。

## 在数据库中存储、读取和删除文档

本节介绍如何将文档保存在数据库中，然后将其加载回 `Document` 对象中以进行使用。为简单起见，文件名是用于从数据库存储和获取文档的键。该数据库包含两列。第一列"FileName"存储为字符串，用于标识文档。第二列"FileContent"存储为`BLOB`对象，该对象以字节形式存储文档对象。

以下代码示例展示了如何建立与数据库的连接并执行命令：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

在此示例中，我们使用 Microsoft Access .mdb 数据库来存储 Aspose.Words 文档。

{{% /alert %}}

以下代码示例演示如何将文档保存到数据库，然后再次读取同一文档，最后从数据库中删除包含该文档的记录：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### 将文档保存到数据库

要将文档保存在数据库中，请将此文档转换为字节数组，如本文开头所述。然后，将此字节数组保存到数据库字段中。

以下代码示例展示了如何将文档保存到指定数据库：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

指定 commandString，它是完成所有工作的 SQL 表达式：

- 要将文档保存到数据库中，请使用"INSERT INTO"命令并指定一个表以及两个记录字段（文件名和文件内容）的值。为了避免额外的参数，文件名取自 **Document** 对象本身。 `FileContent` 字段值是从内存流中分配的字节，其中包含所存储文档的二进制表示形式。
- 剩余的代码行执行将 Aspose.Words 文档存储在数据库中的命令。

### 从数据库检索文档

要从数据库检索文档，请选择包含字节数组形式的文档数据的记录。然后将记录中的字节数组加载到 **MemoryStream** 中，并创建一个将从 **MemoryStream** 加载文档的 **Document** 对象。

以下代码示例演示如何使用文件名作为获取该文档的键从指定数据库检索并返回文档：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

SQL 命令"SELECT * FROM"用于根据文件名获取适当的记录。

{{% /alert %}}

### 从数据库中删除文档

要从数据库中删除文档，请使用适当的 SQL 命令，而不对 **Document** 对象进行任何操作。

以下代码示例演示如何使用文件名获取记录来从数据库中删除文档：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
