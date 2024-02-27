---
title: 使用 C# 中的数字签名
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用数字签名
linktitle: 使用数字签名
description: "使用 C# 对文档进行数字签名并检测、计数、验证和删除现有的数字签名。"
type: docs
weight: 40
url: /zh/net/working-with-digital-signatures/
---

数字签名是电子签名的一种技术实现，用于签署文档并验证签名者的身份，以保证文档自签名以来未被修改。每个数字签名对于每个签名者来说都是唯一的，因为遵循 PKI 协议来生成公钥和私钥。对文档进行数字签名意味着使用签名者的私钥创建签名，其中使用数学算法对生成的散列进行加密。

Aspose.Words 允许您检测、计数或验证现有的数字签名，还可以向文档添加新签名以找出其中的任何篡改。您还可以从文档中删除所有数字签名。使用 [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) 类来处理数字签名。

本文解释了如何执行上述所有操作来验证数字文档的真实性和完整性。

{{% alert color="primary" %}}

请注意，只有在运行 .NET Framework 2.0 及更高版本时才能访问文档的数字签名。

{{% /alert %}}

{{% alert color="primary" %}}

**在线尝试**

您可以使用我们的 [免费在线签名](https://products.aspose.app/words/signature) 尝试此功能。

{{% /alert %}}

## 支持的格式

Aspose.Words 允许您在 DOC、OOXML 和 ODT 文档上使用数字签名，并以 PDF 或 XPS 格式对生成的文档进行签名。

## 数字签名的局限性

下表描述了您在通过 Aspose.Words 使用数字签名时可能面临的一些限制以及一些替代选项。

|  局限性 |  替代方案 |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  加载和保存文档后数字签名丢失。因此，将文档处理到服务器可能会导致所有数字签名丢失，恕不另行通知。 |  检查文档是否具有数字签名，如果发现则采取适当的措施。例如，向客户发送警报，告知他们正在上传的文档包含数字签名，如果对其进行处理，这些数字签名将会丢失。 |
|  Aspose.Words 支持在文档中使用宏。但 Aspose.Words 尚不支持宏的数字签名。 |  将文档导出回任何 Word 格式，并使用 Microsoft Word 向宏添加数字签名。 |

## 检测、计数和验证数字签名

Aspose.Words 允许您使用 [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) 方法和 [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) 属性检测文档中的数字签名。值得注意的是，这样的检查只会检测签名的事实，而不会检测其有效性。

一个文档可以多次签名，并且可以由不同的用户来完成。要检查数字签名的有效性，您需要使用 [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) 方法从文档中加载它们并使用 [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) 属性。 Aspose.Words 还允许您使用 [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) 属性对文档中的所有数字签名进行计数。

所有这些都提供了一种在处理文档之前检查文档签名的高效且安全的方法。

以下代码示例展示了如何检测数字签名的存在并验证它们：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## 创建数字签名 {#create-a-digital-signature}

要创建数字签名，您需要加载确认身份的签名证书。当您发送数字签名文档时，您还发送了您的证书和公钥。

Aspose.Words 允许您创建 X.509 证书，这是一种使用国际公认的 X.509 PKI 标准的数字证书，用于验证公钥是否属于证书中包含的签名者。为此，请使用 [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) 类中的 [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) 方法。

接下来的部分将介绍如何添加数字签名、签名行以及如何对生成的 PDF 文档进行签名。

### 签署文件

Aspose.Words 允许您使用 [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) 方法和 [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) 属性对 DOC、DOCX、XPS 或 ODT 文档进行数字签名。

以下代码示例演示如何使用证书持有者和签名选项来签署文档：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### 添加签名行

签名行是文档中数字签名的视觉表示。 Aspose.Words 允许您使用 [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) 方法插入签名行。您还可以使用 [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) 类设置此表示的参数。

例如，下图显示了如何显示有效和无效签名。

<img src="/words/net/working-with-digital-signatures/valid.png" alt="绘画" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="绘画" style="width:300px"/>

此外，如果文档包含签名行但没有数字签名，则有一项功能会要求用户添加签名。

以下代码示例演示如何使用个人证书和特定签名行对文档进行签名：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### 签署生成的 PDF 文档 {#sign-a-generated-pdf-document}

Aspose.Words 允许您使用 [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) 属性签署并获取 PDF 文档的所有详细信息。

以下代码示例展示了如何对生成的 PDF 进行签名：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## 检索数字签名值

Aspose.Words 还提供了使用 [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) 属性从数字签名文档中以字节数组形式检索数字签名值的功能。

以下代码示例演示如何从文档中获取字节数组形式的数字签名值：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## 删除数字签名

Aspose.Words 允许您使用 [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) 方法从已签名文档中删除所有数字签名。

以下代码示例演示如何从文档加载和删除数字签名：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

请注意，您不能仅删除文档中的一个数字签名。

{{% /alert %}}
