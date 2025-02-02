---
title: 在 C# 中以只读方式打开文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 以只读方式打开文档
linktitle: 以只读方式打开文档
description: "将文档设置为只读，以便可以复制或读取内容，但不能使用 C# 进行修改。"
type: docs
weight: 10
url: /zh/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

有时，您可能有一个文档需要审阅，但您不希望审阅者随机修改您的内容。 Aspose.Words 允许您将文档的权限设置为只读，以便可以复制或阅读内容，但不能修改。这将防止内容被删除或添加到您的文档中。

{{% alert color="primary" %}}

将只读选项应用于您的文档并不会阻止某人创建该文档的新副本并使用其他名称保存它。

{{% /alert %}}

本文介绍如何将文档设为只读。

## 将文档设置为只读

Aspose.Words 具有公共类 [WriteProtection](https://reference.aspose.com/words/zh/net/aspose.words.settings/writeprotection/)，用于指定文档的写保护设置。您不直接创建此类的实例。

写保护显示作者是否建议以只读方式打开文档和/或需要密码才能修改文档。

Aspose.Words 允许您使用 [ReadOnlyRecommended](https://reference.aspose.com/words/zh/net/aspose.words.settings/writeprotection/readonlyrecommended/) 属性和 [SetPassword](https://reference.aspose.com/words/zh/net/aspose.words.settings/writeprotection/setpassword/) 方法将文档设置为只读以限制编辑。

{{% alert color="primary" %}}

在 Microsoft Word 中，您可以使用以下两者以类似的方式创建只读文档：

*"始终以只读方式打开"（文件→信息→保护文档）
*"修改密码"（另存为→工具→常规选项→密码）

{{% /alert %}}

{{% alert color="primary" %}}

用户还可以通过选择[ProtectionType](https://reference.aspose.com/words/zh/net/aspose.words/protectiontype/)作为**ReadOnly**来限制文档编辑，但这是另一个提供更高级保护功能的功能。 Microsoft Word中有这样的功能，分别在Aspose.Words中实现。

**ProtectionType** 将在以下文章之一 - "限制文档编辑"中详细描述。

{{% /alert %}}

**ReadOnlyRecommended** 属性受密码保护，因此如果您在应用 **ReadOnlyRecommended** 属性之前未设置密码，则其他用户可以简单地打开该文档，就好像它不受保护一样。您可以通过 **SetPassword** 方法访问文档保护设置并设置写保护密码。

{{% alert color="primary" %}}

请注意，所设置的密码只是文档中的一个属性，如果访问文档属性，则可以将其删除。因此，这样的密码并不能保证文档的安全。

{{% /alert %}}

如果需要检查文档是否具有限制其编辑的写保护密码，可以使用 [IsWriteProtected](https://reference.aspose.com/words/zh/net/aspose.words.settings/writeprotection/iswriteprotected/) 属性。

以下代码示例展示了如何将文档设为只读：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## 删除只读限制

如果您不希望用户以只读方式打开您的文档，您只需将 **ReadOnlyRecommened** 属性设置为 *false* 或选择 **ProtectionType** 作为 **NoProtection**。

以下代码示例演示如何删除文档的只读访问权限：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
