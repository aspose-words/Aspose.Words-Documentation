---
title: 加密 Python 中的文档
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 加密文档
linktitle: 加密文档
description: "使用适用于 Python 中特定文档格式的适当加密算法来加密您的文档。"
type: docs
weight: 20
url: /zh/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

加密是将可读文本转换为无意义的字节序列的过程，因此只有拥有解密密钥或密码的人才能读取它。此过程在保护您的内容方面发挥着重要作用。它有助于对内容进行编码，验证文档的来源，证明内容在发送后未被修改，并确保文档中的数据是安全的。

本文介绍了 Aspose.Words 如何允许您加密文档以及如何检查文档是否已加密。

## 使用密码加密

要加密文档，请使用 **密码** 属性提供充当加密密钥的密码。这将修改文档的内容并使其不可读。加密的文档需要输入此密码才能打开。

{{% alert color="primary" %}}

您可以找到所需格式的适当 **密码** 属性。 [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) 模块中的每个文档保存格式都有一个相应的类，其中包含该格式的保存选项。例如，DOC 的 [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) 类中的 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) 属性，或 DOCX、DOCM、DOTX、DOTM 和 FlatOpc 的 [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) 类中的 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) 属性。

{{% /alert %}}

{{% alert color="primary" %}}

请注意，只有某些文档格式支持加密。例如，RTF 不支持加密。

{{% /alert %}}

下表列出了Aspose.Words支持的格式和加密算法：

| 格式 |  加载时支持加密 |  保存时支持加密 |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  文档，DOT |  XOR 加密40 位 RC4 加密CryptoAPI RC4 加密 |  RC4 加密（40 位） |
|  DOCX、DOTX、DOCM、DOTM、FlatOPC、FlatOpcTemplate、FlatOpcMacro 启用、FlatOpcTemplateMacro 启用 |  ECMA-376 标准加密ECMA-376 敏捷加密 |  ECMA-376 标准加密 (AES128 + SHA1) |
|  ODT、OTT |  ODF 加密（Blowfish/AES） |  ODF 加密（AES256 + SHA256） |
|  PDF |                                                          |  RC4 加密（40/128 位） |

以下代码示例显示如何使用密码加密文档：

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## 检查文档是否已加密

在某些情况下，您可能有一个无法读取的文档，并且希望确保该文档已加密且未损坏或压缩。

要检测文档是否已加密以及是否需要密码，可以使用 [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) 类的 [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) 属性。此属性还允许您在加载文档之前执行某些操作，例如，通知用户提供密码。

以下代码示例展示了如何检测文档加密：

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## 使用或不使用密码打开文档

当我们确保文档已加密后，我们可以尝试在没有密码的情况下打开该文档，这应该会导致异常。

以下代码示例演示如何尝试在没有密码的情况下打开加密文档：

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

当我们看到加密文档没有密码就无法打开后，我们就可以尝试通过输入密码来打开它。

以下代码示例演示如何尝试使用密码打开加密文档：

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
