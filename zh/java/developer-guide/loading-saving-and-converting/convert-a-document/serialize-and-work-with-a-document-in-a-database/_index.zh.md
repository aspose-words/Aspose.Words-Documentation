---
title: 数据库中的文档序列化和工作
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 数据库中的文档序列化和工作
linktitle: 数据库中的文档序列化和工作
description: "将文档转换成字节数组,用于数据库中此文档的工作。 您可以使用 Java。 。 。 。"
type: docs
weight: 40
url: /zh/java/serialize-and-work-with-a-document-in-a-database/
---

在处理文档时可能需要完成的任务之一是存储和检索 **Document** 用于数据库的对象。 例如,如果实施任何类型的内容管理系统,就有必要这样做。 所有先前版本的文档必须存储在数据库系统中. 当您的应用程序提供网络服务时,在数据库中存储文档的能力也极为有用.

Aspose.Words 提供了将文档转换成字节数组的能力,以便随后在数据库中处理此文档。

## 将文档转换为字节矩阵

要将一个文档存储在数据库中,或准备一个文档以通过网络传输,往往需要序列化文档以获得一个字节数组.

序列化 a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 对象在 Aspose.Words编号:

一、导 言 留着给一个 **MemoryStream** 使用 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) 方法超载 **Document** 课。
一、导 言 打电话 **ToArray** 方法,它以字节形式返回代表文档的字节数组。

以上步骤可以反转,将字节装回 **Document** 对象。

{{% alert color="primary" %}}

选中的保存格式对于确保保存和重新装入 **Document** 对象。 为此,建议使用一系列OOXML文件格式.

{{% /alert %}}

下面的例子说明如何将一个 **Document** 对象以获得字节数组,然后如何将字节数组解序以获得 **Document** 再次对象:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

{{% /alert %}}

## 在数据库中存储、读取和删除文档

本节显示如何将文档保存在数据库中,然后装入 `Document` 用于工作的对象。 简而言之,文件名称是用于存储和从数据库获取文档的密钥. 数据库有两栏。 第一栏"文件名"作为字符串存储,用于识别文档。 第二栏"FileContent"作为"FleContent"储存。 `BLOB` 以字节形式存储文档对象的对象。

以下代码示例显示如何建立数据库的连接和执行命令:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

在这个例子中,我们使用 MySQL 数据库存储一个 Aspose.Words 文档。

{{% /alert %}}

以下代码示例显示如何将文档保存到数据库,然后再次读取同一文档,最后从数据库中删除包含文档的记录:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### 将文档保存到数据库

要将文档保存在数据库中,请将文档转换成文章开头描述的字节数组。 然后,将这个字节数组保存到数据库字段中。

以下代码示例显示如何将文档保存到指定的数据库:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

指定命令String, 它是一个执行全部工作的 SQL 表达式:

- 怎么样? 要将文档保存到数据库中,使用" INSERT OTO" 命令,并指定一个表格,连同两个记录字段的值-- 文件Name 和 FileContent 。 为了避免附加参数,文件名称取自 **Document** 对象本身。 那个 `FileContent` 字段值是从内存流中分配的字节,其中包含存储文档的二进制表示。
- 怎么样? 剩余代码行执行存储命令 Aspose.Words 文档。

### 从数据库获取文档

要从数据库中获取文档,请选择包含文档数据的记录作为字节数组. 然后从记录中装入字节数组 **MemoryStream** 创建 **Document** 将文档从 **MemoryStream**。 。 。 。

以下代码示例显示如何用文件名作为获取文档的密钥从指定的数据库中检索并返回文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

SQL 命令" SELECT * from" 用于根据文件名称获取适当的记录。

{{% /alert %}}

### 从数据库中删除文档

要从数据库中删除文档,请使用适当的 SQL 命令,而无需操作 **Document** 对象。

以下代码示例显示如何从数据库中删除文档,使用文件名获取记录:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
