---
title: 在C++中只读打开文档
second_title: Aspose.Words对于C++
articleTitle: 以只读方式打开文档
linktitle: 以只读方式打开文档
description: "使您的文档只读，以便内容可以复制或读取，但不能修改。"
type: docs
weight: 10
url: /zh/cpp/open-a-document-read-only/
---

有时，您可能有一个文档需要审阅，但您不希望审阅者随机修改您的内容。 Aspose.Words允许您将文档的权限设置为只读，以便可以复制或读取内容，但不能修改内容。 这将防止内容被删除或添加到您的文档中。

{{% alert color="primary" %}}

将只读选项应用于文档不会阻止某人创建它的新副本并使用其他名称保存它。

{{% /alert %}}

本文介绍如何使文档只读。

## 使文档只读

Aspose.Words具有指定文档写保护设置的公共类[WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/)。 您不直接创建此类的实例。

写保护显示作者是否建议将文档打开为只读和/或要求密码来修改文档。

Aspose.Words允许您使用[ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/)属性和[SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/)方法将文档设置为只读以限制编辑。

{{% alert color="primary" %}}

在Microsoft Word中，您可以使用两者以类似的方式创建只读文档:

* "始终打开只读"（文件→信息→保护文档）
* "修改密码"（另存为→工具→常规选项→密码）

{{% /alert %}}

{{% alert color="primary" %}}

用户还可以通过选择[ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/)作为**ReadOnly**来限制文档编辑，但这是另一个提供更高级保护功能的功能。 在Microsoft Word中有这样一个函数，分别是在Aspose.Words中实现的。

**ProtectionType**

{{% /alert %}}

**ReadOnlyRecommended**属性是密码安全的，因此如果您在应用**ReadOnlyRecommended**属性之前没有设置密码，那么其他用户可以简单地打开文档，就好像它不受保护一样。 您可以通过**SetPassword**方法访问文档保护设置并设置写保护密码。

{{% alert color="primary" %}}

请注意，正在设置的密码只是文档中的一个属性，如果访问了文档属性，则可以删除该属性。 因此，这样的密码并不能保证文档的安全性。

{{% /alert %}}

如果您需要检查文档是否具有限制其编辑的写保护密码，则可以使用[IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/)属性。

下面的代码示例演示如何使文档成为只读:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## 删除只读限制

如果您不希望用户以只读方式打开文档，您可以简单地将**ReadOnlyRecommened**属性设置为*false*或选择**ProtectionType**作为**NoProtection**。

下面的代码示例演示如何删除文档的只读访问:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
