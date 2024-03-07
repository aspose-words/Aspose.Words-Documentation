---
title: 限制 C# 中的文档编辑
second_title: .NET 格式的 Aspose.Words
articleTitle: 限制文档编辑
linktitle: 限制文档编辑
description: "通过使用 C# 设置限制类型来限制编辑文档。您还可以删除保护并创建不受限制的可编辑区域。"
type: docs
weight: 30
url: /zh/net/restrict-document-editing/
---

有时您可能需要限制编辑文档的能力并仅允许对其执行某些操作。这对于防止其他人编辑文档中的敏感和机密信息很有用。

Aspose.Words 允许您通过设置限制类型来限制文档的编辑。此外，Aspose.Words 还允许您指定文档的写保护设置。

本文介绍如何使用 Aspose.Words 选择限制类型、如何添加或删除保护以及如何创建不受限制的可编辑区域。

## 选择编辑限制类型

Aspose.Words 允许您使用 [ProtectionType](https://reference.aspose.com/words/zh/net/aspose.words/protectiontype/) 枚举参数来控制限制内容的方式。这将使您能够选择确切的保护类型，如下所示：

* 只允许评论
* 只允许表单字段
* 只允许修改
* 只读
* 无保护

所有类型均受密码保护，如果密码输入不正确，用户将无法合法更改文档的内容。因此，如果您的文档在没有要求您提供必要密码的情况下被退回，则表明出现了问题。

如果您在选择安全类型时没有设置密码，其他用户可以简单地忽略对您文档的保护。

{{% alert color="primary" %}}

请注意，所设置的密码只是文档中的一个属性，如果访问文档属性，则可以将其删除。因此，这样的密码并不能保证文档的安全。 [Unprotect](https://reference.aspose.com/words/zh/net/aspose.words/document/unprotect/#unprotect/) 方法正好说明了这一点。

{{% /alert %}}

## 添加文档保护

向文档添加保护是一个简单的过程，因为您所需要做的就是应用本节中详细介绍的保护方法之一。

Aspose.Words 允许您使用 [Protect](https://reference.aspose.com/words/zh/net/aspose.words/document/protect/#protect/) 方法保护文档免遭更改。此方法不是安全功能，也不加密文档。

{{% alert color="primary" %}}

在 Microsoft Word 中，您可以使用以下两者以类似的方式限制编辑：

* 限制编辑（文件→信息→保护文档）
* 替代功能 – "限制编辑"（审阅 → 保护 → 限制编辑）

{{% /alert %}}

以下代码示例展示了如何向文档添加密码保护：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

以下代码示例演示如何限制文档中的编辑，以便只能在表单字段中进行编辑：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## 删除文档保护

Aspose.Words 允许您通过简单直接的文档修改来删除文档的保护。您可以在不知道实际密码的情况下取消文档保护，也可以使用 [Unprotect](https://reference.aspose.com/words/zh/net/aspose.words/document/unprotect/#unprotect/) 方法提供正确的密码来解锁文档。两种去除方式没有区别。

以下代码示例演示如何从文档中删除保护：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## 指定不受限制的可编辑区域

您可以限制对文档的编辑，同时允许对其选定部分进行更改。因此，任何打开文档的人都可以访问这些不受限制的部分并对内容进行更改。

Aspose.Words 允许您使用 [StartEditableRange](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/starteditablerange/) 和 [EndEditableRange](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) 方法标记文档中可以更改的部分。

以下代码示例演示如何将整个文档标记为只读并指定其中的可编辑区域：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

您还可以为不同的部分选择不同的文档编辑限制。

以下代码示例演示如何为整个文档添加限制，然后删除其中一个部分的限制：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
