---
title: 打开文档只读于 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 只打开文档
linktitle: 只打开文档
description: "使文档只读,以便内容可以复制或读取,但不使用 Java。 。 。 。"
type: docs
weight: 10
url: /zh/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

有时,你可能有一个需要审查的文件,但你不希望审查者随机修改你的内容. Aspose.Words 允许您只允许读取文档,以便内容可以复制或读取,但不能修改。 这将防止内容被删除或添加到您的文档中.

{{% alert color="primary" %}}

在文档中应用只读选项并不妨碍某人创建新副本,并用另一个名称保存.

{{% /alert %}}

本文解释如何只读文档.

## 仅编写文档

Aspose.Words 有公共课 [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) 指定文档的写保护设置。 您不直接创建此类的实例 。

书写保护显示作者是否建议打开一个文档作为只读和/或需要密码来修改文档.

Aspose.Words 允许您通过使用 [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) 财产和财产 [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) 方法。

{{% alert color="primary" %}}

内 Microsoft Word, 您可以使用两种方式以类似方式创建"只读"文档:

* "只开放阅读"(文件_信息_保护文件)
*"要修改的密码"(保存为 → 工具 → 一般选项 → 密码)

{{% /alert %}}

{{% alert color="primary" %}}

用户还可以通过选择限制文档编辑 [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) 作为 **ReadOnly**, 但这是提供更高级保护能力的另一个特征。 在 Microsoft Word, 它分别载于 Aspose.Words。 。 。 。

**ProtectionType** 将在下列条款中详细叙述:"限制文件编辑"。

{{% /alert %}}

那个 **ReadOnlyRecommended** 属性是密码安全的,所以如果在应用前未设置密码 **ReadOnlyRecommended** 属性,然后其他用户可以简单地打开文档,好像它没有保护。 您访问文档保护设置,并通过 **SetPassword** 方法。

{{% alert color="primary" %}}

请注意,正在设置的密码只是文档中的一个属性,如果文档属性被访问,可以移除. 因此,这种密码不能保证文件的安全。

{{% /alert %}}

如果您需要检查文档是否有限制其编辑的写保护密码,您可以使用 [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) 属性。

以下代码示例显示如何只读文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## 删除只读限制

如果您不想让用户只读打开文档, 您可以简单地设置 **ReadOnlyRecommened** 属性改为 *false* 或选择 **ProtectionType** 作为 **NoProtection**。 。 。 。

以下代码示例显示如何删除文档的只读访问:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
