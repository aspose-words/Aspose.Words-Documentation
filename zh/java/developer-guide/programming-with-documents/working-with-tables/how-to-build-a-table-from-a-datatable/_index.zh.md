---
title: 如何从一个表格构建一个表格 `DataTable` 输入 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 从 a 创建表格 `DataTable`
linktitle: 从 a 创建表格 `DataTable`
description: "使用外部数据库填入文档表格的示例 Java。 。 。 。"
type: docs
weight: 130
url: /zh/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

您的应用程序通常会从数据库中提取数据,并以格式存储 **DataTable**。 。 。 您不妨轻松地将这些数据作为新表格插入您的文档,并迅速对整个表格应用格式。

{{% alert color="primary" %}}

注意插入数据的优先方式 **DataTable** 输入文档表格 [Mail Merge 区域](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained)。 。 。 只有在您无法事先创建合适的模板,以便与数据合并的情况下,即如果您要求程序上的一切实现的话,才建议采用本条提出的技术。

{{% /alert %}}

使用 Aspose.Words, 您可以轻松地从数据库中获取数据并将其存储为表格:

一、导 言 创建新 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 对象 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)。 。 。 。
一、导 言 使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)。 。 。 。
一、导 言 如果我们想插入我们 **DataTable** 作为标题行,然后在表格中将列名填入一行。
一、导 言 横跨每个区域 **DataRow** 输入 **DataTable**编号:
   1. 横穿 **DataRow**。 。 。 。
   1. 在文档中插入对象,使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)。 。 。 所用方法取决于插入对象的类型, 例如 [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()用于文本和 [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])用于表示图像的字节数组。
   1. 在数据行处理结束时,该行也结束由 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) 通过使用 [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)。 。 。 。
一、导 言 一旦从所有行 **DataTable** 已处理通过呼叫完成表格 [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)。 。 。 。
一、导 言 最后,我们可以使用一个合适的表格属性,例如: [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) 以自动将格式应用到整个表格。
   我们的数据如下: **DataTable** 用于此示例:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

以下代码示例显示如何在 Aspose.Words编号:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

这种方法可以很容易地使用 **DocumentBuilder** 和数据。

以下代码示例显示如何从 a 导入数据 `DataTable` 并将其插入文件的新表格:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

以下图片中显示的表格通过运行上述代码生成.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
