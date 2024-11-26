---
title: 在Java中限制文档编辑
second_title: Aspose.Words为Java
articleTitle: 限制文档编辑
linktitle: 限制文档编辑
description: "通过设置限制类型来限制编辑文档。 您还可以使用Java删除保护并创建不受限制的可编辑区域。"
type: docs
weight: 30
url: /zh/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

有时您可能需要限制编辑文档的能力，并且只允许对其进行某些操作。 这对于防止其他人编辑文档中的敏感和机密信息非常有用。

Aspose.Words允许您通过设置限制类型来限制编辑文档。 此外，Aspose.Words还允许您为文档指定写保护设置。

本文介绍如何使用Aspose.Words选择限制类型，如何添加或删除保护，以及如何使不受限制的可编辑区域。

## 选择编辑限制类型

Aspose.Words允许您使用[ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/)枚举参数控制限制内容的方式。 这将使您能够选择一个确切的保护类型，如以下:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

所有类型都有密码保护，如果此密码输入不正确，用户将无法合法更改文档的内容。 因此，如果您的文档返回给您，而无需提供必要的密码，这是一个迹象，表明出了问题。

如果您在选择安全类型时没有设置密码，其他用户可以简单地忽略对文档的保护。

{{% alert color="primary" %}}

请注意，正在设置的密码只是文档中的一个属性，如果访问了文档属性，则可以删除该属性。 因此，这样的密码并不能保证文档的安全性。 [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect)方法显示了这一点。

{{% /alert %}}

## 添加文档保护

为文档添加保护是一个简单的过程，因为您需要做的就是应用本节中详细介绍的保护方法之一。

Aspose.Words允许您使用[Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int)方法保护文档免受更改。 此方法不是安全功能，也不会加密文档。

{{% alert color="primary" %}}

在Microsoft Word中，您可以使用两者以类似的方式限制编辑:

* 限制编辑（文件→信息→保护文档）
* 替代功能-"限制编辑"（审查→保护→限制编辑）

{{% /alert %}}

下面的代码示例演示如何为文档添加密码保护:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

下面的代码示例演示如何限制文档中的编辑，以便只能在表单字段中进行编辑:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## 删除文档保护

Aspose.Words允许您通过简单直接的文档修改从文档中删除保护。 您可以在不知道实际密码的情况下删除文档保护，也可以使用[Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect)方法提供正确的密码来解锁文档。 两种去除方式都没有区别。

下面的代码示例演示如何从文档中删除保护:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## 指定不受限制的可编辑区域

您可以限制对文档的编辑，并允许对文档的选定部分进行更改。 因此，打开文档的任何人都可以访问这些不受限制的部分并对内容进行更改。

Aspose.Words允许您使用[StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange)和[EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange)方法标记文档中可以更改的部分。

下面的代码示例演示如何将整个文档标记为只读，并在其中指定可编辑区域:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

您还可以为不同的部分选择不同的文档编辑限制。

下面的代码示例演示如何为整个文档添加限制，然后删除其中一个部分的限制:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
