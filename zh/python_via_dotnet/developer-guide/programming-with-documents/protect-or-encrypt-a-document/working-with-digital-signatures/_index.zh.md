---
title: 使用数字签名
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用数字签名
linktitle: 使用数字签名
description: "使用 Python 对文档进行数字签名并检测、计数、验证和删除现有的数字签名。"
type: docs
weight: 40
url: /zh/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

数字签名用于验证文档的身份，以确定文档的发送者正是他们所说的人，并且文档的内容未被篡改。

Aspose.Words 支持带有数字签名的文档并提供对它们的访问，使您能够检测和验证文档上的数字签名，并使用提供的证书对生成的 PDF 文档进行签名。目前，DOC、OOXML 和 ODT 文档支持数字签名。支持对 PDF 格式的生成文档进行签名。

{{% alert color="primary" %}}

**在线尝试**

您可以使用我们的 [免费在线签名](https://products.aspose.app/words/signature) 尝试此功能。

{{% /alert %}}

## 打开和保存时不保留数字签名

需要注意的重要一点是，使用 Aspose.Words 加载并保存的文档将丢失文档上签名的任何数字签名。这是设计使然，因为数字签名可确保内容未被修改，并进一步验证签署文档的身份。如果原始签名被保留到最终的文件中，这些原则将失效。

因此，如果您处理上传到服务器的文档，这可能意味着您可能会在不知情的情况下损坏以这种方式上传到服务器的文档。因此，最好检查文档上的数字签名，如果发现任何数字签名，请采取适当的措施，例如，可以向客户发送警报，通知他们正在传递的文档包含数字签名，如果数字签名被破坏，这些签名将会丢失。处理。您可以从 [这里](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx) 下载本示例的模板文件。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

上面的代码使用 [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) 方法来检测文档是否包含数字签名，而无需先加载文档。这提供了一种在处理文档之前检查文档签名的有效且安全的方法。执行时，该方法返回一个 [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) 对象，该对象提供 [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) 属性。如果文档包含一个或多个数字签名，则此属性返回 true。需要注意的是，此方法不会验证签名，它仅确定签名是否存在。下一节将介绍验证数字签名。

{{% alert color="primary" %}}

您还可以通过检查 [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) 集合的 `Count` 属性来检查文档在加载后是否具有数字签名。

{{% /alert %}}

## 宏上的数字签名（VBA 项目）

无法访问或签署宏上的数字签名。这是因为 Aspose.Words 不直接处理文档中的宏。但是，将文档导出回任何 Word 格式时，宏上的数字签名会被保留。这些签名可以保留在 VBA 代码上，因为即使文档本身被修改，宏的二进制内容也不会更改。

### 访问和验证数字签名

一个文档可以有多个数字签名。这些签名都可以通过 [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) 集合访问。返回的每个对象都是一个 [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/)，它代表属于该文档的单个数字签名。这提供了允许您检查签名有效性的成员。

检查数字签名最重要的属性是文档中每个签名的有效性。可以通过调用 [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) 属性立即验证文档中的所有签名。如果文档中的所有签名均有效或文档没有签名，则返回 true；如果至少一个数字签名无效，则返回 false。

每个签名还可以通过调用 [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/) 进行单独验证。签名可能因多种原因而返回无效，例如文档自签名后已更改或证书已过期。此外，还可以访问签名的额外详细信息。下面的代码示例展示了如何验证文档中的每个签名并显示有关签名的基本信息。您可以从[这里](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)下载本示例的模板文件。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## 签署 Word 文档

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) 类提供了签名文档的方法。 [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) 方法使用给定的带有数字签名的 [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) 对源文档进行签名，并将签名的文档写入目标流。

下面的例子展示了如何签署简单的文档。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

下面的示例显示了如何签署加密文档。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### 使用签名行签署 Word 文档

您可以使用带有数字签名的给定 [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) 和 [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) 来签署源文档，并将签名文档写入目标文件。使用 [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) 类，您可以指定文档签名选项。下面的示例展示了如何创建新的签名行并签署文档。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

下面的示例展示了如何修改现有签名行并签署文档。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### 使用签名提供者标识符对 Word 文档进行签名

下面的示例展示了如何使用签名提供程序标识符对 Word 文档进行签名。加密服务提供程序 (CSP) 是一个独立的软件模块，实际上执行用于身份验证、编码和加密的密码算法。 MS Office 为其默认签名提供程序保留值 {00000000-0000-0000-0000-000000000000}。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### 使用提供商标识符创建新的签名行 Sign Word 文档

下面的示例展示了如何使用签名提供程序标识符创建签名行并签署 Word 文档。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## 检索数字签名值

Aspose.Words 还提供了使用 [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) 属性从数字签名文档中以字节数组形式检索数字签名值的功能。

以下代码示例演示如何从文档中获取字节数组形式的数字签名值：

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
