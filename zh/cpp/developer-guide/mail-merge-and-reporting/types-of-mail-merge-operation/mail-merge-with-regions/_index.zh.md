---
title: Mail Merge 与地区 C++
second_title: Aspose.Words 为 C++
articleTitle: Mail Merge 与地区
linktitle: Mail Merge 与地区
type: docs
description: "在模板中创建不同的区域，以便具有可以简单地填充数据的特殊区域。 使用 mail merge 如果要插入表，则使用区域，具有重复数据的行以使文档动态增长。"
keywords: "how to execute mail merge c++"
weight: 20
url: /zh/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

您可以在模板中创建不同的区域，以便具有可以简单地填充数据的特殊区域。 使用 mail merge 使用区域如果要插入表，则可以通过在模板中指定这些区域来插入具有重复数据的行，以使文档动态增长。

您可以创建嵌套（子）区域以及合并区域。 使用这种类型的主要优点是动态增加文档中的部分。 在下一篇文章"嵌套"中查看更多细节 Mail Merge 与地区"。

{{% alert color="primary" %}}

有关a的资料 mail merge 区域可使用 [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) 类。

{{% /alert %}}

## 如何执行 Mail Merge 与地区

A mail merge 区域是文档中具有起点和终点的特定部分。 两个点都表示为 mail merge 具有特定名称的字段 *"TableStart:XXX"* 和 *"TableEnd:XXX"*. 包含在a中的所有内容 mail merge 区域将自动为数据源中的每条记录重复。

Aspose.Words 允许您执行 mail merge 使用其中一个区域 [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) 接受的方法 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 自定义数据源。

下面的代码示例演示如何执行 mail merge 与来自sqlite数据库的区域 [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

您可以在执行之前注意到文档之间的差异 mail merge 与地区:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

执行后 mail merge 与地区:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## 的限制 Mail Merge 与地区

在执行一个 mail merge 与地区:

* 起点 *TableStart:Orders* 和终点 *TableEnd:Orders* 两者都需要在同一行或单元格中。 例如，如果在表的单元格中开始合并区域，则必须在与第一个单元格相同的行中结束合并区域。
  合并字段名称必须与您的 DataTable. 除非指定映射字段, mail merge 对于具有列名以外的名称的任何合并字段，使用区域都不会成功。
* Aspose.Words 为 C++ 仅支持 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 和 [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) 基于数据源。 不像 .NET 和 Java, C++ 没有普遍接受的跨平台 API 用于处理数据库（如 ADODB, ODBC，或 JDBC). 为了使用特定的数据源，您必须实现 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 或 [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) 界面。

如果这些规则之一被破坏，您将得到意外的结果，或者可能引发异常。

{{% alert color="primary" %}}

如果不使用 mail merge 区域，那么它将类似于 Microsoft Word mail merge，并且将针对数据源中的每条记录重复整个文档内容。

{{% /alert %}}

