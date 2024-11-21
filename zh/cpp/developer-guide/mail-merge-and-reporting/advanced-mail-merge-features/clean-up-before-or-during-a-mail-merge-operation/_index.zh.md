---
title: 清理之前或期间 Mail Merge 运作
second_title: Aspose.Words 为 C++
articleTitle: 清理之前或期间 Mail Merge 运作
linktitle: 清理之前或期间 Mail Merge 运作
type: docs
description: "应用不同的清理和删除选项，例如在执行 mail merge 在一个操作或删除未使用的区域 mail merge 操作。"
keywords: "cleanup options mail merge c#"
weight: 10
url: /zh/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 允许您应用不同的清理和删除选项，例如在执行 mail merge 在一个操作或删除未使用的区域 mail merge 操作。 本节将介绍如何删除合并的字段以及如何设置删除选项。

## 删除合并字段

当您使用其他人创建的某个长模板时，您可能希望在执行以下操作之前删除该模板中已存在的所有合并字段 mail merge 操作。 您可以使用 [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) 方法如果要从文档中删除所有合并字段而不执行 mail merge 操作。 此方法不受 [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) 属性和执行它只删除合并的字段，而不是任何包含字段或空段落。

下面的代码示例演示如何从模板中删除所有合并字段，而不执行 mail merge 运作:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## 设置一个 `Removing` 选项

Aspose.Words 使您能够在执行以下操作时从模板中删除未合并的字段、区域和段落 mail merge 使用移除选项的操作。

使用 **CleanupOptions** 物业连同 [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) 枚举来设置删除选项。 通过选择以下选项指定要删除的项目（可以合并多个）:

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

如果您使用单独的数据源合并数据，那么只有在最后一次调用 mail merge 执行方法。

{{% /alert %}}

### 删除空段落

仅包含合并字段的段落将为空，当 mail merge process将其所有合并字段删除为未合并。 这些空段落可以添加不需要的空间并更改生成的报告的外观。 你可能会面临两种情况与段落在一个 mail merge 运作:

1. 该 mail merge 字段将与空数据合并。
2. 合并字段未使用，将被删除。

在这两种情况下 **RemoveEmptyParagraphs** 选项将自动从文档中删除空段落。 此外，它会删除 `TableStart` 和 TableEnd 如果段落的其余部分为空，则合并字段。

下面的代码示例演示如何删除空段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 删除未使用的字段

Aspose.Words 允许您删除任何未使用的 mail merge 通过分配字段 **RemoveUnusedFields** 旗帜至 **CleanupOptions**. 此选项将删除数据源中没有相应数据的合并字段。

下面的代码示例演示如何在执行以下操作时自动从文档中删除任何未使用的合并字段 mail merge 运作:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### 删除包含字段

合并字段可以包含在另一个字段中，例如 **IF** 字段或公式字段。 合并字段或从文档中删除合并字段时删除此外部字段。

下面的代码示例演示如何从文档中删除包含合并字段的字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**注**

### 删除空表行

Aspose.Words 允许您通过分配 **RemoveEmptyTableRows** 旗帜至 **CleanupOptions**. 此选项将删除包含空合并字段的表行。

下面的代码示例演示如何删除包含以下内容的空表行 mail merge 文档中的区域:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
