---
title: 用C++加密文档
second_title: Aspose.Words对于C++
articleTitle: 加密文档
linktitle: 加密文档
description: "使用针对特定文档格式的适当加密算法对文档进行加密。"
type: docs
weight: 20
url: /zh/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

加密是将可读文本转换为无意义的字节序列的过程，因此只能由拥有解密密钥或秘密代码的人读取。 此过程在保护您的内容方面起着重要作用。 它有助于对内容进行编码，验证文档的来源，证明内容在发送后未被修改，并确保文档中的数据是安全的。

本文介绍了Aspose.Words如何允许您加密文档以及如何检查文档是否具有加密功能。

## 用密码加密

要加密文档，请使用**Password**属性提供用作加密密钥的密码。 这将修改文档的内容并使其不可读。 加密文档需要输入此密码才能打开。

{{% alert color="primary" %}}

您可以找到所需格式的相应**Password**属性。 [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving)中的每个文档保存格式都有一个包含此格式的保存选项的相应类。 例如，DOC的[DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/)类中的[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/)属性，或[OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/)类中的[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/)属性DOCX, DOCM, DOTX, DOTM, 和FlatOpc。

{{% /alert %}}

{{% alert color="primary" %}}

请注意，只有某些文档格式支持加密。 例如，RTF不支持加密。

{{% /alert %}}

下表列出了Aspose.Words支持的格式和加密算法:

| 格式 | 加载时支持的加密 | 保存时支持加密 |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR加密40位RC4 EncryptionCryptoAPI RC4 加密技术 | RC4加密(40位) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376标准加密ECMA-376敏捷加密 | ECMA-376标准加密(AES128+SHA1) |
| ODT, OTT | ODF加密(Blowfish/AES) | ODF加密(AES256+SHA256) |
| PDF | RC4加密(40/128位) |

下面的代码示例演示如何使用密码加密文档:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## 检查文档是否已加密

在某些情况下，您可能有一个不可读的文档，并希望确保该文档已加密且未损坏或压缩。

要检测文档是否已加密以及是否需要密码，可以使用[FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo)类的[IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/)属性。 此属性还允许您在加载文档之前执行一些操作，例如，通知用户提供密码。

下面的代码示例演示如何检测文档加密:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## 使用或不使用密码打开文档

当我们确保一个文档被加密后，我们可以尝试在没有密码的情况下打开这个文档，这应该会导致异常。

下面的代码示例演示如何尝试在没有密码的情况下打开加密文档:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

当我们看到一个加密的文档没有密码就无法打开后，我们可以尝试通过输入密码来打开它。

下面的代码示例演示如何尝试使用密码打开加密文档:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
