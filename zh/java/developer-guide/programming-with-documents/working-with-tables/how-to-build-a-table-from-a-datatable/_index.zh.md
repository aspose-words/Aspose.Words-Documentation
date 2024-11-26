---
title: 如何从Java中的DataTable构建表
second_title: Aspose.Words为Java
articleTitle: 从DataTable构建表
linktitle: 从DataTable构建表
description: "使用Java从外部数据库填充文档表的示例。"
type: docs
weight: 130
url: /zh/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

通常，您的应用程序将从数据库中提取数据并以**DataTable**的形式存储。 您可能希望轻松地将此数据作为新表插入到文档中，并快速将格式应用于整个表。

{{% alert color="primary" %}}

请注意，将**DataTable**中的数据插入文档表的首选方法是使用 [Mail Merge与区域](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). 本文中介绍的技术仅在您无法事先创建合适的模板来合并数据时才会建议使用，换句话说，如果您需要以编程方式执行所有操作。

{{% /alert %}}

使用Aspose.Words，您可以轻松地从数据库中检索数据并将其存储为表:

1. 在[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)上创建一个新的[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)对象。
1. 使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)启动一个新表。
1. 如果我们想将**DataTable**中的每个列的名称作为标题行插入，那么遍历每个数据列并将列名写入表中的一行。
1. 遍历**DataTable**中的每个**DataRow**:
   1. 遍历**DataRow**中的每个对象。
   1. 使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)将对象插入到文档中。 使用的方法取决于插入的对象的类型，例如[DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()）用于文本，[DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])）用于表示图像的字节数组。
   1. 在数据行的处理结束时，也通过使用[DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)结束由[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder)创建的行。
1. 处理完**DataTable**中的所有行后，通过调用[DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)完成表。
1. 最后，我们可以使用适当的表属性之一（如[Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier)）设置所需的表样式，以自动将格式应用于整个表。
   在这个例子中使用了**DataTable**中的以下数据:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

下面的代码示例演示如何在Aspose.Words中执行上述算法:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

然后可以使用**DocumentBuilder**和数据轻松调用该方法。

下面的代码示例演示如何从`DataTable`导入数据并将其插入到文档中的新表中:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

下图所示的表格是通过运行上述代码生成的。

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
