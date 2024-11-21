---
title: 限制文档 编辑于 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 限制文档编辑
linktitle: 限制文档编辑
description: "通过设置限制类型限制文档的编辑。 您也可以使用 Java。 。 。 。"
type: docs
weight: 30
url: /zh/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

有时,您可能需要限制编辑文档的能力,并只允许与其进行某些行动。 这有助于防止其他人在您的文件中编辑敏感和机密的信息。

Aspose.Words 允许您通过设置限制类型来限制文档的编辑。 临Τ Aspose.Words 还允许您指定文档的写保护设置。

这篇文章解释了如何使用 Aspose.Words 选择限制类型,如何添加或删除保护,以及如何使不受限制的可编辑区域。

## 选择编辑限制类型

Aspose.Words 允许您控制您使用 [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) 计数参数。 这将使您能够选择如下一类保护:

* 仅允许评论
* 只允许格式字段
* 仅允许修改
* 仅读
* 无保护

所有类型都是密码加密的,如果不正确输入此密码,用户将无法合法更改文档内容. 因此,如果将您的文档退回给您而不需要提供必要的密码,这表示您有问题。

如果您在选择安全类型时没有设置密码,其他用户可以简单地忽略文档的保护.

{{% alert color="primary" %}}

请注意,正在设置的密码只是文档中的一个属性,如果文档属性被访问,可以移除. 因此,这种密码不能保证文件的安全。 那个 [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) 方法就说明了这一点。

{{% /alert %}}

## 添加文档保护

在文档中添加保护是一个简单的过程,因为您只需要使用本节详述的保护方法之一.

Aspose.Words 允许您使用 [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) 方法。 此方法不是一个安全特性,也不加密文档.

{{% alert color="primary" %}}

内 Microsoft Word, 您可以以类似方式限制编辑:

* 限制编辑(文件_信息_保护文件)
* 备选功能--"限制编辑"(审查--保护--限制编辑)

{{% /alert %}}

以下代码示例显示如何在文档中添加密码保护:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

以下代码示例显示如何限制文档中的编辑,因此只能进行窗体字段的编辑:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## 删除文档保护

Aspose.Words 允许您通过简单和直接的文档修改从文档中删除保护。 您可以在不知道实际密码的情况下删除文档保护,也可以提供正确的密码,通过使用 [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) 方法。 两种清除方式没有区别。

以下代码示例显示如何从文档中移除保护:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## 指定不受限制的可编辑区域

您可以限制文档的编辑, 同时允许修改其中的某些部分 。 所以,任何打开您的文件的人都可以访问这些不受限制的部分,并对内容进行修改.

Aspose.Words 允许您使用 [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) 和 [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) 方法。 方法。 。

以下代码示例显示如何将整个文档标为只读并指定其中的可编辑区域:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

也可以为不同的部分选择不同的文档编辑限制.

以下代码示例显示如何对整个文档添加限制,然后删除其中一节的限制:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
