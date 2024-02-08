---
title: 加密 C# 中的文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 加密文档
linktitle: 加密文档
description: "使用适用于 C# 中特定文档格式的适当加密算法来加密您的文档。"
type: docs
weight: 20
url: /zh/net/encrypt-a-document/
---

加密是将可读文本转换为无意义的字节序列的过程，因此只有拥有解密密钥或密码的人才能读取它。此过程在保护您的内容方面发挥着重要作用。它有助于对内容进行编码，验证文档的来源，证明内容在发送后未被修改，并确保文档中的数据是安全的。

本文介绍了 Aspose.Words 如何允许您加密文档以及如何检查文档是否已加密。

## 使用密码加密

要加密文档，请使用 **Password** 属性提供充当加密密钥的密码。这将修改文档的内容并使其不可读。加密文档需要输入此密码才能打开。

{{% alert color="primary" %}}

您可以找到所需格式的适当 **Password** 属性。 [保存命名空间](https://reference.aspose.com/words/net/aspose.words.saving/) 中的每个文档保存格式都有一个相应的类，其中包含该格式的保存选项。例如，DOC 的 [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) 类中的 [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) 属性，或 DOCX、DOCM、DOTX、DOTM 和 FlatOpc 的 [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) 类中的 [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) 属性。

{{% /alert %}}

{{% alert color="primary" %}}

请注意，只有某些文档格式支持加密。例如，RTF 不支持加密。

{{% /alert %}}

下表列出了Aspose.Words支持的格式和加密算法：

| 格式 |  加载时支持加密 |  保存时支持加密 |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC、DOT |  XOR 加密40 位 RC4 加密CryptoAPI RC4 加密 |  RC4 加密（40 位） |
|  DOCX、DOTX、DOCM、DOTM、FlatOPC、FlatOpcTemplate、FlatOpcMacro 启用、FlatOpcTemplateMacro 启用 |  ECMA-376 标准加密ECMA-376 敏捷加密 |  ECMA-376 标准加密 (AES128 + SHA1) |
|  ODT、OTT |  ODF 加密（Blowfish/AES） |  ODF 加密（AES256 + SHA256） |
|  PDF |  -                                                            |  RC4 加密（40/128 位） |

以下代码示例显示如何使用密码加密文档：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## 检查文档是否已加密

在某些情况下，您可能有一个无法读取的文档，并且希望确保该文档已加密且未损坏或压缩。

要检测文档是否已加密以及是否需要密码，可以使用 [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) 类的 [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) 属性。此属性还允许您在加载文档之前执行某些操作，例如，通知用户提供密码。

以下代码示例展示了如何检测文档加密：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## 使用或不使用密码打开文档

当我们确保文档已加密后，我们可以尝试在没有密码的情况下打开该文档，这应该会导致异常。

以下代码示例演示如何尝试在没有密码的情况下打开加密文档：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

当我们看到加密文档没有密码就无法打开后，我们就可以尝试通过输入密码来打开它。

以下代码示例演示如何尝试使用密码打开加密文档：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
