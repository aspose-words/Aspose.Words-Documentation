---
title: 嵌套式 Mail Merge 与地区 C++
second_title: Aspose.Words 为 C++
articleTitle: 嵌套式 Mail Merge 与地区
linktitle: 嵌套式 Mail Merge 与地区
type: docs
description: "执行一个 mail merge 使用嵌套区域操作 C++. 嵌套合并是一种功能，使您能够将来自数据源的分层数据合并到合并模板中。"
keywords: "mail merge with nested regions c++"
weight: 30
url: /zh/cpp/nested-mail-merge-with-regions/
---

在某些情况下，您可能需要使用嵌套 mail merge 与地区。 嵌套合并是一项功能，允许您将来自数据源的分层数据合并到合并模板中，以便轻松填充文档。 基本上，分层数据表示为一组数据项，分层关系描述了数据项如何相互关联（一个数据项是另一个数据项的父项）。

Aspose.Words 使您能够执行 mail merge 与嵌套区域的操作。 如果您有一个组织成树状结构的数据源，并且您希望执行一个 mail merge 用分层数据填充模板的操作。

{{% alert color="primary" %}}

嵌套式 mail merge 只有在执行 mail merge 与地区。

{{% /alert %}}

## 什么是嵌套 Mail Merge

该 mail merge 如果您有两个或更多区域，则称为嵌套区域 mail merge 其中一个区域以分层形式位于另一个区域内。 请注意，每个区域包含来自一个表的数据。

嵌套的最常见的例子 mail merge 是一个包含几个项目的订单，您需要链接许多数据表并在模板中显示信息。

下图显示了两个嵌套区域，其中 *Order* mail merge 区域是 *Item* mail merge 地区。

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## 如何处理 Mail Merge 具有嵌套区域

要合并到模板中的数据可以来自各种来源，主要是关系数据库或 XML 文件。 在我们的例子中，我们将使用 [SQLite](https://www.sqlite.org/index.html) 数据库来存储我们的数据，并用自定义数据源实现加载它。

下图演示了如何从 *Order* 传递给嵌套合并区域的表将链接到 *Item* 表，以及在合并操作期间产生的输出。

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

正如您从输出文档中看到的，每个订单都来自 **Order** 表被插入到合并模板与所有订单的相关项目从 **Item** 表。 下一个订单将与他们的项目一起插入，直到列出所有订单和项目。 嵌套的顺序 mail merge 模板中的区域必须与数据源中的表之间的数据关系相匹配。

## 如何从自定义数据源创建数据关系

实施 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 接口以在自定义数据源的父子结构中创建关系。 使用 [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) 返回当前父记录的相关子数据的方法。

下面的代码示例演示如何使用嵌套生成发票 mail merge 与来自 [SQLite](https://www.sqlite.org/index.html) 数据库与 [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}