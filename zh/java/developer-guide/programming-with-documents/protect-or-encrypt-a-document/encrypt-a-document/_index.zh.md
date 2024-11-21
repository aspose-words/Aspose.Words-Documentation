---
title: 加密文档 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 加密文档
linktitle: 加密文档
description: "对文档格式进行加密 Java。 。 。 。"
type: docs
weight: 20
url: /zh/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

加密是将可读文本翻译为无意义的字节序列的过程,因此只能由拥有解密密钥或密码的人阅读. 这一过程在确保您的内容方面发挥重要作用。 它有助于编码内容,验证文档的来源,证明内容在发送后没有被修改,并确保文档中的数据是安全的.

这篇文章解释了 Aspose.Words 允许您加密文档以及如何检查文档是否有加密。

## 用密码加密

要加密文档,请使用 **Password** 属性以提供作为加密密钥的密码。 这将修改文档的内容,使其无法读取 。 加密文档需要输入此密码才能打开 。

{{% alert color="primary" %}}

你可以找到合适的 **Password** 属性。 每个文档保存格式都有一个包含此格式保存选项的相应类. 例如, [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) 属性 [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) 用于 DOC 的类,或 [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) 属性 [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) 用于DOCX、DOCM、 DOT , DOTM,还有FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

注意只有某些文档格式支持加密. 例如,RTF不支持加密.

{{% /alert %}}

下表列出由以下列表支持的格式和加密算法: Aspose.Words编号:

| 格式 |  装入时支持加密 |  保存时支持加密 |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  国防部, DOT |  XOR 加密40位 RC4 加密晶体API RC4 加密 |  RC4 加密( 40 位) |
|  国防部, DOTX, DOCM, (英语). DOTM, 平板电脑, 平板电脑, 平板电脑, 平板电脑, 平板电脑 |  ECMA-376 标准加密ECMA-376 主动加密 |  ECMA-376 标准加密(AES128 + SHA1) |
|  ODT, OTT (英语) |  ODF 加密(Blowfish/AES) |  ODF加密(AES256 + SHA256) |
|  专题报告 |  -                                                            |  RC4 加密(40/128比特) |

以下代码示例显示如何用密码加密文档:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## 检查文档是否已加密

在某些情况下,您可能有一个无法读取的文档,想要确定该文档是加密的,不会损坏或压缩.

要检测文档是否加密, 若需要密码, 您可以使用 [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) 财产和财产 [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) 课。 此属性也允许您在装入文档前执行一些动作, 例如通知用户提供密码 。

以下代码示例显示如何检测文档加密:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## 打开带有或没有密码的文档

当我们确保一个文件加密后,我们可以尝试打开这个文件而无需密码,这应该导致例外.

以下代码示例显示如何尝试打开没有密码的加密文档:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

在我们看到没有密码无法打开加密文档后,我们可以尝试通过输入密码打开.

以下代码示例显示如何尝试用密码打开加密文档:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
