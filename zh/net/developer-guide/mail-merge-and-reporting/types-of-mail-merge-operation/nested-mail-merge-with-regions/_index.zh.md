---
title: 嵌套Mail Merge与C#中的区域
second_title: Aspose.Words为.NET
articleTitle: 带有区域的嵌套Mail Merge
linktitle: 带有区域的嵌套Mail Merge
type: docs
description: "使用C#对嵌套区域执行Mail Merge操作。 嵌套合并是一种功能，使您能够将来自数据源的分层数据合并到合并模板中。"
keywords: "mail merge with nested regions c#"
weight: 10
url: /zh/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

在某些情况下，您可能需要使用带有区域的嵌套Mail Merge。 嵌套合并是一种功能，使您能够将来自数据源的分层数据合并到合并模板中，以便轻松填充文档。 基本上，分层数据表示为一组数据项，分层关系描述了数据项如何相互关联（一个数据项是另一个数据项的父项）。

Aspose.Words允许您使用嵌套区域执行Mail Merge操作。 如果您有一个组织成树状结构的数据源，并且您希望执行Mail Merge操作以使用分层数据填充模板，则可以使用此功能。

{{% alert color="primary" %}}

嵌套Mail Merge仅在执行带有区域的Mail Merge时才相关。

{{% /alert %}}

## 什么是嵌套Mail Merge

如果您有两个或多个Mail Merge区域，其中一个区域以分层形式位于另一个区域内，则称为嵌套Mail Merge区域。 请注意，每个区域包含来自一个表的数据。

嵌套Mail Merge的最常见示例是包含多个项目的订单，您需要链接多个数据表并在模板中显示信息。

下图显示了两个嵌套区域，其中*Order*Mail Merge区域是*Item*Mail Merge区域的父区域。

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## 如何使用嵌套区域处理Mail Merge

要合并到模板中的数据可以来自各种来源，主要是关系数据库或XML文档。 在我们的例子中，我们将使用XML文件来存储我们的数据，并将其直接加载到**DataSet**中。

Aspose.Words允许您使用**DataSet**中指定的数据关系处理带有嵌套区域的Mail Merge。 当**DataSet**对象加载XML时，它要么使用提供的架构，要么从XML本身的结构中推断它来完成此操作。 在此结构中，它在必要时创建表之间的关系。

下图显示了传递给嵌套合并区域的*Order*表中的数据将如何链接到*Item*表，以及在合并操作期间生成的输出。

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

从输出文档中可以看到，**Order**表中的每个订单都插入到合并模板中，其中包含**Item**表中的所有订单相关项。 下一个订单将与他们的项目一起插入，直到列出所有订单和项目。 模板中带有区域的嵌套Mail Merge的顺序必须与数据源中表之间的数据关系相匹配。

下面的代码示例演示如何使用带有区域的嵌套Mail Merge生成发票:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

您可以从以下位置手动检查设置数据关系的实现 [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## 如何在带有区域的嵌套Mail Merge中设置数据关系

您需要在父子结构中设置所有数据关系才能正确执行带有区域的嵌套Mail Merge。 跳过这一重要步骤可能导致执行带有区域的嵌套Mail Merge失败。

使用**ReadXml**方法从XML文件中检索嵌套Mail Merge的数据时，会根据XML文档的结构自动创建关系。 但是，您需要确保已创建正确的关系。

如果Mail Merge没有按预期工作，那么您可能需要重组XML文件或在DataSet中显式创建DataTable对象之间的关系。

具有相关数据表的`DataSet`将使用**DataRelation**对象来表示表之间的父子关系。

下面的代码示例演示如何使用`DataRelation`对象在客户表和订单表之间建立`DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## 如何从自定义数据源创建数据关系

实现[IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/)接口以在自定义数据源的父子结构中创建关系。 使用[GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/)方法返回当前父记录的相关子数据。

下面的示例演示如何使用**GetChildDataSource**创建数据关系:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
