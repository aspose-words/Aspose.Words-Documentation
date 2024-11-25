---
title: 使用C++中的数字签名
second_title: Aspose.Words对于C++
articleTitle: 使用数字签名
linktitle: 使用数字签名
description: "对文档进行数字签名，并检测、计数、验证和删除现有的数字签名。"
type: docs
weight: 160
url: /zh/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

数字签名是电子签名的技术实现，用于对文档进行签名并对签名者进行身份验证，以确保文档自签名以来未被修改。 每个数字签名对于每个签名者都是唯一的，因为遵循PKI协议来生成公钥和私钥。 对文档进行数字签名意味着使用签名者的私钥创建签名，其中使用数学算法对生成的哈希进行加密。

Aspose.Words允许您检测，计数或验证现有的数字签名，还可以向文档添加新签名以找出其中的任何篡改。 您还可以从文档中删除所有数字签名。 使用[DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/)类来处理数字签名。

本文介绍了如何执行上述所有操作来验证数字文档的真实性和完整性。

{{% alert color="primary" %}}

**在线试用**

您可以使用我们的 [免费网上签名](https://products.aspose.app/words/signature).

{{% /alert %}}

## 支持的格式

Aspose.Words允许您在DOC、OOXML和ODT文档上使用数字签名，并以PDF或XPS格式对生成的文档进行签名。

## 数字签名的限制

下表介绍了通过Aspose.Words处理数字签名时可能面临的一些限制，以及一些替代选项。

| 限制 | 备选方案 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| 在加载和保存文档后丢失数字签名。 因此，向服务器处理文档可能会导致在没有通知的情况下丢失所有数字签名。 | 检查文档是否具有数字签名，如果发现任何数字签名，请采取适当的操作。 例如，向客户端发送警报，通知他们他们正在上传的文档包含数字签名，如果处理它，这些签名将丢失。 |
| Aspose.Words支持在文档中使用宏。 但是Aspose.Words还不支持宏上的数字签名。 | 将文档导出回任何Word格式，并使用Microsoft Word向宏添加数字签名。 |

## 检测、计数和验证数字签名

Aspose.Words允许您使用[DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/)方法和[HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/)属性检测文档中的数字签名。 值得注意的是，这样的检查只会检测签名的事实，而不是其有效性。

一个文档可以多次签名，这可以由不同的用户完成。 要检查数字签名的有效性，您需要使用[LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/)方法从文档中加载它们并使用[IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/)属性。 此外，Aspose.Words还允许您使用[Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/)属性计算文档中的一组所有数字签名。

所有这些都提供了一种在处理文档之前检查文档签名的高效安全方法。

下面的代码示例演示如何检测数字签名的存在并验证它们:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## 创建数字签名{#create-a-digital-signature}

要创建数字签名，您需要加载确认身份的签名证书。 当您发送数字签名文档时，您还会发送证书和公钥。

Aspose.Words允许您创建X.509证书，这是一种数字证书，使用国际公认的X.509PKI标准来验证公钥是否属于证书中包含的签名者。 为此，请在[CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder)类中使用[Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/)方法。

接下来的部分将介绍如何添加数字签名、签名行以及如何对生成的PDF文档进行签名。

### 签署文件

Aspose.Words允许您使用[Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/)方法和[SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/)属性对DOC、DOCX或ODT文档进行数字签名。

下面的代码示例演示如何使用证书持有者和签名选项对文档进行签名:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### 添加签名行

签名行是文档中数字签名的可视化表示形式。 Aspose.Words允许您使用[DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/)方法插入签名行。 您还可以使用[SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/)类设置此表示形式的参数。

例如，下图显示了如何显示有效和无效的签名。

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

此外，如果文档包含签名行并且没有数字签名，则有一个功能要求用户添加签名。

下面的代码示例演示如何使用个人证书和特定签名行对文档进行签名:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### 签署生成的PDF文档{#sign-a-generated-pdf-document}

Aspose.Words允许您使用[PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/)属性签名并获取PDF文档的所有详细信息。

下面的代码示例演示如何对生成的PDF进行签名:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## 检索数字签名值

Aspose.Words还提供了使用[SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/)属性从数字签名文档中检索数字签名值作为字节数组的能力。

下面的代码示例演示如何从文档中获取作为字节数组的数字签名值:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## 删除数字签名

Aspose.Words允许您使用[RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/)方法从签名文档中删除所有数字签名。

下面的代码示例演示如何从文档中加载和删除数字签名:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

请注意，您不能只删除文档中的一个数字签名。

{{% /alert %}}