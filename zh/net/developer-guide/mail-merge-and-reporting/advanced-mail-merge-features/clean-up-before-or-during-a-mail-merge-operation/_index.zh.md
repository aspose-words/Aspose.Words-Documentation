---
title: 在Mail Merge之前或期间清理
second_title: Aspose.Words为.NET
articleTitle: 在Mail Merge操作之前或期间进行清理
linktitle: 在Mail Merge操作之前或期间进行清理
type: docs
description: "应用不同的清理和删除选项，例如在执行Mail Merge操作之前删除合并字段或使用C#在Mail Merge操作期间删除未使用的区域。"
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /zh/net/clean-up-before-or-during-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words允许您应用不同的清理和删除选项，例如在执行Mail Merge操作之前删除合并字段或在Mail Merge操作期间删除未使用的区域。 本节将介绍如何删除合并的字段以及如何设置删除选项。

## 删除合并字段

当您使用其他人创建的某个长模板时，您可能希望在执行Mail Merge操作之前删除该模板中已存在的所有合并字段。 如果要在不执行Mail Merge操作的情况下从文档中删除所有合并字段，则可以使用[DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/)方法。 此方法不受[CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/)属性的任何删除选项的影响，执行它只会删除合并的字段，而不会删除任何包含字段或空段落。

下面的代码示例演示如何在不执行Mail Merge操作的情况下从模板中删除所有合并字段:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## 设置`Removing`选项

Aspose.Words使您能够使用删除选项在Mail Merge操作期间从模板中删除未合并的字段、区域和段落。

使用**CleanupOptions**属性和[MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/)枚举来设置删除选项。 通过选择以下选项指定要删除的项目（可以合并多个）:

* 删除空段落
* 删除未使用的区域
* 删除未使用的字段
* 删除包含字段
* 删除静态字段
* 删除空表行

在以下条件之一中，您可以将合并字段视为未合并字段:

1. 如果数据源中的合并字段没有列或映射字段。
2. 如果数据源中的合并字段包含映射字段，但数据为null。

{{% alert color="primary" %}}

如果您使用单独的数据源合并数据，那么只有在最后一次调用Mail Mergeexecute方法时才会启用这些删除选项。

{{% /alert %}}

### 删除空段落

当Mail Merge进程将其所有合并字段删除为未合并时，仅包含合并字段的段落将为空。 这些空段落可以添加不需要的空间并更改生成的报告的外观。 在Mail Merge操作期间，您可能会面临两种段落的情况:

1. Mail Merge字段将与空数据合并。
2. 合并字段未使用，将被删除。

在这两种情况下，**RemoveEmptyParagraphs**选项都会自动从文档中删除空段落。 此外，如果段落的其余部分为空，它将删除`TableStart`和TableEnd合并字段。

下面的代码示例演示如何删除空段落:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### 删除未使用的区域

在Aspose.Words的早期版本中，在Mail Merge操作期间会自动从文档中删除空的Mail Merge区域。 使用最新版本的Aspose。单词，默认情况下在Mail Merge操作之后保留空Mail Merge区域。 但是，您可以使用**RemoveUnusedRegions**选项在Mail Merge操作期间删除未使用的Mail Merge区域。 例如，您可以将文档与空数据源合并，其中不包含导致文档中未使用区域的数据表。

下面的代码示例演示如何删除未使用的合并区域:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**注**

### 删除未使用的字段

Aspose.Words允许您通过将**RemoveUnusedFields**标志分配给**CleanupOptions**来删除任何未使用的Mail Merge字段。 此选项将删除数据源中没有相应数据的合并字段。

下面的代码示例演示如何在Mail Merge操作期间自动从文档中删除任何未使用的合并字段:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### 删除包含字段

合并字段可以包含在另一个字段中，例如**IF**字段或公式字段。 合并字段或从文档中删除合并字段时删除此外部字段。

下面的代码示例演示如何从文档中删除包含合并字段的字段:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**注**

### 删除空表行

Aspose.Words允许您通过将**RemoveEmptyTableRows**标志分配给**CleanupOptions**来删除空表行。 此选项将删除包含空合并字段的表行。

下面的代码示例演示如何从文档中删除包含Mail Merge区域的空表行:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
