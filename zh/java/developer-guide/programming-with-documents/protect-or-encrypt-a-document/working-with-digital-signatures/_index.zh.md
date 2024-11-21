---
title: 与互联网上的数字签名工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 数字签名工作
linktitle: 数字签名工作
description: "数字签名文档,并使用 Java。 。 。 。"
type: docs
weight: 30
url: /zh/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

数字签字是指在技术上实施电子签字,以签署文件并认证签字人,以保证文件自签署以来没有修改过。 由于遵循公钥基础设施协议生成公钥和私钥,每个数字签名对每个签名人都是独一无二的. 数字签名文档是指在使用数学算法加密生成的散列时使用签名者的私人密钥创建签名.

Aspose.Words 允许您检测、计算或验证现有的数字签名,并在文档中添加一个新的签名,以发现其中的任何篡改。 也可以从文档中删除所有数字签名. 使用 [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) 与数字签名合作的课程。

这篇文章解释了如何做上述所有工作来验证数字文件的真实性和完整性.

{{% alert color="primary" %}}

请注意,只有在运行文档时才能访问文档的数字签名。 Java 6版本及以上.

{{% /alert %}}

{{% alert color="primary" %}}

**尝试在线**

你可以试试这个功能与我们 [免费在线签名](https://products.aspose.app/words/signature)。 。 。 。

{{% /alert %}}

## 支持的格式

Aspose.Words 允许您在 DOC 、 OOXML 和 OTT 文档上与数字签名合作,并在 PDF 或 XPS 格式。

## 数字签字的限制

下表说明在通过数字签名工作时可能面临的一些限制。 Aspose.Words, 以及一些其他选择。

|  限制 |  备选案文 |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  装入和保存后在文件上丢失数字签名。 因此,向服务器处理文件可能会造成所有数字签字的丢失,而无需通知。 |  检查文件是否具有数字签名,如果找到的话采取适当行动。 例如,向客户端发出警报,告知他们正在上传的文档中包含数字签名,如果处理后将会丢失 |
|  Aspose.Words 支持在文档中与宏合作。 不过 Aspose.Words 尚未支持宏上的数字签名。 |  导出文档回到任何 Word 格式,并使用 Microsoft Word 在宏中添加数字签名。 |

## 检测、计算和验证数字签名

Aspose.Words 允许您使用 [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) 方法和 [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) 属性。 值得注意的是,这种检查只能发现签字的事实,但不能发现其有效性。

一个文档可以多次签名,这可以由不同的用户完成. 要检查数字签名的有效性,您需要使用 [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) 方法和使用 [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) 属性。 还有 Aspose.Words 允许您使用 [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) 属性。

所有这些都为在处理文件之前检查文件的签名提供了高效和安全的方式。

以下代码示例显示如何检测和验证数字签字的存在:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## 创建数字签名 {#create-a-digital-signature}

要创建数字签名,您需要加载确认身份的签名证书. 当发送数字签名文档时,也会发送您的证书和公共密钥.

Aspose.Words 允许您创建 X.509 证书,这是使用国际认可的 X.509 PKI 标准验证一个公钥是否属于证书中包含的签名者的数字证书. 要做到这一点,使用 [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) 方法 [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) 课。

下一节解释如何添加数字签名,签名行,以及如何签名生成的PDF文档.

### 签名文档

Aspose.Words 允许您在 DOC 、 DOCX 或 OTT 文档上使用 [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) 方法和 [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) 属性。

以下代码示例显示如何使用证书持有人签名文档并签名选项:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### 添加签名行

签名行是指在文档中数字签名的视觉表现. Aspose.Words 允许您使用 [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) 方法。 您也可以使用 [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) 课。

例如,下面的图片显示了如何可以显示有效和无效的签名.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

另外,如果一个文档包含一个签名行而无数字签名,则有功能要求用户添加签名.

以下代码示例说明如何用个人证书和特定签名行签名文件: 个人证书 个人证书 个人证书 个人证书 个人证书 个人证书 个人证书 个人证书 个人证书

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### 签名生成的 PDF 文档 {#sign-a-generated-pdf-document}

Aspose.Words 允许您使用 [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) 属性。

以下代码示例显示如何签名生成的 PDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

以下图片显示生成的 PDF 文件在 Adobe Acrobat 并且数字签字经核实为存在和有效。

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## 获取数字签名值

Aspose.Words 还提供从数字签名的文档中检索数字签名值的能力,作为使用该数字签名的字节数组。 [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) 属性。

以下代码示例显示如何从文档中获取作为字节数组的数字签名值:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## 删除数字签名

Aspose.Words 允许您使用 [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) 方法。

以下代码示例显示如何从文档中加载并删除数字签名:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

请注意,您不能只删除文档中的一个数字签名 。

{{% /alert %}}
