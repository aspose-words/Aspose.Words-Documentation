---
title: 如何从 C# 中的 DataTable 构建表
second_title: .NET 格式的 Aspose.Words
articleTitle: 从 DataTable 构建表
linktitle: 从 DataTable 构建表
description: "使用 C# 从外部数据库填充文档表的示例。"
type: docs
weight: 120
url: /zh/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

通常，您的应用程序将从数据库中提取数据并将其以 **DataTable** 的形式存储。您可以轻松地将此数据作为新表格插入到文档中，并快速将格式应用于整个表格。

{{% alert color="primary" %}}

请注意，将 **DataTable** 中的数据插入到文档表中的首选方法是使用 [Mail Merge 与区域](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions)。仅当您无法事先创建合适的模板来合并数据时，换句话说，如果您需要一切以编程方式进行时，才建议使用本文中介绍的技术。

{{% /alert %}}

使用 Aspose.Words，您可以轻松地从数据库中检索数据并将其存储为表：

1. 在 **Document** 上创建一个新的 **DocumentBuilder** 对象。
1. 使用 **DocumentBuilder** 启动一个新表。
1. 如果我们想插入 **DataTable** 中每一列的名称作为标题行，则迭代每个数据列并将列名称写入表中的一行。
1. 迭代 **DataTable** 中的每个 **DataRow**：
   1. 迭代 **DataRow** 中的每个对象。
   1. 使用 **DocumentBuilder** 将对象插入到文档中。使用的方法取决于要插入的对象的类型，例如用于文本的 **DocumentBuilder.Writeln** 和用于表示图像的字节数组的 **DocumentBuilder.InsertImage**。
   1. 在 **DataRow** 处理结束时，**DocumentBuilder** 使用 **DocumentBuilder.EndRow** 创建的行也结束。
1. 处理完 **DataTable** 中的所有行后，通过调用 **DocumentBuilder.EndTable** 完成该表。
1. 最后，我们可以使用适当的表格属性之一（例如 **Table.StyleIdentifier**）设置所需的表格样式，以自动将格式应用于整个表格。

**ImportTableFromDataTable** 方法接受 **DocumentBuilder** 对象、包含数据的 **DataTable** 以及指定 **DataTable** 中的列标题是否包含在表顶部的标志。此方法使用构建器的当前位置和格式根据这些参数构建表格。提供一种从 `DataTable` 导入数据并使用 DocumentBuilder 将其插入新表的方法。

本示例使用了 **DataTable** 中的以下数据：

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

以下代码示例展示了如何在 Aspose.Words 中执行上述算法：

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

然后可以使用 **DocumentBuilder** 和数据轻松调用该方法。

以下代码示例演示如何从 `DataTable` 导入数据并将其插入到文档中的新表中：

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
